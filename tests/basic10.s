	.file	"basic10.tt.bc"
	.text
	.globl	doStuff
	.align	16, 0x90
	.type	doStuff,@function
doStuff:                                # @doStuff
	.cfi_startproc
# BB#0:                                 # %entry
	movb	param_taint(%rip), %al
	movb	%al, return_taint1(%rip)
	leal	(%rdi,%rdi), %eax
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
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	time
	movl	%eax, %edi
	callq	srand
	callq	rand
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	je	.LBB1_1
# BB#2:                                 # %if.then
	movl	$1, %eax
	xorb	%cl, %cl
	jmp	.LBB1_3
.LBB1_1:
	movb	$1, %cl
.LBB1_3:                                # %if.end
	cmpb	$1, %cl
	je	.LBB1_5
# BB#4:                                 # %cont_BB
	movb	%cl, param_taint(%rip)
	movl	%eax, %edi
	callq	doStuff
	movb	$0, return_taint(%rip)
	xorl	%eax, %eax
	popq	%rdx
	ret
	.align	16, 0x90
.LBB1_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB1_5
.Ltmp3:
	.size	main, .Ltmp3-main
	.cfi_endproc

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

	.type	.L.str,@object          # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str, 31

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str2, 31


	.section	".note.GNU-stack","",@progbits
