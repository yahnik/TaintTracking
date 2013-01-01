TaintTracking
=============

Implementation of Taint Tracking as a Transform for the LLVM compiler.

Top level folders:
    
    => llvm: llvm source code
    => llvm-build: build folder, contents are not under version control
    => tests: sample programs


Setup
=====
Go into llvm-build and run:
    
    ../llvm/configure
    make [-j 4]

Add llvm executables to system path:

    export PATH=$PATH:`pwd`/llvm-build/Release+Asserts/bin
    export PATH=$PATH:`pwd`/llvm-build/Release+Asserts/lib

Go into Top Level folder 'tests' and run: 

    ./run_test.sh <test name>

The run_test.sh script contains the commands used to run a program through the TaintTracking pass.

