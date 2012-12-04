; ModuleID = 'basic4.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [19 x i8] c"Calling rand()...\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Expected return => %d\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %callT = or i1 true, true
  %call = call i64 @time(i64* null) nounwind
  %unaryT = or i1 %callT, false
  %conv = trunc i64 %call to i32
  %callT1 = or i1 true, true
  call void @srand(i32 %conv) nounwind
  %callT2 = or i1 true, true
  %call1 = call i32 @rand() nounwind
  %binT = or i1 %callT2, false
  %rem = srem i32 %call1, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %loadT = or i1 false, false
  %0 = load %struct._IO_FILE** @stdout, align 8
  %callT3 = or i1 true, true
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0))
  %callT4 = or i1 true, true
  %call3 = call i32 @rand() nounwind
  %binT5 = or i1 %callT4, false
  %rem4 = srem i32 %call3, 20
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %taintPHI = phi i1 [ %binT5, %if.then ], [ false, %if.else ]
  %x.0 = phi i32 [ %rem4, %if.then ], [ 4, %if.else ]
  %loadT6 = or i1 false, false
  %1 = load %struct._IO_FILE** @stdout, align 8
  %binT7 = or i1 %taintPHI, false
  %mul = mul nsw i32 %x.0, 8
  %callT8 = or i1 true, true
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 %mul)
  %binT9 = or i1 %taintPHI, false
  %mul6 = mul nsw i32 %x.0, 8
  %taint_check = icmp eq i1 %binT9, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %if.end
  ret i32 %mul6

abortBB:                                          ; preds = %abortBB, %if.end
  %exit = call i32 @exit()
  br label %abortBB
}

declare void @srand(i32) nounwind

declare i64 @time(i64*) nounwind

declare i32 @rand() nounwind

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @exit()
