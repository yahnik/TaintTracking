; ModuleID = 'basic3.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
  call void @exit(i32 1)
  br label %abortBB
}

define i32 @main() nounwind uwtable {
entry:
  %unaryT = or i1 false, false
  %x = alloca i32, align 4
  %loadT = or i1 false, false
  %0 = load %struct._IO_FILE** @stdin, align 8
  %storeTc = alloca i1
  store i1 true, i1* %storeTc
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32* %x)
  %taint_load = load i1* %storeTc
  %loadT1 = or i1 %taint_load, false
  %1 = load i32* %x, align 4
  %binT = or i1 %loadT1, false
  %rem = srem i32 %1, 2
  %binT2 = or i1 %binT, false
  %tobool = icmp ne i32 %rem, 0
  %branch_check = or i1 false, false
  br i1 %branch_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cont_BB
  %taint_load3 = load i1* %storeTc
  %loadT4 = or i1 %taint_load3, false
  %2 = load i32* %x, align 4
  %param_or = or i1 %loadT4, false
  %protect_check = icmp eq i1 %param_or, true
  br i1 %protect_check, label %abortBB, label %cont_BB5

cont_BB5:                                         ; preds = %if.then
  store i1 %loadT4, i1* @param_taint
  store i1 false, i1* @param_taint2
  %call1 = call i32 @doStuff(i32 %2, i32 3)
  %retT_load = load i1* @return_taint
  br label %if.end

if.end:                                           ; preds = %cont_BB5, %cont_BB
  %taintPHI = phi i1 [ %retT_load, %cont_BB5 ], [ false, %cont_BB ]
  %w.0 = phi i32 [ %call1, %cont_BB5 ], [ 5, %cont_BB ]
  store i1 %taintPHI, i1* @return_taint1
  ret i32 %w.0

abortBB:                                          ; preds = %abortBB, %if.then, %entry
  %warn_printf = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str4, i32 0, i32 0))
  call void @exit(i32 1)
  br label %abortBB
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...)

declare i32 @printf(i8*, ...)

declare void @exit(i32) noreturn nounwind
