	.file	"basic8.tt.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_5
# BB#1:                                 # %cont_BB
	cmpl	$2, %edi
	jl	.LBB0_3
# BB#2:                                 # %if.then
	movb	param_taint1(%rip), %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	andb	$1, %al
	movb	%al, -16(%rcx)
	movb	-16(%rcx), %al
.LBB0_3:                                # %if.end
	testb	$1, %al
	je	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB0_5
.LBB0_4:                                # %cont_BB4
	movl	$5, %eax
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "hello"
	.size	.L.str, 6

	.type	return_taint,@object    # @return_taint
	.bss
	.globl	return_taint
return_taint:
	.byte	0                       # 0x0
	.size	return_taint, 1

	.type	param_taint,@object     # @param_taint
	.data
	.globl	param_taint
param_taint:
	.byte	1                       # 0x1
	.size	param_taint, 1

	.type	param_taint1,@object    # @param_taint1
	.globl	param_taint1
param_taint1:
	.byte	1                       # 0x1
	.size	param_taint1, 1

	.type	.L.str2,@object         # @.str2
	.section	.rodata,"a",@progbits
.L.str2:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str2, 31


	.section	".note.GNU-stack","",@progbits
