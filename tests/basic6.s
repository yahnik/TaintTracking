	.file	"basic6.tt.bc"
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
.Ltmp3:
	.cfi_offset %rbx, -16
	xorb	%bl, %bl
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	testb	%bl, %bl
	jne	.LBB0_2
# BB#1:                                 # %cont_BB
	xorl	%eax, %eax
	popq	%rbx
	ret
	.align	16, 0x90
.LBB0_2:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB0_2
.Ltmp4:
	.size	main, .Ltmp4-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str, 31

	.type	return_taint,@object    # @return_taint
	.bss
	.globl	return_taint
return_taint:
	.byte	0                       # 0x0
	.size	return_taint, 1

	.type	.L.str1,@object         # @.str1
	.section	.rodata,"a",@progbits
.L.str1:
	.asciz	 "Warning: tainted data in use!"
	.size	.L.str1, 30


	.section	".note.GNU-stack","",@progbits
