; ModuleID = 'demo2.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@return_taint = global i1 false
@return_taint1 = global i1 false
@return_taint2 = global i1 false
@param_taint = global i1 false
@param_taint3 = global i1 false
@param_taint4 = global i1 true
@param_taint5 = global i1 true
@.str6 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1
@.str7 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1
@.str8 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define void @numPrint(i8* %c) nounwind uwtable {
entry:
  %param_taint_load = load i1* @param_taint
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* %c)
  ret void

abortBB:                                          ; preds = %abortBB
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str6, i32 0, i32 0))
  call void @exit(i32 1)
  br label %abortBB
}

declare i32 @printf(i8*, ...)

define void @run(i8* %c) nounwind uwtable {
entry:
  %param_taint_load = load i1* @param_taint3
  %param_or = or i1 %param_taint_load, false
  %protect_check = icmp eq i1 %param_or, true
  br i1 %protect_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  store i1 %param_taint_load, i1* @param_taint
  call void @numPrint(i8* %c)
  %retT_load = load i1* @return_taint
  store i1 false, i1* @return_taint1
  ret void

abortBB:                                          ; preds = %abortBB, %entry
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str7, i32 0, i32 0))
  call void @exit(i32 1)
  br label %abortBB
}

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
entry:
  %param_taint_load1 = load i1* @param_taint5
  %param_taint_load = load i1* @param_taint4
  %binT = or i1 %param_taint_load, false
  %cmp = icmp sle i32 %argc, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %storeTb = alloca i1
  store i1 %param_taint_load1, i1* %storeTb
  %arrayidx = getelementptr inbounds i8** %argv, i64 1
  %taint_load = load i1* %storeTb
  %loadT = or i1 %taint_load, false
  %0 = load i8** %arrayidx, align 8
  store i1 %loadT, i1* @param_taint3
  call void @run(i8* %0)
  %retT_load = load i1* @return_taint1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %taintPHI = phi i1 [ false, %if.then ], [ false, %if.end ]
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ]
  store i1 %taintPHI, i1* @return_taint2
  ret i32 %retval.0

abortBB:                                          ; preds = %abortBB
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0))
  call void @exit(i32 1)
  br label %abortBB
}

declare void @exit(i32) noreturn nounwind
