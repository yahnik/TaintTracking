; ModuleID = 'basic3.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Y = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"W = %d\0A\00", align 1

define i32 @doStuff(i32 %a, i32 %b) nounwind uwtable {
entry:
  %binT = or i1 false, false
  %add = add nsw i32 %a, 3
  %binT1 = or i1 %binT, false
  %mul = mul nsw i32 %add, %a
  %binT2 = or i1 %binT1, false
  %add1 = add nsw i32 %mul, %b
  ret i32 %add1

abortBB:                                          ; preds = %abortBB
  %exit = call i32 @exit()
  br label %abortBB
}

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
  %rem = srem i32 %call1, 20
  %binT3 = or i1 %binT, false
  %rem2 = srem i32 %rem, 2
  %tobool = icmp ne i32 %rem2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %callT4 = or i1 true, true
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 5)
  br label %return

if.end:                                           ; preds = %entry
  %callT5 = or i1 true, true
  %call4 = call i32 @doStuff(i32 %rem, i32 5)
  %callT6 = or i1 true, true
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 %call4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %taintPHI = phi i1 [ false, %if.then ], [ %callT5, %if.end ]
  %retval.0 = phi i32 [ 5, %if.then ], [ %call4, %if.end ]
  %taint_check = icmp eq i1 %taintPHI, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %return
  ret i32 %retval.0

abortBB:                                          ; preds = %abortBB, %return
  %exit = call i32 @exit()
  br label %abortBB
}

declare void @srand(i32) nounwind

declare i64 @time(i64*) nounwind

declare i32 @rand() nounwind

declare i32 @printf(i8*, ...)

declare i32 @exit()
