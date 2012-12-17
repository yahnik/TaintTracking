	.file	"basic7.tt.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 32
.Ltmp4:
	.cfi_offset %rbx, -16
	movq	stdin(%rip), %rdi
	movb	$1, 3(%rsp)
	movb	$1, 2(%rsp)
	movb	$1, 1(%rsp)
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rcx
	leaq	4(%rsp), %r8
	xorb	%bl, %bl
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	__isoc99_fscanf
	movb	$0, 2(%rsp)
	movl	$4, 8(%rsp)
	testb	%bl, %bl
	jne	.LBB0_5
# BB#1:                                 # %cont_BB
	movl	12(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	testl	%eax, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	movl	12(%rsp), %eax
	movb	3(%rsp), %cl
	movb	%cl, 2(%rsp)
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB0_5
.LBB0_3:                                # %if.else
	movl	8(%rsp), %eax
	movb	2(%rsp), %cl
	movb	%cl, 2(%rsp)
	incl	%eax
.LBB0_4:                                # %if.else
	movl	%eax, 8(%rsp)
	movl	8(%rsp), %eax
	movb	2(%rsp), %cl
	movb	%cl, return_taint(%rip)
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d%d%d"
	.size	.L.str, 7

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
