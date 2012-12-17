//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "TaintTracking"
#include "llvm/Pass.h"
#include "llvm/Function.h"
#include "llvm/User.h"
#include "llvm/Constants.h"
#include "llvm/InstrTypes.h"
#include "llvm/Instruction.h"
#include "llvm/Instructions.h"
#include "llvm/BasicBlock.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/InstVisitor.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Analysis/ConstantFolding.h"
#include <set>
#include <map>
#include <fstream>

using namespace llvm;



static cl::opt<bool>
ProtectedFunc("protected-functions", cl::ZeroOrMore, cl::init(false), cl::Hidden,
  cl::desc("Specify list of functions to protect."));

static cl::opt<bool>
SourceFunc("user-sources", cl::ZeroOrMore, cl::init(false), cl::Hidden,
  cl::desc("Specify list of functions to treat as taint sourcs."));



namespace {

    // Map Value* objects (registers) to the memory address that their 
    // taint value is stored at.
    std::map<Value*,Value*> RegToTaintVal;

    // Map Value* objects (memory addresses) to the memory address that
    // their taint value is stored at.
    std::map<Value*,Value*> AddrToTaintAddr;

    // Iterator that can be used with the above maps.
    std::map<Value*,Value*>::iterator ValToValIt;

    // A map of return instructions to their taint values.
    std::map<Function*,GlobalVariable*> FunctionToReturnTaintAddr;
    std::map<Function*,GlobalVariable*>::iterator FunctionToGlobalVarIt;

    // A map of functions to a list of their parameters' taint values.
    std::map<Function*,std::vector<GlobalVariable*>* > FunctionToParamTaintAddr;
    std::map<Function*,std::vector<GlobalVariable*>* >::iterator FunctionToGlobalVarVecIt;

    // A map of array indices to the array pointer.
    std::map<Value*,Value*> ArrIdxPtrs;

    // The 1-bit integer type we will use to store taint values.
    IntegerType* TaintIntType;

    // Pointer to the abort basic block.
    BasicBlock* abortBB;

    // Pointer to the pass we are running so we can split BB's.
    Pass* taintPass;

    // A list of the functions actually definde in the source code we are instrumenting.
    std::set<Function*> DefinedFunctions;

    // List of protected functions that will not be called if a parameter is tainted.
    std::set<std::string> ProtectedFunctions;

    // List of functions that will be treated as sources.
    std::set<std::string> SourceFunctions;



    struct TaintTracking : public ModulePass {

        static char ID; // Pass identification, replacement for typeid
        TaintTracking() : ModulePass(ID) {}


        /* InstVisitor sub-struct that implements how to handle taint 
         * tracking for different types of instructions.
         */
        struct TaintInstVisitor : public InstVisitor<TaintInstVisitor> {

            void visitLoadInst(LoadInst &I) {

                // Load the taint value for the load's address operand.
                Value* opTaintVal = getMemOpTaintVal(I.getPointerOperand(),I);

                BinaryOperator* orInst = BinaryOperator::Create(Instruction::Or,
                        opTaintVal,
                        ConstantInt::get(TaintIntType,0,false),
                        "loadT",
                        &I);

                //RegToTaintVal[&I] = orInst;
                storeRegTaint(&I, orInst);
            }


            void visitStoreInst(StoreInst &I) {

                // Allocate space on the stack to store the source reg's
                // taint value so we can later load it.
                Value* taintStoreAddr = 
                    getTaintAddrForMemAddr(I.getPointerOperand());

                if(taintStoreAddr == NULL) {
                    // Don't have a taint value in memory for this address.
                    // Need to allocate memory to store it now. 
                    taintStoreAddr = new AllocaInst(TaintIntType, 
                            "storeTa",
                            I.getParent()->getParent()->getEntryBlock().getFirstNonPHI());
                    AddrToTaintAddr[I.getPointerOperand()] = taintStoreAddr;
                }

                Value* regTaintVal = getRegOpTaintVal(I.getValueOperand());

                StoreInst *taintStore = new StoreInst(regTaintVal,
                        taintStoreAddr,
                        false,
                        &I);

            }


