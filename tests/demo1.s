	.file	"demo1.tt.bc"
	.text
	.globl	doStuff
	.align	16, 0x90
	.type	doStuff,@function
doStuff:                                # @doStuff
	.cfi_startproc
# BB#0:                                 # %entry
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -16
	movq	stdin(%rip), %rdi
	movb	$1, 11(%rsp)
	leaq	12(%rsp), %rdx
	xorb	%bl, %bl
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	__isoc99_fscanf
	movl	12(%rsp), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	movl	$5, %eax
	andl	$-2, %edx
	subl	%edx, %ecx
	je	.LBB1_3
# BB#1:                                 # %if.then
	movb	11(%rsp), %al
	movb	%al, %cl
	notb	%cl
	testb	$1, %cl
	je	.LBB1_4
# BB#2:                                 # %cont_BB
	movl	12(%rsp), %edi
	andb	$1, %al
	movb	%al, param_taint(%rip)
	movb	$0, param_taint2(%rip)
	movl	$3, %esi
	callq	doStuff
	movb	return_taint(%rip), %bl
.LBB1_3:                                # %if.end
	andb	$1, %bl
	movb	%bl, return_taint1(%rip)
	addq	$16, %rsp
	popq	%rbx
	ret
	.align	16, 0x90
.LBB1_4:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB1_4
.Ltmp6:
	.size	main, .Ltmp6-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d"
	.size	.L.str, 3

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
