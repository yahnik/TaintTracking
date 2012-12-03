; ModuleID = 'basic.tt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %taint_store = alloca i1
  store i1 true, i1* %taint_store
  store i32 0, i32* %retval
  %taint_store1 = alloca i1
  store i1 false, i1* %taint_store1
  store i32 6, i32* %x, align 4
  %taint_load = load i1* %taint_store1
  %mem_or = or i1 %taint_load, false
  %0 = load i32* %x, align 4
  %taint_check = icmp eq i1 %mem_or, true
  br i1 %taint_check, label %abortBB, label %cont_BB

cont_BB:                                          ; preds = %entry
  ret i32 %0

abortBB:                                          ; preds = %abortBB, %entry
  %exit = call i32 @exit()
  br label %abortBB
}

declare i32 @exit()