            void visitPHINode(PHINode &I) {

                int numPhiVals = I.getNumIncomingValues();
                PHINode* taintPHI = PHINode::Create(TaintIntType,
                        I.getNumIncomingValues(),
                        "taintPHI",
                        &I);

                for(int i = 0; i < numPhiVals; i++) {
                    Value* phiV = I.getIncomingValue(i);
                    BasicBlock* srcBB = I.getIncomingBlock(i);
                    Value* taintVal = getRegOpTaintVal(phiV);
                    taintPHI->addIncoming(taintVal,srcBB);
                }

                //RegToTaintVal[&I] = taintPHI; 
                storeRegTaint(&I, taintPHI);
            }


            void visitUnaryInstruction(UnaryInstruction &I) {

                Value* opA = I.getOperand(0);
                Value* opTaint = getRegOpTaintVal(opA);

                BinaryOperator* orInst = BinaryOperator::Create(Instruction::Or,
                        opTaint,
                        ConstantInt::get(TaintIntType,0,false),
                        "unaryT",
                        &I);

                //RegToTaintVal[&I] = orInst;
                storeRegTaint(&I, orInst);
            }


            void visitICmpInst(ICmpInst &I) {
                binaryOp(I);
            }


            void visitBinaryOperator(BinaryOperator &I) {
                binaryOp(I);
            }

            void binaryOp(Instruction &I) {

                Value* opA = I.getOperand(0);
                Value* opB = I.getOperand(1);

                // Look up where the taint values for these two Value* objects
                // are stored.
                Value* opATaint = getRegOpTaintVal(opA);
                Value* opBTaint = getRegOpTaintVal(opB);

                assert(opATaint->getType() == opBTaint->getType() &&
                        "Ops to OR instruction do not match!");

                // Create OR instruction between two taint values.
                BinaryOperator* orInst = BinaryOperator::Create(Instruction::Or,
                        opATaint,
                        opBTaint,
                        "binT",
                        &I);

                //RegToTaintVal[&I] = orInst;
                storeRegTaint(&I, orInst);
            }


            void visitGetElementPtrInst(GetElementPtrInst &I) {

                // Add entry for index to main array pointer.
                Value* arrPtr = I.getPointerOperand();
                ArrIdxPtrs[&I] = arrPtr;

                // Taint value of this pointer is equal to the taint value of 
                // the array being indexed.
                Value* arrTaint = getRegOpTaintVal(arrPtr);
                storeRegTaint(&I, arrTaint);
  
                Value* taintStoreAddr = getTaintAddrForMemAddr(&I);
                if(taintStoreAddr == NULL) {
                    taintStoreAddr = new AllocaInst(TaintIntType,
                                                    "storeTb",
                                                    &I);
                    AddrToTaintAddr[&I] = taintStoreAddr;
                }
                        
                StoreInst *taintStore = new StoreInst(arrTaint,
                                                      taintStoreAddr,
                                                      false,
                                                      &I);     
          }


            // For now, since we only have main(), if we return a tainted
            // value, print out an error message.
            void visitReturnInst(ReturnInst &I) {

                BasicBlock* orig = I.getParent();
                Function* f = orig->getParent();

                /* Uncomment this section to treat the return from main() as a sink.
                if(orig->getParent()->getName() == "main") {
                    // Returning from main is a sink, so handle that differently.
                    handleReturnFromMain(I);
                    return;
                }
                */ 

                // Store the return value's taint value at the correct GlobalVar 
                // address for this instruction's function.

                Value* retVal = I.getReturnValue();
                Value* retTaint = getRegOpTaintVal(retVal);

                FunctionToGlobalVarIt = FunctionToReturnTaintAddr.find(f);

                assert(FunctionToGlobalVarIt != FunctionToReturnTaintAddr.end() &&
                        "Function doesn't have AllocaInst for it's taint return!"); 

                GlobalVariable* taintAddr = FunctionToGlobalVarIt->second;

                StoreInst *taintStore = new StoreInst(retTaint,
                                                      taintAddr,
                                                      false,
                                                      &I);
            }


