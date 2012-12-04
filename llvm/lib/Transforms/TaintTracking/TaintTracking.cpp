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
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <map>


using namespace llvm;


namespace {

    // Map Value* objects (registers) to the memory address that their 
    // taint value is stored at.
    std::map<Value*,Value*> RegToTaintVal;

    // Map Value* objects (memory addresses) to the memory address that
    // their taint value is stored at.
    std::map<Value*,Value*> AddrToTaintAddr;

    // Iterator that can be used with the above maps.
    std::map<Value*,Value*>::iterator ValToValIt;

    // The 1-bit integer type we will use to store taint values.
    IntegerType* TaintIntType;

    // Pointer to the abort basic block.
    BasicBlock* abortBB;

    // Pointer to the pass we are running so we can split BB's.
    Pass* taintPass;


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

                RegToTaintVal[&I] = orInst;
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
                                                    "storeT",
                                                    &I);
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

               RegToTaintVal[&I] = taintPHI; 
           }


            void visitUnaryInstruction(UnaryInstruction &I) {

                Value* opA = I.getOperand(0);
                Value* opTaint = getRegOpTaintVal(opA);
 
                BinaryOperator* orInst = BinaryOperator::Create(Instruction::Or,
                                                opTaint,
                                                ConstantInt::get(TaintIntType,0,false),
                                                "unaryT",
                                                &I);

                // The BinaryOperator instruction is now the taint value for 
                // instruction I; add it to the map.
                RegToTaintVal[&I] = orInst;
           }


            void visitBinaryOperator(BinaryOperator &I) {

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

                // The BinaryOperator instruction is now the taint value for 
                // instruction I; add it to the map.
                RegToTaintVal[&I] = orInst;
            }


            // For now, since we only have main(), if we return a tainted
            // value, print out an error message.
            void visitReturnInst(ReturnInst &I) {

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


            // For now, let's taint everything that gets return from a function.
            // TODO: Don't taint if the function that is getting called is defined
            // in our source code.
            void visitCallInst(CallInst &I) {

                // We can use this later on to decide which functions' return vals should
                // be tainted.
                Function* calledFunc = I.getCalledFunction(); 

                // TODO: based on the calledFun, either taint or don't taint the 
                // returned value.

                BinaryOperator* orInst = BinaryOperator::Create(Instruction::Or,
                                            ConstantInt::get(TaintIntType,1,false),
                                            ConstantInt::get(TaintIntType,1,false),
                                            "callT",
                                            &I);

                RegToTaintVal[&I] = orInst;
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
                    
                    // TODO: this should be '0', '1' is just for initial
                    // testing.
                    regOpTaintVal = ConstantInt::get(TaintIntType,0,false); 
                }

                return regOpTaintVal;
            }
        };


        // InstVisitor struct that decides what should be done (TaintTracking wise)
        // for each type of instruction.
        TaintInstVisitor TaintVis;


        virtual bool runOnModule(Module &M) {

            taintPass = this;
            
            TaintIntType = IntegerType::get(M.getContext(),1);

            // For each instruction in each basic block of this function,
            // insert taint checking instruction.           
            for(Module::iterator m = M.begin(); m != M.end(); m++) {
                
                Function* F = m;
 
                // We only want to insert the abortBB into functions that are actually
                // defined in the source code we are instrumenting. Since we are iterating
                // over all function calls in the source, only add abortBB to a function
                // once we have seen an instruction for that function.
                bool foundInst = true;


                std::vector<Instruction*> funcInstList;

                for(Function::iterator b = F->begin(); b != F->end(); b++) {
                    
                    if(foundInst) {
                        foundInst = false;
                        createAbortBB(M,*F);
                    }

                    // We don't need to worry about tracking anything in the
                    // abortBB.                    
                    if(b->getName() == "abortBB") continue; 

                    for(BasicBlock::iterator i = b->begin(); i != b->end(); i++) {
                        funcInstList.push_back(i);
                    }
                }    
                
                for(std::vector<Instruction*>::iterator instIt = funcInstList.begin();
                        instIt != funcInstList.end(); instIt++) {
                    Instruction* inst = *instIt;
                    //errs() << "visitng: " << *inst << "\n";
                    TaintVis.visit(*inst);
                }
 
            }
            return true;
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

            // Create instruction to call exit.
            Constant* lookup = M.getOrInsertFunction("exit",
                                                     IntegerType::get(M.getContext(),32),
                                                     NULL);
            assert(lookup != NULL && "Could not find exit function!");
       
            Function* exitFunc = cast<Function>(lookup);
            Function::ArgumentListType* list = &(exitFunc->getArgumentList());
            std::vector<Value*> args;
 
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

            CallInst *callExit = CallInst::Create(exitFunc,
                                                  args,
                                                  "exit",
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



