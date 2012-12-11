; ModuleID = 'basic5.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"W = %d\0A\00", align 1
@return_taint = global i1 false
@return_taint1 = global i1 false
@param_taint = global i1 false

define i32 @doStuff(i32 %a) nounwind uwtable {
entry:
  %param_taint_load = load i1* @param_taint
  %binT = or i1 %param_taint_load, false
  %add = add nsw i32 %a, 3
  %binT1 = or i1 %binT, %param_taint_load
  %mul = mul nsw i32 %add, %a
  store i1 %binT1, i1* @return_taint1
  ret i32 %mul

abortBB:                                          ; preds = %abortBB
  %exit = call i32 @exit()
  br label %abortBB
}

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
  %rem = srem i32 %call1, 20
  store i1 %binT, i1* @param_taint
  %call2 = call i32 @doStuff(i32 %rem)
  %retT_load = load i1* @return_taint1
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 %call2)
  %callT3 = or i1 true, true
  %taint_check = icmp eq i1 %retT_load, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  ret i32 %call2

abortBB:                                          ; preds = %abortBB, %entry
  %exit = call i32 @exit()
  br label %abortBB
}

declare void @srand(i32) nounwind

declare i64 @time(i64*) nounwind

declare i32 @rand() nounwind

declare i32 @printf(i8*, ...)

declare i32 @exit()