            void handleReturnFromMain(ReturnInst &I) {

                BasicBlock* orig = I.getParent();

                Value* retVal = I.getReturnValue();
                Value* retTaint = getRegOpTaintVal(retVal);

                ICmpInst *cmpInst = new ICmpInst(&I, 
                        ICmpInst::ICMP_EQ, 
                        retTaint, 
                        ConstantInt::get(TaintIntType,1,false),
                        "taint_check");

                // Split current basic block.
                //  Branch to abortBB is taint value = 1
                //  Branch to rest of original basic block if value = 0
                BasicBlock *continueBB = SplitBlock(orig,&I,taintPass);
                continueBB->setName("cont_BB");

                BranchInst *abortBr = BranchInst::Create(abortBB,
                                                         continueBB,
                                                         cmpInst,
                                                         orig->getTerminator());                
                orig->getTerminator()->eraseFromParent();

                assert(orig->getTerminator() != NULL && 
                        "OrigBB has no terminator!");

                assert(continueBB->getTerminator() != NULL && 
                        "ContinueBB has no terminator!");
            }



            void visitCallInst(CallInst &I) {

                // Add instructions to store the taint values of the function parameters.
                // (Only if it is a function internally defined).
                Function* calledFunc = I.getCalledFunction();
                if(calledFunc == NULL) return;
                
                if(ProtectedFunctions.find(calledFunc->getName()) != ProtectedFunctions.end()) {
                    insertFuncProtector(I);
                }  
                if(DefinedFunctions.find(calledFunc) != DefinedFunctions.end()) { 
                    insertParamTaintStore(I);
                    insertReturnTaintLoad(I);
                }
                else if(calledFunc->getName() == "__isoc99_fscanf") {
                    // fscanf is our source; need to taint the pointer address that is used to
                    // store the input read from the specified file stream.
                
                    int numParams = I.getNumArgOperands(); 
   
                    // arg 1 = filestream, arg 2 = format string, arg 3+ = data
                    for(int i = 2; i < numParams; i++) {
                        Value* dataPtr = I.getOperand(i);

                        // Taint register value
                        //RegToTaintVal[dataPtr] =  ConstantInt::get(TaintIntType,1,false);               
                        storeRegTaint(dataPtr, ConstantInt::get(TaintIntType,1,false));

                        // Store taint value into memory
                        Value* taintStoreAddr = getTaintAddrForMemAddr(dataPtr);
                        if(taintStoreAddr == NULL) {
                            taintStoreAddr = new AllocaInst(TaintIntType,
                                                            "storeTc",
                                                            &I);
                            AddrToTaintAddr[dataPtr] = taintStoreAddr;
                        }
                        
                        StoreInst *taintStore = new StoreInst(ConstantInt::get(TaintIntType,1,false),
                                                              taintStoreAddr,
                                                              false,
                                                              &I);     
                    } 
                }
                else if(SourceFunctions.find(calledFunc->getName()) != SourceFunctions.end()) {
                    insertReturnTaintLoad(I);
                }
            }


            void insertFuncProtector(CallInst &I) {

                Value* opATaint = getRegOpTaintVal(I.getOperand(0));
                Value* opBTaint = getRegOpTaintVal(I.getOperand(1));
                BinaryOperator* orInst = BinaryOperator::Create(Instruction::Or,
                                                                opATaint,
                                                                opBTaint,
                                                                "param_or",
                                                                &I);
                ICmpInst *cmpInst = new ICmpInst(&I, 
                                                 ICmpInst::ICMP_EQ, 
                                                 orInst, 
                                                 ConstantInt::get(TaintIntType,1,false),
                                                 "protect_check");

                // Split current basic block.
                //  Branch to abortBB is taint value = 1
                //  Branch to rest of original basic block if value = 0
                BasicBlock *orig = I.getParent();
                BasicBlock *continueBB = SplitBlock(orig,&I,taintPass);
                continueBB->setName("cont_BB");

                BranchInst *abortBr = BranchInst::Create(abortBB,
                                                         continueBB,
                                                         cmpInst,
                                                         orig->getTerminator());                
                orig->getTerminator()->eraseFromParent();

            }


