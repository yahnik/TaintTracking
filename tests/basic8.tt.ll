; ModuleID = 'basic8.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@return_taint = global i1 false
@param_taint = global i1 true
@param_taint1 = global i1 true
@.str2 = private constant [31 x i8] c"Warning: tainted data in use!\0A\00", align 1

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
entry:
  %param_taint_load1 = load i1* @param_taint1
  %param_taint_load = load i1* @param_taint
  %binT = or i1 %param_taint_load, false
  %cmp = icmp sgt i32 %argc, 1
  %branch_check = or i1 false, false
  br i1 %branch_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cont_BB
  %storeT = alloca i1
  store i1 %param_taint_load1, i1* %storeT
  %arrayidx = getelementptr inbounds i8** %argv, i64 1
  %taint_load = load i1* %storeT
  %loadT = or i1 %taint_load, false
  %0 = load i8** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cont_BB
  %taintPHI = phi i1 [ %loadT, %if.then ], [ false, %cont_BB ]
  %c.0 = phi i8* [ %0, %if.then ], [ getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), %cont_BB ]
  %unaryT = or i1 %taintPHI, false
  %1 = ptrtoint i8* %c.0 to i32
  %binT2 = or i1 %unaryT, false
  %mul = mul nsw i32 %1, 0
  %binT3 = or i1 %binT2, false
  %add = add nsw i32 %mul, 5
  %taint_check = icmp eq i1 %binT3, true
  br i1 %taint_check, label %abortBB, label %cont_BB4

cont_BB4:                                         ; preds = %if.end
  ret i32 %add

abortBB:                                          ; preds = %abortBB, %if.end, %entry
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0))
  %exit = call i32 @exit()
  br label %abortBB
}

declare i32 @printf(i8*, ...)

declare i32 @exit()
