; ModuleID = 'basic2.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [22 x i8] c"Random number is: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Random number is odd.\0A\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"Random number is even.\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %unaryT = or i1 false, false
  %retval = alloca i32, align 4
  %unaryT1 = or i1 false, false
  %x = alloca i32, align 4
  %storeT = alloca i1
  store i1 false, i1* %storeT
  store i32 0, i32* %retval
  %callT = or i1 true, true
  %call = call i64 @random() nounwind
  %binT = or i1 %callT, false
  %rem = srem i64 %call, 20
  %unaryT2 = or i1 %binT, false
  %conv = trunc i64 %rem to i32
  %storeT3 = alloca i1
  store i1 %unaryT2, i1* %storeT3
  store i32 %conv, i32* %x, align 4
  %loadT = or i1 false, false
  %0 = load %struct._IO_FILE** @stdout, align 8
  %taint_load = load i1* %storeT3
  %loadT4 = or i1 %taint_load, false
  %1 = load i32* %x, align 4
  %callT5 = or i1 true, true
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0), i32 %1)
  %taint_load6 = load i1* %storeT3
  %loadT7 = or i1 %taint_load6, false
  %2 = load i32* %x, align 4
  %binT8 = or i1 %loadT7, false
  %rem2 = srem i32 %2, 2
  %tobool = icmp ne i32 %rem2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %loadT9 = or i1 false, false
  %3 = load %struct._IO_FILE** @stdout, align 8
  %callT10 = or i1 true, true
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %loadT11 = or i1 false, false
  %4 = load %struct._IO_FILE** @stdout, align 8
  %callT12 = or i1 true, true
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %taint_load13 = load i1* %storeT3
  %loadT14 = or i1 %taint_load13, false
  %5 = load i32* %x, align 4
  %binT15 = or i1 %loadT14, false
  %mul = mul nsw i32 %5, 8
  %taint_check = icmp eq i1 %binT15, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %if.end
  ret i32 %mul

abortBB:                                          ; preds = %abortBB, %if.end
  %exit = call i32 @exit()
  br label %abortBB
}

declare i64 @random() nounwind

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @exit()
