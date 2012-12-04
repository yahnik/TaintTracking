	.file	"basic.tt.bc"
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
	movb	$0, 15(%rsp)
	movl	$0, 20(%rsp)
	movb	$0, 14(%rsp)
	movl	$6, 16(%rsp)
	movb	14(%rsp), %al
	testb	%al, %al
	jne	.LBB0_2
# BB#1:                                 # %cont_BB
	movl	$6, %eax
	addq	$24, %rsp
	ret
	.align	16, 0x90
.LBB0_2:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	callq	exit
	jmp	.LBB0_2
.Ltmp2:
	.size	main, .Ltmp2-main
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
