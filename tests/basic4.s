	.file	"basic4.tt.bc"
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
	xorb	%bpl, %bpl
	testb	%bpl, %bpl
	jne	.LBB0_4
# BB#1:                                 # %cont_BB
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	movl	$4, %ebx
	testl	%eax, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	stdout(%rip), %rdi
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
	callq	rand
	movslq	%eax, %rbx
	imulq	$1717986919, %rbx, %rax # imm = 0x66666667
	movb	$1, %bpl
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$35, %rax
	addl	%ecx, %eax
	imull	$20, %eax, %eax
	subl	%eax, %ebx
	movq	stdout(%rip), %rdi
	shll	$3, %ebx
	movl	$.L.str1, %esi
	movl	%ebx, %edx
	xorb	%al, %al
	callq	fprintf
.LBB0_3:                                # %return
	movb	%bpl, return_taint(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.align	16, 0x90
.LBB0_4:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB0_4
.Ltmp8:
	.size	main, .Ltmp8-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Calling rand()...\n"
	.size	.L.str, 19

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "Expected return => %d\n"
	.size	.L.str1, 23

	.type	return_taint,@object    # @return_taint
	.bss
	.globl	return_taint
return_taint:
	.byte	0                       # 0x0
	.size	return_taint, 1

	.type	.L.str2,@object         # @.str2
	.section	.rodata,"a",@progbits
.L.str2:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str2, 31


	.section	".note.GNU-stack","",@progbits
