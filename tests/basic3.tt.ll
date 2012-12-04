; ModuleID = 'basic3.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [16 x i8] c"Enter a value: \00", align 1
@stdin = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"W = %i\0A\00", align 1

define i32 @doStuff(i32 %a, i32 %b) nounwind uwtable {
entry:
  %unaryT = or i1 false, false
  %a.addr = alloca i32, align 4
  %unaryT1 = or i1 false, false
  %b.addr = alloca i32, align 4
  %unaryT2 = or i1 false, false
  %c = alloca i32, align 4
  %storeT = alloca i1
  store i1 false, i1* %storeT
  store i32 %a, i32* %a.addr, align 4
  %storeT3 = alloca i1
  store i1 false, i1* %storeT3
  store i32 %b, i32* %b.addr, align 4
  %taint_load = load i1* %storeT
  %loadT = or i1 %taint_load, false
  %0 = load i32* %a.addr, align 4
  %binT = or i1 %loadT, false
  %add = add nsw i32 %0, 3
  %taint_load4 = load i1* %storeT
  %loadT5 = or i1 %taint_load4, false
  %1 = load i32* %a.addr, align 4
  %binT6 = or i1 %binT, %loadT5
  %mul = mul nsw i32 %add, %1
  %storeT7 = alloca i1
  store i1 %binT6, i1* %storeT7
  store i32 %mul, i32* %c, align 4
  %taint_load8 = load i1* %storeT3
  %loadT9 = or i1 %taint_load8, false
  %2 = load i32* %b.addr, align 4
  %taint_load10 = load i1* %storeT7
  %loadT11 = or i1 %taint_load10, false
  %3 = load i32* %c, align 4
  %binT12 = or i1 %loadT11, %loadT9
  %add1 = add nsw i32 %3, %2
  store i1 %binT12, i1* %storeT7
  store i32 %add1, i32* %c, align 4
  %taint_load13 = load i1* %storeT7
  %loadT14 = or i1 %taint_load13, false
  %4 = load i32* %c, align 4
  %taint_check = icmp eq i1 %loadT14, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  ret i32 %4

abortBB:                                          ; preds = %abortBB, %entry
  %exit = call i32 @exit()
  br label %abortBB
}

define i32 @main() nounwind uwtable {
entry:
  %unaryT = or i1 false, false
  %retval = alloca i32, align 4
  %unaryT1 = or i1 false, false
  %x = alloca i32, align 4
  %unaryT2 = or i1 false, false
  %y = alloca i32, align 4
  %unaryT3 = or i1 false, false
  %w = alloca i32, align 4
  %storeT = alloca i1
  store i1 false, i1* %storeT
  store i32 0, i32* %retval
  %loadT = or i1 false, false
  %0 = load %struct._IO_FILE** @stdout, align 8
  %callT = or i1 true, true
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0))
  %loadT4 = or i1 false, false
  %1 = load %struct._IO_FILE** @stdin, align 8
  %callT5 = or i1 true, true
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %x)
  %storeT6 = alloca i1
  store i1 false, i1* %storeT6
  store i32 5, i32* %y, align 4
  %loadT7 = or i1 false, false
  %2 = load i32* %x, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %taint_load = load i1* %storeT6
  %loadT8 = or i1 %taint_load, false
  %3 = load i32* %y, align 4
  store i1 %loadT8, i1* %storeT
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %loadT9 = or i1 false, false
  %4 = load i32* %x, align 4
  %taint_load10 = load i1* %storeT6
  %loadT11 = or i1 %taint_load10, false
  %5 = load i32* %y, align 4
  %callT12 = or i1 true, true
  %call2 = call i32 @doStuff(i32 %4, i32 %5)
  %storeT13 = alloca i1
  store i1 %callT12, i1* %storeT13
  store i32 %call2, i32* %w, align 4
  %taint_load14 = load i1* %storeT13
  %loadT15 = or i1 %taint_load14, false
  %6 = load i32* %w, align 4
  %callT16 = or i1 true, true
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 %6)
  %taint_load17 = load i1* %storeT13
  %loadT18 = or i1 %taint_load17, false
  %7 = load i32* %w, align 4
  store i1 %loadT18, i1* %storeT
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %taint_load19 = load i1* %storeT
  %loadT20 = or i1 %taint_load19, false
  %8 = load i32* %retval
  %taint_check = icmp eq i1 %loadT20, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %return
  ret i32 %8

abortBB:                                          ; preds = %abortBB, %return
  %exit = call i32 @exit()
  br label %abortBB
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...)

declare i32 @printf(i8*, ...)

declare i32 @exit()
