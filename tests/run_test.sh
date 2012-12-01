#!/bin/bash

# make sure most up-to-date TaintTracking.so file is in build directory.
cp $PROJ_SRC_ROOT/Release+Asserts/lib/TaintTracking.so $PROJ_OBJ_ROOT/Release+Asserts/lib


testname=$1
echo "Test name = $testname" 
echo ""

clang -emit-llvm -o $testname.bc -c $testname.c || 
    { echo "Failed to emit llvm bytecode."; exit 1; }

echo "======================================================="
echo "Running pass..."
echo ""
opt -load $PROJ_OBJ_ROOT/Release+Asserts/lib/TaintTracking.so -TaintTracking < $testname.bc > $testname.tt.bc ||
    { echo "Failed to run Taint Tracking pass."; exit 1; }
echo ""

llc $testname.bc -o $testname.s

g++ -o $testname.tt.exe $testname.s || { echo "Failed to build executable."; exit 1; }

echo "======================================================="
echo "Executing program..."
echo ""
./$testname.tt.exe
echo "======================================================="
echo ""

#===============================================================
# Old code (what stuff below do we actually need?)
#===============================================================


#rm llvmprof.out    # Otherwise your profile runs are added together
#
#clang -emit-llvm -o $testname.bc -c $testname.c || { echo "Failed to emit llvm bc"; exit 1; }
#opt -loop-simplify < $testname.bc > $testname.ls.bc || { echo "Failed to opt loop simplify"; exit 1; }
#opt -insert-edge-profiling $testname.ls.bc -o $testname.profile.ls.bc
#llc $testname.profile.ls.bc -o $testname.profile.ls.s
#g++ -o $testname.profile $testname.profile.ls.s $(PROJ_OBJ_ROOT)/Release+Asserts/lib/libprofile_rt.so
#./$testname.profile $2
#
#
#opt -load $(PROJ_OBJ_ROOT)/Release+Asserts/lib/HW1pass.so -lamp-insts -insert-lamp-profiling -insert-lamp-loopprofiling -insert-lamp-init < $testname.ls.bc > $testname.lamp.bc || { echo "Failed to opt load"; exit 1; }
#llc < $testname.lamp.bc > $testname.lamp.s || { echo "Failed to llc"; exit 1; }
#g++ -o $testname.lamp.exe $testname.lamp.s  llvm-path/tools/lamp-profiler/lamp_hooks.o || { echo "Failed to 
#g++"; exit 1; }
#./$testname.lamp.exe $2
#echo "Done generating lamp profile"
#
#opt -load $(PROJ_OBJ_ROOT)/Release+Asserts/lib/TaintTracking.so -lamp-inst-cnt -lamp-map-loop -lamp-load-profile -
#profile-loader -profile-info-file=llvmprof.out –TaintTracking < $testname.ls.bc > /dev/null || { echo "Failed to optload"; exit 1; }


