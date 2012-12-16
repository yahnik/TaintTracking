	.file	"basic3.tt.bc"
	.text
	.globl	doStuff
	.align	16, 0x90
	.type	doStuff,@function
doStuff:                                # @doStuff
	.cfi_startproc
# BB#0:                                 # %entry
	movb	param_taint(%rip), %al
	orb	%al, %al
	movb	param_taint2(%rip), %cl
	orb	%al, %cl
	andb	$1, %cl
	movb	%cl, return_taint(%rip)
	leal	3(%rdi), %eax
	imull	%edi, %eax
	addl	%esi, %eax
	ret
.Ltmp0:
	.size	doStuff, .Ltmp0-doStuff
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	xorl	%edi, %edi
	callq	time
	movl	%eax, %edi
	callq	srand
	callq	rand
	movslq	%eax, %rdi
	imulq	$1717986919, %rdi, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$35, %rax
	addl	%ecx, %eax
	imull	$20, %eax, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	andl	$-2, %eax
	movl	%edi, %ecx
	subl	%eax, %ecx
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$5, %ebx
	xorb	%bpl, %bpl
	movl	$.L.str, %edi
	movl	$5, %esi
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movb	$1, %al
	movb	%al, param_taint(%rip)
	movb	$0, param_taint2(%rip)
                                        # kill: EDI<def> EDI<kill> RDI<kill>
	movl	$5, %esi
	callq	doStuff
	movl	%eax, %ebx
	movb	return_taint(%rip), %bpl
	movl	$.L.str1, %edi
	movl	%ebx, %esi
.LBB1_3:                                # %if.end
	xorb	%al, %al
	callq	printf
	notb	%bpl
	testb	$1, %bpl
	je	.LBB1_5
# BB#4:                                 # %cont_BB
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.align	16, 0x90
.LBB1_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB1_5
.Ltmp9:
	.size	main, .Ltmp9-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Y = %d\n"
	.size	.L.str, 8

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "W = %d\n"
	.size	.L.str1, 8

	.type	return_taint,@object    # @return_taint
	.bss
	.globl	return_taint
return_taint:
	.byte	0                       # 0x0
	.size	return_taint, 1

	.type	return_taint1,@object   # @return_taint1
	.globl	return_taint1
return_taint1:
	.byte	0                       # 0x0
	.size	return_taint1, 1

	.type	param_taint,@object     # @param_taint
	.globl	param_taint
param_taint:
	.byte	0                       # 0x0
	.size	param_taint, 1

	.type	param_taint2,@object    # @param_taint2
	.globl	param_taint2
param_taint2:
	.byte	0                       # 0x0
	.size	param_taint2, 1

	.type	.L.str3,@object         # @.str3
	.section	.rodata,"a",@progbits
.L.str3:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str3, 31

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str4, 31


	.section	".note.GNU-stack","",@progbits
