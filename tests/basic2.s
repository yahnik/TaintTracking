	.file	"basic2.tt.bc"
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
	callq	random
	movq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx # imm = 0x6666666666666667
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$3, %rdx
	addl	%eax, %edx
	imull	$20, %edx, %eax
	subl	%eax, %ecx
	movb	$1, 14(%rsp)
	movl	%ecx, 16(%rsp)
	movq	stdout(%rip), %rdi
	movl	$.L.str, %esi
	movl	%ecx, %edx
	xorb	%al, %al
	callq	fprintf
	movl	16(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	stdout(%rip), %rdi
	movl	$.L.str1, %esi
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	stdout(%rip), %rdi
	movl	$.L.str2, %esi
.LBB0_3:                                # %if.else
	xorb	%al, %al
	callq	fprintf
	movb	14(%rsp), %al
	testb	%al, %al
	jne	.LBB0_5
# BB#4:                                 # %cont_BB
	movl	16(%rsp), %eax
	shll	$3, %eax
	addq	$24, %rsp
	ret
	.align	16, 0x90
.LBB0_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	callq	exit
	jmp	.LBB0_5
.Ltmp2:
	.size	main, .Ltmp2-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Random number is: %d\n"
	.size	.L.str, 22

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "Random number is odd.\n"
	.size	.L.str1, 23

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "Random number is even.\n"
	.size	.L.str2, 24


	.section	".note.GNU-stack","",@progbits
