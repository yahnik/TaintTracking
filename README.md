TaintTracking
=============

Implementation of Taint Tracking in LLVM compiler.

Top level folderes:
    llvm: llvm source
    llvm-build: build folder, contents are not under version control
    tests: sample programs


Setup
=====
Go into llvm-build and run:
    ../llvm/configure
    make [-j 4]

Add llvm-build/Release+Asserts/bin and llvm-build/Release+Asserts/lib to path:
    export PATH=$PATH:`pwd`/llvm-build/Release+Asserts/bin
    export PATH=$PATH:`pwd`/llvm-build/Release+Asserts/lib

Go into Top Level folder 'tests' and run: 
    clang basic.c -o basic

