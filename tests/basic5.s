	.file	"basic5.tt.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4611686018427387904     # double 2.000000e+00
                                        #  (0x4000000000000000)
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
	callq	rand
	movslq	%eax, %rbx
	xorb	%bpl, %bpl
	imulq	$1717986919, %rbx, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	imull	$10, %eax, %eax
	subl	%eax, %ebx
	movl	$.L.str, %edi
	movl	%ebx, %esi
	xorb	%al, %al
	callq	printf
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
	cvtsi2sd	%ebx, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1
	callq	pow
	cvttsd2si	%xmm0, %ebx
	xorb	%al, %al
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
	movb	$1, %al
	incl	%ebx
.LBB0_4:                                # %if.end
	movb	%al, return_taint(%rip)
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
	.asciz	 "x = %d\n"
	.size	.L.str, 8

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
