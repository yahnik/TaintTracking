; ModuleID = 'basic7.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@return_taint = global i1 false
@.str1 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %unaryT = or i1 false, false
  %x = alloca i32, align 4
  %unaryT1 = or i1 false, false
  %y = alloca i32, align 4
  %unaryT2 = or i1 false, false
  %z = alloca i32, align 4
  %loadT = or i1 false, false
  %0 = load %struct._IO_FILE** @stdin, align 8
  %storeT = alloca i1
  store i1 true, i1* %storeT
  %storeT3 = alloca i1
  store i1 true, i1* %storeT3
  %storeT4 = alloca i1
  store i1 true, i1* %storeT4
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32* %x, i32* %y, i32* %z)
  store i1 false, i1* %storeT3
  store i32 4, i32* %y, align 4
  %taint_load = load i1* %storeT
  %loadT5 = or i1 %taint_load, false
  %1 = load i32* %x, align 4
  %binT = or i1 %loadT5, false
  %rem = srem i32 %1, 2
  %binT6 = or i1 %binT, false
  %tobool = icmp ne i32 %rem, 0
  %branch_check = or i1 false, false
  br i1 %branch_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cont_BB
  %taint_load7 = load i1* %storeT
  %loadT8 = or i1 %taint_load7, false
  %2 = load i32* %x, align 4
  store i1 %loadT8, i1* %storeT3
  store i32 %2, i32* %y, align 4
  br label %if.end

if.else:                                          ; preds = %cont_BB
  %taint_load9 = load i1* %storeT3
  %loadT10 = or i1 %taint_load9, false
  %3 = load i32* %y, align 4
  %binT11 = or i1 %loadT10, false
  %inc = add nsw i32 %3, 1
  store i1 %binT11, i1* %storeT3
  store i32 %inc, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %taint_load12 = load i1* %storeT3
  %loadT13 = or i1 %taint_load12, false
  %4 = load i32* %y, align 4
  store i1 %loadT13, i1* @return_taint
  ret i32 %4

abortBB:                                          ; preds = %abortBB, %entry
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0))
  call void @exit(i32 1)
  br label %abortBB
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...)

declare i32 @printf(i8*, ...)

declare void @exit(i32) noreturn nounwind
