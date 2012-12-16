; ModuleID = 'basic4.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [19 x i8] c"Calling rand()...\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Expected return => %d\0A\00", align 1
@return_taint = global i1 false
@.str2 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %call = call i64 @time(i64* null) nounwind
  %callT = or i1 true, true
  %unaryT = or i1 %callT, false
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) nounwind
  %callT1 = or i1 true, true
  %call1 = call i32 @rand() nounwind
  %callT2 = or i1 true, true
  %binT = or i1 %callT2, false
  %rem = srem i32 %call1, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %loadT = or i1 false, false
  %0 = load %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0))
  %callT3 = or i1 true, true
  %call3 = call i32 @rand() nounwind
  %callT4 = or i1 true, true
  %binT5 = or i1 %callT4, false
  %rem4 = srem i32 %call3, 20
  br label %if.end

if.else:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %if.then
  %loadT6 = or i1 false, false
  %1 = load %struct._IO_FILE** @stdout, align 8
  %binT7 = or i1 %binT5, false
  %mul = mul nsw i32 %rem4, 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 %mul)
  %callT8 = or i1 true, true
  %binT9 = or i1 %binT5, false
  %mul6 = mul nsw i32 %rem4, 8
  br label %return

return:                                           ; preds = %if.end, %if.else
  %taintPHI = phi i1 [ %binT9, %if.end ], [ false, %if.else ]
  %retval.0 = phi i32 [ %mul6, %if.end ], [ 4, %if.else ]
  %taint_check = icmp eq i1 %taintPHI, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %return
  ret i32 %retval.0

abortBB:                                          ; preds = %abortBB, %return
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0))
  %exit = call i32 @exit()
  br label %abortBB
}

declare void @srand(i32) nounwind

declare i64 @time(i64*) nounwind

declare i32 @rand() nounwind

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @printf(i8*, ...)

declare i32 @exit()