            void insertReturnTaintLoad(CallInst &I) {

                Function* calledFunc = I.getCalledFunction();

                // We need to insert the load after the function call returns, so the 
                // function can store the return taint value before we load it.
                BasicBlock::iterator it = &I;
                it++; 

                Value* taintVal;

                if(DefinedFunctions.find(calledFunc) != DefinedFunctions.end()) {
                    FunctionToGlobalVarIt = FunctionToReturnTaintAddr.find(calledFunc);
                    assert(FunctionToGlobalVarIt != FunctionToReturnTaintAddr.end() &&
                            "Function doesn't have AllocaInst for it's taint return!"); 

                    GlobalVariable* taintAddr = FunctionToGlobalVarIt->second;
                    taintVal = new LoadInst(taintAddr,"retT_load",it);
                }
                else {
                    // Taint values coming back from external function calls.
                    // If function is a source, Taint = 1
                    //                    else, Taint = 0
                    if(SourceFunctions.find(calledFunc->getName()) != SourceFunctions.end())
                        taintVal = ConstantInt::get(TaintIntType,1,false);               
                    else
                        taintVal = ConstantInt::get(TaintIntType,0,false);               
                }

                //RegToTaintVal[&I] = taintVal;
                storeRegTaint(&I, taintVal);
            }



            void insertParamTaintStore(CallInst &I) {

                Function* calledFunc = I.getCalledFunction();
                FunctionToGlobalVarVecIt = FunctionToParamTaintAddr.find(calledFunc);

                assert(FunctionToGlobalVarVecIt != FunctionToParamTaintAddr.end() &&
                        "CallInst to function with no param taint memory allocated!");

                std::vector<GlobalVariable*> *paramTaintAddrs = FunctionToGlobalVarVecIt->second;
                assert(paramTaintAddrs->size() == I.getNumArgOperands() &&
                        "Inconsistent number of parameters for CallInst!");

                for(unsigned int i = 0; i < paramTaintAddrs->size(); i++) {

                    GlobalVariable* tAddr = paramTaintAddrs->at(i);
                    Value* arg = I.getArgOperand(i);

                    Value* taint = getRegOpTaintVal(arg);
                    StoreInst* paramTaintStore = new StoreInst(taint,
                            tAddr,
                            false,
                            &I); 
                }
            }


            void visitBranchInst(BranchInst &I) {

                if(I.isUnconditional()) 
                    return;

                // If branch condition is tainted, branch to abort BB.
                BinaryOperator* orInst;

                if(I.getNumSuccessors() == 2) { 
                    Value* opATaint = getRegOpTaintVal(I.getSuccessor(0));
                    Value* opBTaint = getRegOpTaintVal(I.getSuccessor(1));
                    orInst = BinaryOperator::Create(Instruction::Or,
                                                    opATaint,
                                                    opBTaint,
                                                    "branch_check",
                                                    &I);
               } 
                else {
                    Value* opATaint = getRegOpTaintVal(I.getSuccessor(0));
                    orInst = BinaryOperator::Create(Instruction::Or,
                                                    opATaint,
                                                    ConstantInt::get(TaintIntType,0,false),
                                                    "branch_check",
                                                    &I);
                }

                BasicBlock* orig = I.getParent();
                BasicBlock* continueBB = SplitBlock(orig,&I,taintPass);
                continueBB->setName("cont_BB");

                BranchInst* abortBr = BranchInst::Create(abortBB,
                                                         continueBB,
                                                         orInst,
                                                         orig->getTerminator());                
   
                orig->getTerminator()->eraseFromParent();

                assert(orig->getTerminator() != NULL && 
                        "OrigBB has no terminator!");

                assert(continueBB->getTerminator() != NULL && 
                        "ContinueBB has no terminator!");
 
            }

            
            void visitInstruction(Instruction &I) {
                //errs() << "=== Unknown instruction of type: " << I.getOpcodeName() << "\n";
            }


