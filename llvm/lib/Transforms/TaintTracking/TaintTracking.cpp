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
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/InstVisitor.h"

using namespace llvm;


namespace {
 

    /* InstVisitor sub-struct that implements how to handle taint 
     * tracking for different types of instructions.
     */
    struct TaintInstVisitor : public InstVisitor<TaintInstVisitor> {
        
        void visitLoadInst(LoadInst &I) {
            errs() << "Found a load.\n";
        }

        void visitStoreInst(StoreInst &I) {
            errs() << "Found a store.\n";
        }

        void visitPHINode(PHINode &I) {
            errs() << "Found a PHI Node.\n";
        }

        void visitBinaryOperator(BinaryOperator &I) {
            errs() << "Found binary op.\n";
            
            Value *opA = I.getOperand(0);
            Value *opB = I.getOperand(1);
            
            Type *aType = opA->getType();
            Type *bType = opB->getType();

            aType->print(errs());
            errs() << "\n";
            bType->print(errs());
            errs() << "\n";

            //if(opA->hasName()) errs() << "\topA: " << opA->getName() << ".\n";
            //if(opB->hasName()) errs() << "\topB: " << opB->getName() << ".\n";
        };

        void visitInstruction(Instruction &I) {
            errs() << "Unknow instruction of type: " << I.getOpcodeName() << "\n";
        };
    };

   
    struct TaintTracking : public FunctionPass {

        static char ID; // Pass identification, replacement for typeid
        TaintTracking() : FunctionPass(ID) {}

        TaintInstVisitor TaintVis;

        virtual bool runOnFunction(Function &F) {
 
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



