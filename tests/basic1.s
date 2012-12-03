	.file	"basic1.tt.bc"
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
	movb	$0, 7(%rsp)
	movl	$0, 20(%rsp)
	movb	$0, 6(%rsp)
	movl	$6, 16(%rsp)
	movb	$0, 5(%rsp)
	movl	$5, 12(%rsp)
	movb	5(%rsp), %cl
	movb	6(%rsp), %al
	orb	%cl, %al
	andb	$1, %al
	movl	16(%rsp), %ecx
	movb	%al, 4(%rsp)
	leal	(%rcx,%rcx,4), %eax
	movl	%eax, 8(%rsp)
	leal	1(%rcx,%rcx,4), %esi
	movl	%esi, 8(%rsp)
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movb	4(%rsp), %al
	testb	%al, %al
	jne	.LBB0_2
# BB#1:                                 # %cont_BB
	movl	8(%rsp), %eax
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

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Z = %i\n"
	.size	.L.str, 8


	.section	".note.GNU-stack","",@progbits
