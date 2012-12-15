	.file	"basic5.tt.bc"
	.text
	.globl	doStuff
	.align	16, 0x90
	.type	doStuff,@function
doStuff:                                # @doStuff
	.cfi_startproc
# BB#0:                                 # %entry
	movb	param_taint(%rip), %al
	orb	%al, %al
	andb	$1, %al
	movb	%al, return_taint1(%rip)
	leal	3(%rdi), %eax
	imull	%edi, %eax
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
	movb	$0, param_taint(%rip)
	movl	$5, %edi
	callq	doStuff
	movl	%eax, %ebx
	movb	return_taint1(%rip), %bpl
	movl	$.L.str, %edi
	movl	%ebx, %esi
	xorb	%al, %al
	callq	printf
	testb	%bpl, %bpl
	jne	.LBB1_2
# BB#1:                                 # %cont_BB
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.align	16, 0x90
.LBB1_2:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB1_2
.Ltmp9:
	.size	main, .Ltmp9-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Expected program return value = %d\n"
	.size	.L.str, 36

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

	.type	.L.str2,@object         # @.str2
	.section	.rodata,"a",@progbits
.L.str2:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str2, 31

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str3, 31


	.section	".note.GNU-stack","",@progbits
