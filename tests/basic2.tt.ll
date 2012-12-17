; ModuleID = 'basic2.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [22 x i8] c"Random number is: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Random number is odd.\0A\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"Random number is even.\0A\00", align 1
@return_taint = global i1 false
@.str3 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %call = call i64 @time(i64* null) nounwind
  %unaryT = or i1 false, false
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) nounwind
  %call1 = call i64 @random() nounwind
  %binT = or i1 false, false
  %rem = srem i64 %call1, 20
  %unaryT1 = or i1 %binT, false
  %conv2 = trunc i64 %rem to i32
  %loadT = or i1 false, false
  %0 = load %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0), i32 %conv2)
  %binT2 = or i1 %unaryT1, false
  %rem4 = srem i32 %conv2, 2
  %binT3 = or i1 %binT2, false
  %tobool = icmp ne i32 %rem4, 0
  %branch_check = or i1 false, false
  br i1 %branch_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cont_BB
  %loadT4 = or i1 false, false
  %1 = load %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %cont_BB
  %loadT5 = or i1 false, false
  %2 = load %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %binT6 = or i1 %unaryT1, false
  %mul = mul nsw i32 %conv2, 8
  store i1 %binT6, i1* @return_taint
  ret i32 %mul

abortBB:                                          ; preds = %abortBB, %entry
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 1)
  br label %abortBB
}

declare void @srand(i32) nounwind

declare i64 @time(i64*) nounwind

declare i64 @random() nounwind

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @printf(i8*, ...)

declare void @exit(i32) noreturn nounwind
