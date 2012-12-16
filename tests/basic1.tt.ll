; ModuleID = 'basic1.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Z = %i\0A\00", align 1
@return_taint = global i1 false
@.str1 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %binT = or i1 false, false
  %mul = mul nsw i32 6, 5
  %binT1 = or i1 %binT, false
  %inc = add nsw i32 %mul, 1
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 %inc)
  %callT = or i1 true, true
  %taint_check = icmp eq i1 %binT1, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  ret i32 %inc

abortBB:                                          ; preds = %abortBB, %entry
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0))
  %exit = call i32 @exit()
  br label %abortBB
}

declare i32 @printf(i8*, ...)

declare i32 @exit()
