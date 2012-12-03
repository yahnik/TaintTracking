	.file	"basic.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
	movl	$0, 20(%rsp)
	movl	$6, 16(%rsp)
	movl	$5, 12(%rsp)
	movl	16(%rsp), %eax
	leal	(%rax,%rax,4), %ecx
	movl	%ecx, 8(%rsp)
	leal	1(%rax,%rax,4), %esi
	movl	%esi, 8(%rsp)
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movl	8(%rsp), %eax
	addq	$24, %rsp
	ret
.Ltmp2:
	.size	main, .Ltmp2-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Z = %i\n"
	.size	.L.str, 8


	.section	".note.GNU-stack","",@progbits
