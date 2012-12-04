; ModuleID = 'basic4.reg.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [23 x i8] c"Expected return => %d\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %call = call i64 @random() nounwind
  %conv = trunc i64 %call to i32
  %rem = srem i32 %conv, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @random() nounwind
  %rem2 = srem i64 %call1, 20
  %conv3 = trunc i64 %rem2 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ %conv3, %if.then ], [ 4, %if.else ]
  %0 = load %struct._IO_FILE** @stdout, align 8
  %mul = mul nsw i32 %x.0, 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0), i32 %mul)
  %mul5 = mul nsw i32 %x.0, 8
  ret i32 %mul5
}

declare i64 @random() nounwind

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)
