	.file	"basic6.tt.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movb	$0, return_taint(%rip)
	xorl	%eax, %eax
	popq	%rdx
	ret
.Ltmp2:
	.size	main, .Ltmp2-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str, 31

	.type	return_taint,@object    # @return_taint
	.bss
	.globl	return_taint
return_taint:
	.byte	0                       # 0x0
	.size	return_taint, 1

	.type	.L.str1,@object         # @.str1
	.section	.rodata,"a",@progbits
.L.str1:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str1, 31


	.section	".note.GNU-stack","",@progbits
