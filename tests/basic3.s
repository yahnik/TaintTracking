	.file	"basic3.tt.bc"
	.text
	.globl	doStuff
	.align	16, 0x90
	.type	doStuff,@function
doStuff:                                # @doStuff
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
	movb	$0, 11(%rsp)
	movl	%edi, 20(%rsp)
	movb	$0, 10(%rsp)
	movl	%esi, 16(%rsp)
	movb	11(%rsp), %al
	orb	%al, %al
	andb	$1, %al
	movl	20(%rsp), %ecx
	movb	%al, 9(%rsp)
	leal	3(%rcx), %eax
	imull	%ecx, %eax
	movl	%eax, 12(%rsp)
	addl	16(%rsp), %eax
	movb	10(%rsp), %dl
	movb	9(%rsp), %cl
	orb	%dl, %cl
	andb	$1, %cl
	movb	%cl, 9(%rsp)
	movl	%eax, 12(%rsp)
	movb	9(%rsp), %cl
	testb	%cl, %cl
	jne	.LBB0_2
# BB#1:                                 # %cont_BB
	addq	$24, %rsp
	ret
	.align	16, 0x90
.LBB0_2:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	callq	exit
	jmp	.LBB0_2
.Ltmp2:
	.size	doStuff, .Ltmp2-doStuff
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movb	$0, -25(%rbp)
	movl	$0, -12(%rbp)
	movq	stdout(%rip), %rdi
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
	movq	stdin(%rip), %rdi
	leaq	-16(%rbp), %rdx
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	__isoc99_fscanf
	movb	$0, -26(%rbp)
	movl	$5, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB1_1
# BB#2:                                 # %if.end
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %edi
	callq	doStuff
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	$1, -16(%rbx)
	movl	%eax, -24(%rbp)
	movl	$.L.str2, %edi
	movl	%eax, %esi
	xorb	%al, %al
	callq	printf
	movb	-16(%rbx), %al
	movl	-24(%rbp), %ecx
	movb	%al, -25(%rbp)
	movl	%ecx, -12(%rbp)
	jmp	.LBB1_3
.LBB1_1:                                # %if.then
	movl	-20(%rbp), %eax
	movb	-26(%rbp), %cl
	movb	%cl, -25(%rbp)
	movl	%eax, -12(%rbp)
.LBB1_3:                                # %return
	movb	-25(%rbp), %al
	testb	%al, %al
	jne	.LBB1_5
# BB#4:                                 # %cont_BB
	movl	-12(%rbp), %eax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	ret
	.align	16, 0x90
.LBB1_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	callq	exit
	jmp	.LBB1_5
.Ltmp10:
	.size	main, .Ltmp10-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Enter a value: "
	.size	.L.str, 16

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "%d"
	.size	.L.str1, 3

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "W = %i\n"
	.size	.L.str2, 8


	.section	".note.GNU-stack","",@progbits