            // If we have seen this memory address before, its taint value
            // will be a load from the taint address for this instruction.
            // Otherwise, its taint is simple '0'.
            Value* getMemOpTaintVal(Value* addrOp, Instruction &I) {

                Value* taintValAddr = getTaintAddrForMemAddr(addrOp);
                if(taintValAddr == NULL) 
                    return ConstantInt::get(TaintIntType,0,false); 

                // Create a load instruction to load taint value from memory.
                LoadInst* loadInst = new LoadInst(taintValAddr,"taint_load",&I);
                return loadInst;
            }


            // Finds the memory address that holds the taint value for the
            // data stored at memAddr. Returns NULL if memAddr has no
            // associated taint value in memory.
            Value* getTaintAddrForMemAddr(Value* memAddr) {

                ValToValIt = AddrToTaintAddr.find(memAddr); 
                if(ValToValIt == AddrToTaintAddr.end()) {
                    return NULL; 
                }

                return ValToValIt->second;
            }


            // Returns the taint value for a register (if it has one), or the 
            // constant '0' otherwise.
            Value* getRegOpTaintVal(Value* regOp) {

                Value* regOpTaintVal;

                ValToValIt = RegToTaintVal.find(regOp); 
                if(ValToValIt != RegToTaintVal.end()) {
                    regOpTaintVal = ValToValIt->second;
                }
                else {
                    // The regOperand for our current instruction isn't in the taint map.
                    // Therefore, it has never been seen before (and can't possible be
                    // tainted). It could also be something like a constant that also
                    // won't be tainted.
                    regOpTaintVal = ConstantInt::get(TaintIntType,0,false); 
                }

                return regOpTaintVal;
            }

            void storeRegTaint(Value* reg, Value* taintVal) {

                RegToTaintVal[reg] = taintVal;
                ValToValIt = ArrIdxPtrs.find(reg);
                if(ValToValIt != ArrIdxPtrs.end()) {
                    // If reg is an index into an array, taint the array.

                    Value* arr = ValToValIt->second;
                    RegToTaintVal[arr] = taintVal;
                }
            }
        };


        // InstVisitor struct that decides what should be done (TaintTracking wise)
        // for each type of instruction.
        TaintInstVisitor TaintVis;


        virtual bool runOnModule(Module &M) {

            taintPass = this;

            TaintIntType = IntegerType::get(M.getContext(),1);

            // If this command line parameter was set, load list of protected functions from
            // protected_functions.tt.
            if(ProtectedFunc) {
                std::ifstream infile("protected_functions.tt");
                std::string fName;
                while(getline(infile,fName)) 
                    ProtectedFunctions.insert(fName);
            }
           
            if(SourceFunc) {
                std::ifstream infile("source_functions.tt");
                std::string fName;
                while(getline(infile,fName))
                    SourceFunctions.insert(fName);
            }


            findDefinedFunctions(M);
            allocFuncTaintReturn(M);
            allocFuncParamTaint(M);

            // For each instruction in each basic block of this function,
            // insert taint checking instruction.           
            for(Module::iterator m = M.begin(); m != M.end(); m++) {

                Function* F = m;
                //errs() << "Function = " << F->getName() << "\n";
                // We only want to insert the abortBB into functions that are actually
                // defined in the source code we are instrumenting. Since we are iterating
                // over all function calls in the source, only add abortBB to a function
                // once we have seen an instruction for that function.
                bool foundInst = false;


                std::vector<Instruction*> funcInstList;

                for(Function::iterator b = F->begin(); b != F->end(); b++) {
                    //errs() << "\tfound instruction!\n";
                    if(!foundInst) {
                        foundInst = true;

                        // TODO: only call this if F has a sink.
                        createAbortBB(M,*F);
                    }

                    // We don't need to worry about tracking anything in the
                    // abortBB.                    
                    if(b->getName() == "abortBB") continue; 
                    for(BasicBlock::iterator i = b->begin(); i != b->end(); i++) {
                        funcInstList.push_back(i);
                    }
                }    

                if(foundInst)
                    insertParamTaintLoads(F);

                std::vector<Instruction*>::iterator instIt = funcInstList.begin();
                for( ; instIt != funcInstList.end(); instIt++) {
                    Instruction* inst = *instIt;
                    //errs() << "visitng: " << *inst << "\n";
                    TaintVis.visit(*inst);
                }
            }

            return true;
        }


