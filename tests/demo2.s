	.file	"demo2.tt.bc"
	.text
	.globl	numPrint
	.align	16, 0x90
	.type	numPrint,@function
numPrint:                               # @numPrint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	popq	%rax
	ret
.Ltmp2:
	.size	numPrint, .Ltmp2-numPrint
	.cfi_endproc

	.globl	run
	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 16
	movb	param_taint3(%rip), %al
	movb	%al, %cl
	notb	%cl
	testb	$1, %cl
	je	.LBB1_2
# BB#1:                                 # %cont_BB
	andb	$1, %al
	movb	%al, param_taint(%rip)
	callq	numPrint
	movb	$0, return_taint1(%rip)
	popq	%rax
	ret
	.align	16, 0x90
.LBB1_2:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str7, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB1_2
.Ltmp5:
	.size	run, .Ltmp5-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	cmpl	$2, %edi
	jl	.LBB2_2
# BB#1:                                 # %if.end
	movb	param_taint5(%rip), %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	andb	$1, %al
	movb	%al, -16(%rcx)
	movq	8(%rsi), %rdi
	movb	%al, param_taint3(%rip)
	callq	run
	xorl	%eax, %eax
.LBB2_2:                                # %return
	movb	$0, return_taint2(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	main, .Ltmp11-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%s\n"
	.size	.L.str, 4

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

	.type	return_taint2,@object   # @return_taint2
	.globl	return_taint2
return_taint2:
	.byte	0                       # 0x0
	.size	return_taint2, 1

	.type	param_taint,@object     # @param_taint
	.globl	param_taint
param_taint:
	.byte	0                       # 0x0
	.size	param_taint, 1

	.type	param_taint3,@object    # @param_taint3
	.globl	param_taint3
param_taint3:
	.byte	0                       # 0x0
	.size	param_taint3, 1

	.type	param_taint4,@object    # @param_taint4
	.data
	.globl	param_taint4
param_taint4:
	.byte	1                       # 0x1
	.size	param_taint4, 1

	.type	param_taint5,@object    # @param_taint5
	.globl	param_taint5
param_taint5:
	.byte	1                       # 0x1
	.size	param_taint5, 1

	.type	.L.str6,@object         # @.str6
	.section	.rodata,"a",@progbits
.L.str6:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str6, 31

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str7, 31

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str8, 31


	.section	".note.GNU-stack","",@progbits
