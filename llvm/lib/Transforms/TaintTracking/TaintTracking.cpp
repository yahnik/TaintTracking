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
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/InstVisitor.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
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


    struct TaintTracking : public FunctionPass {

        static char ID; // Pass identification, replacement for typeid
        TaintTracking() : FunctionPass(ID) {}


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
                                            "mem_or",
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
                                                    "taint_store",
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
                errs() << "Found a PHI Node.\n";
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
                        "bin_or",
                        &I);

                // The BinaryOperator instruction is now the taint value for 
                // instruction I; add it to the map.
                RegToTaintVal[&I] = orInst;
            }

            
            void visitInstruction(Instruction &I) {
                errs() << "Unknow instruction of type: " << I.getOpcodeName() << "\n";
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
                    errs() << "Found existing taint value.\n";
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
        };


        // InstVisitor struct that decides what should be done (TaintTracking wise)
        // for each type of instruction.
        TaintInstVisitor TaintVis;


        virtual bool runOnFunction(Function &F) {

            TaintIntType = IntegerType::get(F.getContext(),1);

            // For each instruction in each basic block of this function,
            // insert taint checking instruction.           
            for(Function::iterator b = F.begin(); b != F.end(); b++) {
                for(BasicBlock::iterator i = b->begin(); i != b->end(); i++) {
                    //errs() << i->getOpcodeName() << "\n";    
                    TaintVis.visit(*i);
                }
            }

            return false;
        }


        // We don't modify the program, so we preserve all analyses
        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
            AU.setPreservesAll();
        }
    };

}

char TaintTracking::ID = 0;
static RegisterPass<TaintTracking>
X("TaintTracking", "Taint Tracking Pass (with getAnalysisUsage implemented)");