        void insertParamTaintLoads(Function* F) {

            Function::ArgumentListType::iterator argList = (F->getArgumentList()).begin();  
            FunctionToGlobalVarVecIt = FunctionToParamTaintAddr.find(F);
            assert(FunctionToGlobalVarVecIt != FunctionToParamTaintAddr.end() &&
                    "Inserting param taint loads for unalloc function!");

            std::vector<GlobalVariable*> *paramTaintAddrs = FunctionToGlobalVarVecIt->second;
            std::vector<GlobalVariable*>::iterator addrIt = paramTaintAddrs->begin();               

            for( ; argList != (F->getArgumentList()).end(); argList++) {

                Value* arg = argList;
                GlobalVariable* loadAddr = *addrIt++;

                LoadInst* paramTaintLoad = new LoadInst(loadAddr,
                        "param_taint_load",
                        &F->getEntryBlock().front());
                RegToTaintVal[arg] = paramTaintLoad;
            } 

        }


        void allocFuncParamTaint(Module &M) {

            for(std::set<Function*>::iterator it = DefinedFunctions.begin();
                    it != DefinedFunctions.end(); it++) {

                Function* f = *it;
                
                bool isMain = false;
                if(f->getName() == "main") isMain = true;
                Function::ArgumentListType* argList = &f->getArgumentList();

                // For each argument for Function f, we need to allocate a bit on the
                // stack to store the argument's taint value.
                std::vector<GlobalVariable*>* paramTaintAddrs = 
                                            new std::vector<GlobalVariable*>();
                for(unsigned int i = 0; i < argList->size(); i++) {

                    GlobalVariable* pTaint = new GlobalVariable(M,
                            TaintIntType,
                            false,
                            GlobalValue::ExternalLinkage,
                            0,
                            "param_taint");

                    ConstantInt* paramTaintVal = ConstantInt::get(M.getContext(),
                                                                  APInt(1,StringRef("0"),10));

                    // Taint program argument values.
                    if(isMain) paramTaintVal = ConstantInt::get(M.getContext(),
                                                                APInt(1,StringRef("1"),10));

                    pTaint->setInitializer(paramTaintVal);
                    paramTaintAddrs->push_back(pTaint);
                }

                FunctionToParamTaintAddr[f] = paramTaintAddrs;
            }

        }


        void allocFuncTaintReturn(Module &M) {

            for(std::set<Function*>::iterator it = DefinedFunctions.begin();
                    it != DefinedFunctions.end(); it++) {

                Function* f = *it;

                GlobalVariable* funcTaintStore = new GlobalVariable(M,
                                                                    TaintIntType,
                                                                    false,
                                                                    GlobalValue::ExternalLinkage,
                                                                    0,
                                                                    "return_taint");

                ConstantInt* untaintedVal = ConstantInt::get(M.getContext(),
                        APInt(1,StringRef("0"),10));

                funcTaintStore->setInitializer(untaintedVal);

                FunctionToReturnTaintAddr[f] = funcTaintStore;
            }
        }


        // Function to find all functions that are actually defined in the source
        // code we are instrumenting.
        void findDefinedFunctions(Module &M) {

            for(Module::iterator m = M.begin(); m != M.end(); m++) {
                Function* F = m;
                bool foundInst = true;
                if(F->begin() != F->end()) 
                    DefinedFunctions.insert(F);
            }
        }


