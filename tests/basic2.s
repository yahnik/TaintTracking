	.file	"basic2.tt.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 32
.Ltmp6:
	.cfi_offset %rbx, -24
.Ltmp7:
	.cfi_offset %rbp, -16
	xorl	%edi, %edi
	callq	time
	movl	%eax, %edi
	callq	srand
	callq	random
	movq	%rax, %rbx
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	imulq	%rcx
	xorb	%bpl, %bpl
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$3, %rdx
	addl	%eax, %edx
	imull	$20, %edx, %eax
	subl	%eax, %ebx
	movq	stdout(%rip), %rdi
	movl	$.L.str, %esi
	movl	%ebx, %edx
	xorb	%al, %al
	callq	fprintf
	testb	%bpl, %bpl
	jne	.LBB0_5
# BB#1:                                 # %cont_BB
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	andl	$-2, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	testl	%ecx, %ecx
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	stdout(%rip), %rdi
	movl	$.L.str1, %esi
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB0_5
.LBB0_3:                                # %if.else
	movq	stdout(%rip), %rdi
	movl	$.L.str2, %esi
.LBB0_4:                                # %if.else
	xorb	%al, %al
	callq	fprintf
	andb	$1, %bpl
	movb	%bpl, return_taint(%rip)
	shll	$3, %ebx
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp8:
	.size	main, .Ltmp8-main
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

	.type	return_taint,@object    # @return_taint
	.bss
	.globl	return_taint
return_taint:
	.byte	0                       # 0x0
	.size	return_taint, 1

	.type	.L.str3,@object         # @.str3
	.section	.rodata,"a",@progbits
.L.str3:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str3, 31


	.section	".note.GNU-stack","",@progbits
