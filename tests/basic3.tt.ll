; ModuleID = 'basic3.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Y = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"W = %d\0A\00", align 1
@return_taint = global i1 false
@return_taint1 = global i1 false
@param_taint = global i1 false
@param_taint2 = global i1 false
@.str3 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1
@.str4 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define i32 @doStuff(i32 %a, i32 %b) nounwind uwtable {
entry:
  %param_taint_load1 = load i1* @param_taint2
  %param_taint_load = load i1* @param_taint
  %binT = or i1 %param_taint_load, false
  %add = add nsw i32 %a, 3
  %binT2 = or i1 %binT, %param_taint_load
  %mul = mul nsw i32 %add, %a
  %binT3 = or i1 %binT2, %param_taint_load1
  %add1 = add nsw i32 %mul, %b
  store i1 %binT3, i1* @return_taint
  ret i32 %add1

abortBB:                                          ; preds = %abortBB
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str3, i32 0, i32 0))
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
  %binT3 = or i1 %binT, false
  %rem2 = srem i32 %rem, 2
  %tobool = icmp ne i32 %rem2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 5)
  %callT4 = or i1 true, true
  br label %return

if.end:                                           ; preds = %entry
  store i1 %binT, i1* @param_taint
  store i1 false, i1* @param_taint2
  %call4 = call i32 @doStuff(i32 %rem, i32 5)
  %retT_load = load i1* @return_taint
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 %call4)
  %callT5 = or i1 true, true
  br label %return

return:                                           ; preds = %if.end, %if.then
  %taintPHI = phi i1 [ false, %if.then ], [ %retT_load, %if.end ]
  %retval.0 = phi i32 [ 5, %if.then ], [ %call4, %if.end ]
  %taint_check = icmp eq i1 %taintPHI, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %return
  ret i32 %retval.0

abortBB:                                          ; preds = %abortBB, %return
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str4, i32 0, i32 0))
  %exit = call i32 @exit()
  br label %abortBB
}

declare void @srand(i32) nounwind

declare i64 @time(i64*) nounwind

declare i32 @rand() nounwind

declare i32 @printf(i8*, ...)

declare i32 @exit()
