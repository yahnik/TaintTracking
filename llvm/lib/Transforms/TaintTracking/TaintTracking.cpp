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
using namespace llvm;


namespace {
    
    struct TaintTracking : public FunctionPass {
        static char ID; // Pass identification, replacement for typeid
        TaintTracking() : FunctionPass(ID) {}

        virtual bool runOnFunction(Function &F) {
            errs() << "Function called ==>  ";
            errs().write_escaped(F.getName()) << '\n';
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
Y("tt", "Taint Tracking Pass (with getAnalysisUsage implemented)");