        // Function to create a BasicBlock that is used to warn user when a 
        // tainted value is being used for output, then exits the program.
        void createAbortBB(Module &M, Function &F) {

            // This will be the block that is branched to if a taint value
            // is being used for some type of output.
            abortBB = BasicBlock::Create(F.getContext(),
                                         "abortBB",
                                         &F,
                                         NULL);


            /* TODO: seems like exit should take 1 parameter, but it wants none.
             * Figure out what's going on and make sure we are calling it correctly.
             Function::ArgumentListType* argList = &exitFunc->getArgumentList();
             errs() << "Num params for exit = " << argList->size() << "\n";           
             args.push_back(ConstantInt::get(IntegerType::get(M.getContext(),32),
             -1,
             true));
             */

            // Insert a dummy branch to be the terminator of abortBB.
            BranchInst *br = BranchInst::Create(abortBB,abortBB); 


            // Call printf
            std::vector<Type*> argTypes;
            argTypes.push_back(PointerType::get(IntegerType::get(M.getContext(),8),0));
            FunctionType* funcTy = FunctionType::get(
                                        IntegerType::get(M.getContext(), 32),
                                        argTypes,
                                        true);
            Function* funcPrintf = M.getFunction("printf");
            if (!funcPrintf) {
                funcPrintf = Function::Create(funcTy,
                                              GlobalValue::ExternalLinkage,
                                              "printf", 
                                              &M); 
                funcPrintf->setCallingConv(CallingConv::C);
            }
            AttrListPtr funcPrintf_PAL;
            funcPrintf->setAttributes(funcPrintf_PAL);

            Constant* warnMsg = ConstantDataArray::getString(M.getContext(), 
                                            "Warning: tainted data in use!\x0A", true);
            ArrayType* ArrayTy_0 = ArrayType::get(IntegerType::get(M.getContext(), 8), 31);
            GlobalVariable* gvarArrayStr = new GlobalVariable(M, 
                                                              ArrayTy_0,
                                                              true,
                                                              GlobalValue::PrivateLinkage,
                                                              0,
                                                              ".str");
            gvarArrayStr->setAlignment(1);
            gvarArrayStr->setInitializer(warnMsg);
            
            std::vector<Constant*> indices;
            indices.push_back(ConstantInt::get(M.getContext(), APInt(32, StringRef("0"), 10)));
            indices.push_back(ConstantInt::get(M.getContext(), APInt(32, StringRef("0"), 10)));

            Constant* warnMsgPtr = ConstantExpr::getGetElementPtr(gvarArrayStr,indices);
            CallInst* printfFunc = CallInst::Create(funcPrintf,
                                                    warnMsgPtr,
                                                    "warn_printf",
                                                    abortBB->getTerminator());
            printfFunc->setCallingConv(CallingConv::C);
            printfFunc->setTailCall(false);
            AttrListPtr printfPAL;
            printfFunc->setAttributes(printfPAL);

            // Call exit
            Function* func_exit = M.getFunction("exit");
            if (!func_exit) {
                std::vector<Type*>FuncTy_args;
                FuncTy_args.push_back(IntegerType::get(M.getContext(), 32));
                FunctionType* FuncTy_3 = FunctionType::get(
                                            Type::getVoidTy(M.getContext()),
                                            FuncTy_args,
                                            false);

                func_exit = Function::Create(FuncTy_3,
                                             GlobalValue::ExternalLinkage,
                                             "exit", 
                                             &M); 
                func_exit->setCallingConv(CallingConv::C);
            }

            AttrListPtr func_exit_PAL;
            {
                SmallVector<AttributeWithIndex, 4> Attrs;
                AttributeWithIndex PAWI;
                PAWI.Index = 4294967295U; PAWI.Attrs = Attribute::None  | Attribute::NoReturn | Attribute::NoUnwind;
                Attrs.push_back(PAWI);
                func_exit_PAL = AttrListPtr::get(Attrs.begin(), Attrs.end());
            }

            func_exit->setAttributes(func_exit_PAL);

            CallInst* callExit = CallInst::Create(func_exit, 
                                                  ConstantInt::get(M.getContext(), APInt(32, StringRef("1"), 10)),
                                                  "", 
                                                  abortBB->getTerminator());

            assert(abortBB->getTerminator() != NULL && 
                                "AbortBB has no terminator!"); 
        }


        /* TODO: is this necessary?
        // We don't modify the program, so we preserve all analyses
        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
        AU.setPreservesAll();
        }
        */
    };

}

char TaintTracking::ID = 0;
static RegisterPass<TaintTracking>
X("TaintTracking", "Taint Tracking Pass (with getAnalysisUsage implemented)");



