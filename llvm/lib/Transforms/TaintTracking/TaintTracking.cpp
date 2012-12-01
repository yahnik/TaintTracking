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

    // Map Value* objects to the memory address that their taint value
    // is stored at.
    std::map<Value*,Value*> RegToTaintVal;
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
                errs() << "Found a load: " << I << "\n";

                for(User::op_iterator opIt = I.op_begin(); opIt != I.op_end(); opIt++) {
                    errs() << "\tOperand: " << *opIt << "\n";
                }
            }

            void visitStoreInst(StoreInst &I) {
                errs() << "Found a store: " << I << "\n";

                for(User::op_iterator opIt = I.op_begin(); opIt != I.op_end(); opIt++) {
                    errs() << "\tOperand: " << *opIt << "\n";
                }  
            }

            void visitPHINode(PHINode &I) {
                errs() << "Found a PHI Node.\n";
            }

            void visitBinaryOperator(BinaryOperator &I) {
                errs() << "Found binary op: " << I << "\n";

                Value* opA = I.getOperand(0);
                Value* opB = I.getOperand(1);


                /*
                 * For each operand:
                 *      -check if that operand has an entry in the RegToTaintVal map
                 *      -if yes, add a load instruction to load the value of that 
                 *       operand's taint
                 *      -add a compare instruction that will compare the taint of the
                 *       two operands' taint values (or the constant '0' for any 
                 *       instruction that doesn't have an entry in the RegToTaintVal map.
                 */

                // Look up where the taint values for these two Value* objects
                // are stored.
                Value* opATaint;
                Value* opBTaint;
                ValToValIt = RegToTaintVal.find(opA); 
                if(ValToValIt != RegToTaintVal.end()) {
                    errs() << "a1\n";
                    opATaint = ValToValIt->second;
                }
                else {
                    // The operand for our current instruction isn't in the taint map.
                    // Therefore, it has never been seen before (and can't possible be
                    // tainted). It could also be something like a constant that also
                    // won't be tainted.
                     errs() << "a2\n";
                     opATaint = ConstantInt::get(TaintIntType,0,false); 
                } 

                ValToValIt = RegToTaintVal.find(opB); 
                if(ValToValIt != RegToTaintVal.end()) {
                    errs() << "b1\n";
                    opBTaint = ValToValIt->second;
                }
                else {
                    errs() << "b2\n";
                    opBTaint = ConstantInt::get(TaintIntType,0,false); 
                }

                assert(opATaint->getType() == opBTaint->getType() &&
                        "Ops to OR instruction do not match!");
                
                // Create OR instruction between two taint values.
                BinaryOperator* orInst = BinaryOperator::Create(Instruction::Or,
                                                                opATaint,
                                                                opBTaint,
                                                                "or",
                                                                &I);

               errs() << "Inserting => " << *orInst << "\n"; 

            }

            void visitInstruction(Instruction &I) {
                errs() << "Unknow instruction of type: " << I.getOpcodeName() << "\n";
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



