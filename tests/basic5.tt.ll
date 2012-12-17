; ModuleID = 'basic5.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1
@return_taint = global i1 false
@.str1 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %call = call i64 @time(i64* null) nounwind
  %unaryT = or i1 false, false
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) nounwind
  %call1 = call i32 @rand() nounwind
  %binT = or i1 true, false
  %rem = srem i32 %call1, 10
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 %rem)
  %binT1 = or i1 %binT, false
  %rem3 = srem i32 %rem, 2
  %binT2 = or i1 %binT1, false
  %tobool = icmp ne i32 %rem3, 0
  %branch_check = or i1 false, false
  br i1 %branch_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cont_BB
  %unaryT3 = or i1 %binT, false
  %conv4 = sitofp i32 %rem to double
  %0 = call double @llvm.pow.f64(double %conv4, double 2.000000e+00)
  %unaryT4 = or i1 false, false
  %conv5 = fptosi double %0 to i32
  br label %if.end

if.else:                                          ; preds = %cont_BB
  %binT5 = or i1 %binT, false
  %inc = add nsw i32 %rem, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %taintPHI = phi i1 [ %unaryT4, %if.then ], [ %binT5, %if.else ]
  %x.0 = phi i32 [ %conv5, %if.then ], [ %inc, %if.else ]
  store i1 %taintPHI, i1* @return_taint
  ret i32 %x.0

abortBB:                                          ; preds = %abortBB, %entry
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0))
  call void @exit(i32 1)
  br label %abortBB
}

declare void @srand(i32) nounwind

declare i64 @time(i64*) nounwind

declare i32 @rand() nounwind

declare i32 @printf(i8*, ...)

declare double @llvm.pow.f64(double, double) nounwind readonly

declare void @exit(i32) noreturn nounwind
