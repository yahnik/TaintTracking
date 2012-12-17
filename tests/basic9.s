	.file	"basic9.tt.bc"
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
	movl	$1, %edi
	callq	exit
.Ltmp2:
	.size	main, .Ltmp2-main
	.cfi_endproc

	.type	return_taint,@object    # @return_taint
	.bss
	.globl	return_taint
return_taint:
	.byte	0                       # 0x0
	.size	return_taint, 1

	.type	.L.str,@object          # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str, 31


	.section	".note.GNU-stack","",@progbits
