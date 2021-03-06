// Generated by llvm2cpp - DO NOT MODIFY!

#include <llvm/LLVMContext.h>
#include <llvm/Module.h>
#include <llvm/DerivedTypes.h>
#include <llvm/Constants.h>
#include <llvm/GlobalVariable.h>
#include <llvm/Function.h>
#include <llvm/CallingConv.h>
#include <llvm/BasicBlock.h>
#include <llvm/Instructions.h>
#include <llvm/InlineAsm.h>
#include <llvm/Support/FormattedStream.h>
#include <llvm/Support/MathExtras.h>
#include <llvm/Pass.h>
#include <llvm/PassManager.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/Analysis/Verifier.h>
#include <llvm/Assembly/PrintModulePass.h>
#include <algorithm>
using namespace llvm;

Module* makeLLVMModule();

int main(int argc, char**argv) {
  Module* Mod = makeLLVMModule();
  verifyModule(*Mod, PrintMessageAction);
  PassManager PM;
  PM.add(createPrintModulePass(&outs()));
  PM.run(*Mod);
  return 0;
}


Module* makeLLVMModule() {
 // Module Construction
 Module* mod = new Module("basic6.s", getGlobalContext());
 mod->setDataLayout("e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128");
 mod->setTargetTriple("x86_64-unknown-linux-gnu");
 
 // Type Definitions
 ArrayType* ArrayTy_0 = ArrayType::get(IntegerType::get(mod->getContext(), 8), 31);
 
 PointerType* PointerTy_1 = PointerType::get(ArrayTy_0, 0);
 
 std::vector<Type*>FuncTy_2_args;
 FunctionType* FuncTy_2 = FunctionType::get(
  /*Result=*/IntegerType::get(mod->getContext(), 32),
  /*Params=*/FuncTy_2_args,
  /*isVarArg=*/false);
 
 PointerType* PointerTy_3 = PointerType::get(IntegerType::get(mod->getContext(), 8), 0);
 
 std::vector<Type*>FuncTy_5_args;
 FuncTy_5_args.push_back(PointerTy_3);
 FunctionType* FuncTy_5 = FunctionType::get(
  /*Result=*/IntegerType::get(mod->getContext(), 32),
  /*Params=*/FuncTy_5_args,
  /*isVarArg=*/true);
 
 PointerType* PointerTy_4 = PointerType::get(FuncTy_5, 0);
 
 
 // Function Declarations
 
 Function* func_main = mod->getFunction("main");
 if (!func_main) {
 func_main = Function::Create(
  /*Type=*/FuncTy_2,
  /*Linkage=*/GlobalValue::ExternalLinkage,
  /*Name=*/"main", mod); 
 func_main->setCallingConv(CallingConv::C);
 }
 AttrListPtr func_main_PAL;
 {
  SmallVector<AttributeWithIndex, 4> Attrs;
  AttributeWithIndex PAWI;
  PAWI.Index = 4294967295U; PAWI.Attrs = Attribute::None  | Attribute::NoUnwind | Attribute::UWTable;
  Attrs.push_back(PAWI);
  func_main_PAL = AttrListPtr::get(Attrs.begin(), Attrs.end());
  
 }
 func_main->setAttributes(func_main_PAL);
 
 Function* func_printf = mod->getFunction("printf");
 if (!func_printf) {
 func_printf = Function::Create(
  /*Type=*/FuncTy_5,
  /*Linkage=*/GlobalValue::ExternalLinkage,
  /*Name=*/"printf", mod); // (external, no body)
 func_printf->setCallingConv(CallingConv::C);
 }
 AttrListPtr func_printf_PAL;
 func_printf->setAttributes(func_printf_PAL);
 
 // Global Variable Declarations

 
 GlobalVariable* gvar_array__str = new GlobalVariable(/*Module=*/*mod, 
 /*Type=*/ArrayTy_0,
 /*isConstant=*/true,
 /*Linkage=*/GlobalValue::PrivateLinkage,
 /*Initializer=*/0, // has initializer, specified below
 /*Name=*/".str");
 gvar_array__str->setAlignment(1);
 
 // Constant Definitions
 Constant *const_array_6 = ConstantDataArray::getString(mod->getContext(), "Warning: tainted data in use!\x0A", true);
 std::vector<Constant*> const_ptr_7_indices;
 ConstantInt* const_int32_8 = ConstantInt::get(mod->getContext(), APInt(32, StringRef("0"), 10));
 const_ptr_7_indices.push_back(const_int32_8);
 const_ptr_7_indices.push_back(const_int32_8);
 Constant* const_ptr_7 = ConstantExpr::getGetElementPtr(gvar_array__str, const_ptr_7_indices);
 
 // Global Variable Definitions
 gvar_array__str->setInitializer(const_array_6);
 
 // Function Definitions
 
 // Function: main (func_main)
 {
  
  BasicBlock* label_entry = BasicBlock::Create(mod->getContext(), "entry",func_main,0);
  
  // Block entry (label_entry)
  CallInst* int32_call = CallInst::Create(func_printf, const_ptr_7, "call", label_entry);
  int32_call->setCallingConv(CallingConv::C);
  int32_call->setTailCall(false);
  AttrListPtr int32_call_PAL;
  int32_call->setAttributes(int32_call_PAL);
  
  ReturnInst::Create(mod->getContext(), const_int32_8, label_entry);
  
 }
 
 return mod;
}
