	.file	"compress.tt.bc"
	.text
	.globl	BZ2_bsInitWrite
	.align	16, 0x90
	.type	BZ2_bsInitWrite,@function
BZ2_bsInitWrite:                        # @BZ2_bsInitWrite
	.cfi_startproc
# BB#0:                                 # %entry
	movb	param_taint13(%rip), %al
	movb	%al, -1(%rsp)
	movb	$0, -1(%rsp)
	movl	$0, 644(%rdi)
	movb	%al, -2(%rsp)
	movb	$0, -2(%rsp)
	movl	$0, 640(%rdi)
	movb	$0, return_taint2(%rip)
	ret
.Ltmp0:
	.size	BZ2_bsInitWrite, .Ltmp0-BZ2_bsInitWrite
	.cfi_endproc

	.globl	BZ2_compressBlock
	.align	16, 0x90
	.type	BZ2_compressBlock,@function
BZ2_compressBlock:                      # @BZ2_compressBlock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r15
	movb	param_taint14(%rip), %bl
	movb	%bl, -25(%rbp)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB1_22
# BB#1:                                 # %cont_BB
	movl	108(%r15), %eax
	testl	%eax, %eax
	jle	.LBB1_9
# BB#2:                                 # %if.then
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	648(%r15), %edx
	movb	%bl, %cl
	orb	%cl, %cl
	xorb	%r8b, %r8b
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%bl, -16(%rsi)
	notl	%edx
	movl	%edx, 648(%r15)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	652(%r15), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movl	652(%r15), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%bl, -16(%rdi)
	movb	%cl, -16(%rdi)
	shrdl	$31, %edx, %esi
	movl	%esi, 652(%r15)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%bl, -16(%rdx)
	movl	648(%r15), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%bl, -16(%rsi)
	movl	652(%r15), %edi
	movb	%cl, -16(%rsi)
	xorl	%edx, %edi
	movl	%edi, 652(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%bl, -16(%rcx)
	jne	.LBB1_22
# BB#3:                                 # %cont_BB29
	movl	660(%r15), %eax
	cmpl	$2, %eax
	jl	.LBB1_5
# BB#4:                                 # %if.then7
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 116(%r15)
.LBB1_5:                                # %if.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB1_22
# BB#6:                                 # %cont_BB36
	movl	656(%r15), %eax
	cmpl	$2, %eax
	jl	.LBB1_8
# BB#7:                                 # %if.then9
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	660(%r15), %edx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	648(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rax)
	movl	652(%r15), %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rax)
	movl	108(%r15), %r9d
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
.LBB1_8:                                # %if.end14
	movq	%r15, %rdi
	callq	BZ2_blockSort
.LBB1_9:                                # %if.end15
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movslq	108(%r15), %rcx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	32(%r15), %rdx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	addq	%rcx, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movb	%bl, -16(%rcx)
	movq	%rdx, 80(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%bl, -16(%rcx)
	jne	.LBB1_22
# BB#10:                                # %cont_BB64
	movl	660(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB1_12
# BB#11:                                # %if.then19
	movb	%bl, param_taint13(%rip)
	movq	%r15, %rdi
	callq	BZ2_bsInitWrite
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$66, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$90, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$104, %esi
	callq	bsPutUChar
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	664(%r15), %eax
	movb	%bl, param_taint16(%rip)
	movb	%bl, param_taint17(%rip)
	addl	$48, %eax
	movzbl	%al, %esi
	movq	%r15, %rdi
	callq	bsPutUChar
.LBB1_12:                               # %if.end20
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB1_22
# BB#13:                                # %cont_BB79
	movl	108(%r15), %eax
	testl	%eax, %eax
	jle	.LBB1_15
# BB#14:                                # %if.then24
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$49, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$65, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$89, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$38, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$83, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$89, %esi
	callq	bsPutUChar
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	648(%r15), %esi
	movb	%bl, param_taint(%rip)
	movb	%bl, param_taint9(%rip)
	movq	%r15, %rdi
	callq	bsPutUInt32
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	%r15, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	48(%r15), %edx
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	%bl, param_taint12(%rip)
	movq	%r15, %rdi
	movl	$24, %esi
	callq	bsW
	movb	%bl, param_taint18(%rip)
	movq	%r15, %rdi
	callq	generateMTFValues
	movb	%bl, param_taint19(%rip)
	movq	%r15, %rdi
	callq	sendMTFValues
.LBB1_15:                               # %if.end26
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB1_22
# BB#16:                                # %cont_BB99
	testb	%r14b, %r14b
	je	.LBB1_21
# BB#17:                                # %if.then27
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$23, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$114, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$69, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$56, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$80, %esi
	callq	bsPutUChar
	movb	%bl, param_taint16(%rip)
	movb	$0, param_taint17(%rip)
	movq	%r15, %rdi
	movl	$144, %esi
	callq	bsPutUChar
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	652(%r15), %esi
	movb	%bl, param_taint(%rip)
	movb	%bl, param_taint9(%rip)
	movq	%r15, %rdi
	callq	bsPutUInt32
	xorb	%al, %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%bl, -16(%rcx)
	je	.LBB1_18
	.align	16, 0x90
.LBB1_22:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str23, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB1_22
.LBB1_18:                               # %cont_BB115
	movl	656(%r15), %eax
	cmpl	$2, %eax
	jl	.LBB1_20
# BB#19:                                # %if.then32
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	652(%r15), %edx
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
.LBB1_20:                               # %if.end35
	movb	%bl, param_taint20(%rip)
	movq	%r15, %rdi
	callq	bsFinishWrite
.LBB1_21:                               # %if.end36
	movb	$0, return_taint3(%rip)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp10:
	.size	BZ2_compressBlock, .Ltmp10-BZ2_compressBlock
	.cfi_endproc

	.align	16, 0x90
	.type	bsPutUChar,@function
bsPutUChar:                             # @bsPutUChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	movb	param_taint17(%rip), %cl
	movb	param_taint16(%rip), %dl
	movb	%dl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	%cl, param_taint12(%rip)
	movl	$8, %esi
	movl	%eax, %edx
	callq	bsW
	movb	$0, return_taint4(%rip)
	popq	%rax
	ret
.Ltmp13:
	.size	bsPutUChar, .Ltmp13-bsPutUChar
	.cfi_endproc

	.align	16, 0x90
	.type	bsPutUInt32,@function
bsPutUInt32:                            # @bsPutUInt32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 48
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movb	param_taint9(%rip), %r15b
	movb	param_taint(%rip), %bl
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	%r15b, param_taint12(%rip)
	movl	%ebp, %edx
	shrl	$24, %edx
	movl	$8, %esi
	callq	bsW
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movl	%ebp, %eax
	shrl	$16, %eax
	movb	%r15b, param_taint12(%rip)
	movzbl	%al, %edx
	movq	%r14, %rdi
	movl	$8, %esi
	callq	bsW
	movl	%ebp, %eax
	movzbl	%ah, %edx
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	%r15b, param_taint12(%rip)
	movq	%r14, %rdi
	movl	$8, %esi
	callq	bsW
	movzbl	%bpl, %edx
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	%r15b, param_taint12(%rip)
	movq	%r14, %rdi
	movl	$8, %esi
	callq	bsW
	movb	$0, return_taint(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp28:
	.size	bsPutUInt32, .Ltmp28-bsPutUInt32
	.cfi_endproc

	.align	16, 0x90
	.type	bsW,@function
bsW:                                    # @bsW
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
.Ltmp35:
	.cfi_offset %rbx, -48
.Ltmp36:
	.cfi_offset %r12, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
	movb	param_taint10(%rip), %r10b
	movb	param_taint11(%rip), %r8b
	movb	param_taint12(%rip), %r9b
	movb	%r10b, %al
	andb	$1, %al
	xorb	%r11b, %r11b
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	movb	643(%rdi), %r14b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	movslq	116(%rdi), %r15
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	movq	80(%rdi), %r12
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rbx)
	movb	%al, -16(%rbx)
	movb	%r14b, (%r12,%r15)
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	movl	116(%rdi), %ebx
	movb	%al, -16(%rcx)
	incl	%ebx
	movl	%ebx, 116(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	movl	640(%rdi), %ebx
	movb	%al, -16(%rcx)
	shll	$8, %ebx
	movl	%ebx, 640(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	movl	644(%rdi), %ebx
	movb	%al, -16(%rcx)
	addl	$-8, %ebx
	movl	%ebx, 644(%rdi)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	testb	%r11b, %r11b
	jne	.LBB4_5
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	644(%rdi), %ecx
	cmpl	$8, %ecx
	jge	.LBB4_3
# BB#4:                                 # %while.end
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rcx)
	orb	%r10b, %r8b
	orb	%r8b, %r9b
	orb	%r10b, %r9b
	movl	644(%rdi), %ebx
	andb	$1, %r9b
	movl	$32, %ecx
	subl	%ebx, %ecx
	movq	%rsp, %r11
	andb	$1, %r8b
	leaq	-16(%r11), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%r11)
	movl	640(%rdi), %r10d
	movb	%r9b, -16(%r11)
	subl	%esi, %ecx
                                        # kill: CL<def> CL<kill> ECX<kill>
	shll	%cl, %edx
	orl	%r10d, %edx
	movl	%edx, 640(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movl	644(%rdi), %eax
	movb	%r8b, -16(%rcx)
	addl	%esi, %eax
	movl	%eax, 644(%rdi)
	movb	$0, return_taint1(%rip)
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.align	16, 0x90
.LBB4_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str26, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB4_5
.Ltmp39:
	.size	bsW, .Ltmp39-bsW
	.cfi_endproc

	.align	16, 0x90
	.type	generateMTFValues,@function
generateMTFValues:                      # @generateMTFValues
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	movb	param_taint18(%rip), %r14b
	movb	%r14b, -305(%rbp)
	movq	56(%r12), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movb	-305(%rbp), %al
	movb	%al, -321(%rbp)         # 1-byte Spill
	movb	%r14b, -306(%rbp)
	movq	64(%r12), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movb	-306(%rbp), %al
	movb	%al, -322(%rbp)         # 1-byte Spill
	movb	%r14b, -307(%rbp)
	movq	72(%r12), %r15
	movq	%r15, -360(%rbp)        # 8-byte Spill
	movb	-307(%rbp), %al
	movb	%al, -309(%rbp)         # 1-byte Spill
	movb	%r14b, param_taint21(%rip)
	callq	makeMaps_e
	xorl	%eax, %eax
	movb	%r14b, -308(%rbp)
	movl	124(%r12), %ecx
	incl	%ecx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movb	-308(%rbp), %cl
	movb	%cl, -361(%rbp)         # 1-byte Spill
	movq	%rax, %rcx
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_42:                               # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	$0, 672(%r12,%rcx,4)
	incq	%rcx
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB5_41
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	-320(%rbp), %ecx        # 4-byte Folded Reload
	jle	.LBB5_42
# BB#3:
	xorb	%sil, %sil
	xorl	%edx, %edx
	xorb	%r10b, %r10b
	andb	$1, %r10b
	movb	%r10b, -345(%rbp)       # 1-byte Spill
	jmp	.LBB5_4
	.align	16, 0x90
.LBB5_43:                               # %for.body7
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r10b, -16(%rcx)
	movb	$0, -16(%rcx)
	movb	%al, -304(%rbp,%rax)
	incq	%rax
.LBB5_4:                                # %for.cond4
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r14b, -16(%rcx)
	testb	%sil, %sil
	jne	.LBB5_41
# BB#5:                                 # %cont_BB21
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	124(%r12), %ecx
	cmpl	%ecx, %eax
	jl	.LBB5_43
# BB#6:
	xorb	%r9b, %r9b
	andb	$1, -321(%rbp)          # 1-byte Folded Spill
	andb	$1, -322(%rbp)          # 1-byte Folded Spill
	xorl	%esi, %esi
	movl	%edx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB5_7
	.align	16, 0x90
.LBB5_14:                               # %if.then32
                                        #   in Loop: Header=BB5_7 Depth=1
	incl	%esi
	incl	-316(%rbp)              # 4-byte Folded Spill
	.align	16, 0x90
.LBB5_7:                                # %for.cond13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_26 Depth 2
                                        #     Child Loop BB5_18 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	testb	%r9b, %r9b
	jne	.LBB5_41
# BB#8:                                 # %cont_BB34
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	108(%r12), %eax
	cmpl	%eax, -316(%rbp)        # 4-byte Folded Reload
	jge	.LBB5_30
# BB#9:                                 # %for.body16
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-321(%rbp), %cl         # 1-byte Reload
	movb	%cl, -16(%rax)
	testb	%r9b, %r9b
	jne	.LBB5_41
# BB#10:                                # %cont_BB42
                                        #   in Loop: Header=BB5_7 Depth=1
	movslq	-316(%rbp), %rax        # 4-byte Folded Reload
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %edi
	decl	%edi
	testl	%edi, %edi
	jns	.LBB5_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	addl	108(%r12), %edi
.LBB5_12:                               # %if.end
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-322(%rbp), %cl         # 1-byte Reload
	movb	%cl, -16(%rax)
	movslq	%edi, %rax
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r14b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r14b, -16(%rcx)
	movzbl	384(%r12,%rax), %r11d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r9b, %r9b
	movb	%r10b, -16(%rax)
	jne	.LBB5_41
# BB#13:                                # %cont_BB64
                                        #   in Loop: Header=BB5_7 Depth=1
	movzbl	-304(%rbp), %eax
	cmpl	%r11d, %eax
	je	.LBB5_14
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB5_7 Depth=1
	testb	%r9b, %r9b
	jne	.LBB5_41
# BB#16:                                # %cont_BB68
                                        #   in Loop: Header=BB5_7 Depth=1
	testl	%esi, %esi
	jle	.LBB5_25
# BB#17:                                # %if.then36
                                        #   in Loop: Header=BB5_7 Depth=1
	decl	%esi
	jmp	.LBB5_18
	.align	16, 0x90
.LBB5_44:                               # %if.end55
                                        #   in Loop: Header=BB5_18 Depth=2
	leal	-2(%rsi), %eax
	shrl	$31, %eax
	leal	-2(%rsi,%rax), %esi
	sarl	%esi
.LBB5_18:                               # %while.body
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r9b, %r9b
	jne	.LBB5_41
# BB#19:                                # %cont_BB75
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%esi, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.LBB5_21
# BB#20:                                # %if.then37
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-309(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movslq	%edx, %rax
	incl	%edx
	movw	$1, (%r15,%rax,2)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	676(%r12), %ecx
	movb	%r14b, -16(%rax)
	incl	%ecx
	movl	%ecx, 676(%r12)
	jmp	.LBB5_22
.LBB5_21:                               # %if.else44
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-309(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movslq	%edx, %rax
	incl	%edx
	movw	$0, (%r15,%rax,2)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	672(%r12), %ecx
	movb	%r14b, -16(%rax)
	incl	%ecx
	movl	%ecx, 672(%r12)
.LBB5_22:                               # %if.end51
                                        #   in Loop: Header=BB5_18 Depth=2
	testb	%r9b, %r9b
	jne	.LBB5_41
# BB#23:                                # %cont_BB95
                                        #   in Loop: Header=BB5_18 Depth=2
	cmpl	$2, %esi
	jge	.LBB5_44
# BB#24:                                #   in Loop: Header=BB5_7 Depth=1
	xorl	%esi, %esi
.LBB5_25:                               # %if.end57
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r10b, %bl
	movb	%bl, -16(%rax)
	movb	-16(%rax), %dil
	movb	-303(%rbp), %r10b
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	-304(%rbp), %r8b
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%bl, -16(%rcx)
	movb	%bl, -16(%rcx)
	movb	%r8b, -303(%rbp)
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	xorb	%r13b, %r13b
	leaq	-303(%rbp), %r8
	jmp	.LBB5_26
	.align	16, 0x90
.LBB5_28:                               # %while.body66
                                        #   in Loop: Header=BB5_26 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r13b
	movb	%r13b, -16(%rax)
	movb	1(%r8), %cl
	andb	$1, %dil
	xorb	%r13b, %r13b
	movb	%dil, -16(%rax)
	movb	%r10b, 1(%r8)
	leaq	1(%r8), %r8
	xorb	%dil, %dil
	movb	%cl, %r10b
.LBB5_26:                               # %while.cond
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r9b, %r9b
	jne	.LBB5_41
# BB#27:                                # %cont_BB114
                                        #   in Loop: Header=BB5_26 Depth=2
	movzbl	%r10b, %eax
	cmpl	%eax, %r11d
	jne	.LBB5_28
# BB#29:                                # %while.end67
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-345(%rbp), %r15b       # 1-byte Reload
	movb	%r15b, -16(%rax)
	leaq	-304(%rbp), %rcx
	subl	%ecx, %r8d
	incl	%r8d
	xorb	%cl, %cl
	orb	%cl, %r13b
	andb	$1, %dil
	movb	%dil, -16(%rax)
	andb	$1, %r13b
	movslq	%edx, %r11
	incl	%edx
	movb	-309(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movslq	%r8d, %rbx
	movb	%r10b, -304(%rbp)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r15b, -16(%rcx)
	movb	%r15b, %r10b
	movq	-360(%rbp), %r15        # 8-byte Reload
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rcx)
	movb	%r13b, -16(%rcx)
	movw	%r8w, (%r15,%r11,2)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	672(%r12,%rbx,4), %ecx
	movb	%r14b, -16(%rax)
	incl	%ecx
	movl	%ecx, 672(%r12,%rbx,4)
	incl	-316(%rbp)              # 4-byte Folded Spill
	jmp	.LBB5_7
.LBB5_30:                               # %for.end84
	xorb	%r9b, %r9b
	testb	%r9b, %r9b
	jne	.LBB5_41
# BB#31:                                # %cont_BB141
	testl	%esi, %esi
	jle	.LBB5_40
# BB#32:                                # %if.then87
	decl	%esi
	xorb	%r8b, %r8b
	movb	-309(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	jmp	.LBB5_33
	.align	16, 0x90
.LBB5_39:                               # %if.end111
                                        #   in Loop: Header=BB5_33 Depth=1
	leal	-2(%rsi), %eax
	shrl	$31, %eax
	leal	-2(%rsi,%rax), %esi
	sarl	%esi
.LBB5_33:                               # %while.body90
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB5_41
# BB#34:                                # %cont_BB148
                                        #   in Loop: Header=BB5_33 Depth=1
	movl	%esi, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.LBB5_36
# BB#35:                                # %if.then93
                                        #   in Loop: Header=BB5_33 Depth=1
	movb	-309(%rbp), %bl         # 1-byte Reload
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movslq	%edx, %rax
	incl	%edx
	xorb	%r9b, %r9b
	movw	$1, (%r15,%rax,2)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r14b, -16(%rax)
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rdi)
	movl	676(%r12), %eax
	movb	%r14b, -16(%rdi)
	incl	%eax
	movl	%eax, 676(%r12)
	jmp	.LBB5_37
.LBB5_36:                               # %if.else100
                                        #   in Loop: Header=BB5_33 Depth=1
	movb	-309(%rbp), %bl         # 1-byte Reload
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movslq	%edx, %rdi
	incl	%edx
	xorb	%r9b, %r9b
	movw	$0, (%r15,%rdi,2)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rdi)
	movl	672(%r12), %eax
	movb	%r14b, -16(%rdi)
	incl	%eax
	movl	%eax, 672(%r12)
.LBB5_37:                               # %if.end107
                                        #   in Loop: Header=BB5_33 Depth=1
	movb	%bl, -309(%rbp)         # 1-byte Spill
	testb	%r8b, %r8b
	jne	.LBB5_41
# BB#38:                                # %cont_BB168
                                        #   in Loop: Header=BB5_33 Depth=1
	cmpl	$2, %esi
	jge	.LBB5_39
.LBB5_40:                               # %if.end115
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	-309(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rcx)
	movb	-361(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rcx)
	movslq	%edx, %rcx
	movl	-320(%rbp), %eax        # 4-byte Reload
	movw	%ax, (%r15,%rcx,2)
	movslq	%eax, %rdx
	incl	%ecx
	andb	$1, %r9b
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rax)
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rsi)
	movl	672(%r12,%rdx,4), %eax
	movb	%r14b, -16(%rsi)
	incl	%eax
	movl	%eax, 672(%r12,%rdx,4)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rdx)
	movb	%r9b, -16(%rdx)
	movl	%ecx, 668(%r12)
	movb	$0, return_taint5(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.align	16, 0x90
.LBB5_41:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str27, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB5_41
.Ltmp51:
	.size	generateMTFValues, .Ltmp51-generateMTFValues
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4636737291354636288     # double 1.000000e+02
                                        #  (0x4059000000000000)
	.text
	.align	16, 0x90
	.type	sendMTFValues,@function
sendMTFValues:                          # @sendMTFValues
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
	movb	param_taint19(%rip), %cl
	movb	%cl, -113(%rbp)
	movq	72(%rdi), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movb	-113(%rbp), %al
	movb	%al, -145(%rbp)         # 1-byte Spill
	movb	%cl, -114(%rbp)
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -192(%rbp)          # 1-byte Folded Spill
	jne	.LBB6_249
# BB#1:                                 # %cont_BB
	movq	%rdi, %rdx
	movl	656(%rdx), %eax
	cmpl	$3, %eax
	movb	%cl, %r13b
	jl	.LBB6_3
# BB#2:                                 # %if.then
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rdx, %rbx
	movl	108(%rbx), %edx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	668(%rbx), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	124(%rbx), %r8d
	movl	$.L.str2, %esi
	xorb	%al, %al
	callq	fprintf
	movq	%rbx, %rdx
.LBB6_3:                                # %if.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	leaq	37708(%rdx), %r8
	movl	124(%rdx), %eax
	movq	%rdx, %r14
	xorl	%ecx, %ecx
	addl	$2, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	xorb	%dl, %dl
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_9:                                # %for.inc9
                                        #   in Loop: Header=BB6_4 Depth=1
	addq	$258, %r8               # imm = 0x102
	incl	%ecx
.LBB6_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	testb	%dl, %dl
	jne	.LBB6_249
# BB#5:                                 # %cont_BB23
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%esi, %esi
	cmpl	$5, %ecx
	movq	%r8, %rdi
	jg	.LBB6_10
	jmp	.LBB6_6
	.align	16, 0x90
.LBB6_8:                                # %for.body6
                                        #   in Loop: Header=BB6_6 Depth=2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movb	$0, -16(%rbx)
	movb	$15, (%rdi)
	incq	%rdi
	incl	%esi
.LBB6_6:                                # %for.cond4
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dl, %dl
	jne	.LBB6_249
# BB#7:                                 # %cont_BB27
                                        #   in Loop: Header=BB6_6 Depth=2
	cmpl	-160(%rbp), %esi        # 4-byte Folded Reload
	jge	.LBB6_9
	jmp	.LBB6_8
.LBB6_10:                               # %for.end11
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#11:                                # %cont_BB40
	movl	668(%r14), %eax
	testl	%eax, %eax
	jg	.LBB6_13
# BB#12:                                # %if.then14
	movl	$3001, %edi             # imm = 0xBB9
	callq	BZ2_bz__AssertH__fail
.LBB6_13:                               # %if.end15
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#14:                                # %cont_BB46
	movq	%r14, %rdx
	movl	668(%rdx), %eax
	movl	$2, %ecx
	cmpl	$200, %eax
	jl	.LBB6_22
# BB#15:                                # %if.else
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#16:                                # %cont_BB52
	movl	668(%rdx), %eax
	movl	$3, %ecx
	cmpl	$600, %eax              # imm = 0x258
	jl	.LBB6_22
# BB#17:                                # %if.else22
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#18:                                # %cont_BB58
	movl	668(%rdx), %eax
	movl	$4, %ecx
	cmpl	$1200, %eax             # imm = 0x4B0
	jl	.LBB6_22
# BB#19:                                # %if.else26
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#20:                                # %cont_BB64
	movl	668(%rdx), %eax
	movl	$5, %ecx
	cmpl	$2400, %eax             # imm = 0x960
	jl	.LBB6_22
# BB#21:                                # %if.else30
	movl	$6, %ecx
.LBB6_22:                               # %if.end34
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movq	%rsp, %rax
	movl	%ecx, %esi
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movslq	%esi, %rax
	imulq	$258, %rax, %rax        # imm = 0x102
	leaq	37450(%rax,%rdx), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	leaq	672(%rdx), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	668(%rdx), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	xorl	%r15d, %r15d
	xorb	%r8b, %r8b
	movl	%esi, %r14d
	jmp	.LBB6_23
	.align	16, 0x90
.LBB6_53:                               # %for.end95
                                        #   in Loop: Header=BB6_23 Depth=1
	subl	%r12d, -176(%rbp)       # 4-byte Folded Spill
	addq	$-258, -144(%rbp)       # 8-byte Folded Spill
                                        # imm = 0xFFFFFFFFFFFFFEFE
	incl	%ebx
	decl	%r14d
	movl	%ebx, %r15d
.LBB6_23:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_44 Depth 2
                                        #     Child Loop BB6_26 Depth 2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#24:                                # %cont_BB77
                                        #   in Loop: Header=BB6_23 Depth=1
	testl	%r14d, %r14d
	jle	.LBB6_54
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB6_23 Depth=1
	movl	%r15d, %esi
	movslq	%esi, %rdi
	xorl	%r12d, %r12d
	movl	-176(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	%r14d
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rdx        # 8-byte Reload
	leaq	(%rdx,%rdi,4), %rdx
	jmp	.LBB6_26
	.align	16, 0x90
.LBB6_31:                               # %while.body41
                                        #   in Loop: Header=BB6_26 Depth=2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	addl	(%rdx,%rcx,4), %r12d
	incq	%rcx
.LBB6_26:                               # %while.cond37
                                        #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#27:                                # %cont_BB84
                                        #   in Loop: Header=BB6_26 Depth=2
	xorb	%bl, %bl
	cmpl	%eax, %r12d
	jge	.LBB6_29
# BB#28:                                # %land.rhs
                                        #   in Loop: Header=BB6_26 Depth=2
	leaq	(%rsi,%rcx), %rdi
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	addq	%rbx, %rdi
	movl	-160(%rbp), %ebx        # 4-byte Reload
	leal	-1(%rbx), %ebx
	cmpl	%ebx, %edi
	setl	%bl
.LBB6_29:                               # %land.end
                                        #   in Loop: Header=BB6_26 Depth=2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#30:                                # %cont_BB89
                                        #   in Loop: Header=BB6_26 Depth=2
	cmpb	$1, %bl
	je	.LBB6_31
# BB#32:                                # %while.end
                                        #   in Loop: Header=BB6_23 Depth=1
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#33:                                # %cont_BB99
                                        #   in Loop: Header=BB6_23 Depth=1
	leaq	(%rsi,%rcx), %rbx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	addq	%rax, %rbx
	cmpl	%esi, %ebx
	jle	.LBB6_41
# BB#34:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_23 Depth=1
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#35:                                # %cont_BB102
                                        #   in Loop: Header=BB6_23 Depth=1
	cmpl	-120(%rbp), %r14d       # 4-byte Folded Reload
	je	.LBB6_41
# BB#36:                                # %land.lhs.true48
                                        #   in Loop: Header=BB6_23 Depth=1
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#37:                                # %cont_BB105
                                        #   in Loop: Header=BB6_23 Depth=1
	cmpl	$1, %r14d
	je	.LBB6_41
# BB#38:                                # %land.lhs.true50
                                        #   in Loop: Header=BB6_23 Depth=1
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#39:                                # %cont_BB110
                                        #   in Loop: Header=BB6_23 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	%r14d, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	andl	$-2, %edx
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.LBB6_41
# BB#40:                                # %if.then53
                                        #   in Loop: Header=BB6_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rax)
	leal	-2(%r15,%rcx), %ebx
	leal	-1(%r15), %eax
	movslq	%eax, %rax
	movq	-168(%rbp), %rdx        # 8-byte Reload
	leaq	(%rdx,%rax,4), %rax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	subl	(%rax,%rcx,4), %r12d
.LBB6_41:                               # %if.end58
                                        #   in Loop: Header=BB6_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#42:                                # %cont_BB125
                                        #   in Loop: Header=BB6_23 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	656(%rax), %ecx
	xorl	%eax, %eax
	cmpl	$3, %ecx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	jl	.LBB6_44
# BB#43:                                # %if.then61
                                        #   in Loop: Header=BB6_23 Depth=1
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	cvtsi2ss	%r12d, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	%r13b, -16(%rax)
	mulsd	.LCPI6_0(%rip), %xmm0
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	668(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movl	$.L.str3, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%r12d, %r9d
	movb	$1, %al
	callq	fprintf
	xorb	%r8b, %r8b
	xorl	%eax, %eax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB6_44
	.align	16, 0x90
.LBB6_52:                               # %for.inc93
                                        #   in Loop: Header=BB6_44 Depth=2
	incq	%rcx
	incl	%eax
	xorb	%r8b, %r8b
.LBB6_44:                               # %for.cond69
                                        #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#45:                                # %cont_BB139
                                        #   in Loop: Header=BB6_44 Depth=2
	cmpl	-160(%rbp), %eax        # 4-byte Folded Reload
	jge	.LBB6_53
# BB#46:                                # %for.body72
                                        #   in Loop: Header=BB6_44 Depth=2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#47:                                # %cont_BB142
                                        #   in Loop: Header=BB6_44 Depth=2
	cmpl	%r15d, %eax
	jl	.LBB6_51
# BB#48:                                # %land.lhs.true75
                                        #   in Loop: Header=BB6_44 Depth=2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#49:                                # %cont_BB145
                                        #   in Loop: Header=BB6_44 Depth=2
	cmpl	%ebx, %eax
	jg	.LBB6_51
# BB#50:                                # %if.then78
                                        #   in Loop: Header=BB6_44 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movb	$0, (%rcx)
	jmp	.LBB6_52
.LBB6_51:                               # %if.else85
                                        #   in Loop: Header=BB6_44 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movb	$15, (%rcx)
	jmp	.LBB6_52
.LBB6_54:                               # %while.end99
	movq	-128(%rbp), %r14        # 8-byte Reload
	leaq	37708(%r14), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	leaq	45448(%r14), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	$0, -204(%rbp)          # 4-byte Folded Spill
	leaq	51648(%r14), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	xorb	%r12b, %r12b
	jmp	.LBB6_55
	.align	16, 0x90
.LBB6_120:                              # %for.inc1702
                                        #   in Loop: Header=BB6_55 Depth=1
	incl	-204(%rbp)              # 4-byte Folded Spill
.LBB6_55:                               # %for.cond100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_117 Depth 2
                                        #     Child Loop BB6_71 Depth 2
                                        #       Child Loop BB6_85 Depth 3
                                        #       Child Loop BB6_92 Depth 3
                                        #         Child Loop BB6_96 Depth 4
                                        #       Child Loop BB6_77 Depth 3
                                        #       Child Loop BB6_106 Depth 3
                                        #     Child Loop BB6_68 Depth 2
                                        #     Child Loop BB6_60 Depth 2
                                        #       Child Loop BB6_62 Depth 3
                                        #     Child Loop BB6_57 Depth 2
                                        #     Child Loop BB6_112 Depth 2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#56:                                # %cont_BB166
                                        #   in Loop: Header=BB6_55 Depth=1
	xorl	%eax, %eax
	cmpl	$3, -204(%rbp)          # 4-byte Folded Reload
	jg	.LBB6_121
	jmp	.LBB6_57
	.align	16, 0x90
.LBB6_250:                              # %for.body107
                                        #   in Loop: Header=BB6_57 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	xorb	%dl, %dl
	andb	$1, %dl
	movb	%dl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, -80(%rbp,%rax,4)
	incq	%rax
.LBB6_57:                               # %for.cond104
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#58:                                # %cont_BB170
                                        #   in Loop: Header=BB6_57 Depth=2
	cmpl	-120(%rbp), %eax        # 4-byte Folded Reload
	jl	.LBB6_250
# BB#59:                                #   in Loop: Header=BB6_55 Depth=1
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB6_60
	.align	16, 0x90
.LBB6_65:                               # %for.inc128
                                        #   in Loop: Header=BB6_60 Depth=2
	addq	$1032, %rcx             # imm = 0x408
	incl	%eax
.LBB6_60:                               # %for.cond113
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_62 Depth 3
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#61:                                # %cont_BB177
                                        #   in Loop: Header=BB6_60 Depth=2
	xorl	%edx, %edx
	cmpl	-120(%rbp), %eax        # 4-byte Folded Reload
	movq	%rcx, %rsi
	jge	.LBB6_66
	jmp	.LBB6_62
	.align	16, 0x90
.LBB6_64:                               # %for.body120
                                        #   in Loop: Header=BB6_62 Depth=3
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movb	$0, -16(%rdi)
	movl	$0, (%rsi)
	addq	$4, %rsi
	incl	%edx
.LBB6_62:                               # %for.cond117
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#63:                                # %cont_BB181
                                        #   in Loop: Header=BB6_62 Depth=3
	cmpl	-160(%rbp), %edx        # 4-byte Folded Reload
	jge	.LBB6_65
	jmp	.LBB6_64
.LBB6_66:                               # %for.end130
                                        #   in Loop: Header=BB6_55 Depth=1
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#67:                                # %cont_BB191
                                        #   in Loop: Header=BB6_55 Depth=1
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	cmpl	$6, -120(%rbp)          # 4-byte Folded Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movl	$0, -184(%rbp)          # 4-byte Folded Spill
	movl	$0, -180(%rbp)          # 4-byte Folded Spill
	movb	%r13b, %al
	jne	.LBB6_71
	jmp	.LBB6_68
	.align	16, 0x90
.LBB6_70:                               # %for.body137
                                        #   in Loop: Header=BB6_68 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movb	%al, %r9b
	orb	%r9b, %r9b
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rsi)
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movzbl	37966(%rdx,%r10), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rdi)
	shll	$16, %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rdi)
	movzbl	37708(%rdx,%r10), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rbx)
	orl	%esi, %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movl	%edi, -8(%r8)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movzbl	38482(%rdx,%r10), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdi)
	shll	$16, %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdi)
	movzbl	38224(%rdx,%r10), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rbx)
	orl	%esi, %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movl	%edi, -4(%r8)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movzbl	38998(%rdx,%r10), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdi)
	shll	$16, %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdi)
	movzbl	38740(%rdx,%r10), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rbx)
	orl	%esi, %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movl	%edi, (%r8)
	incq	%r10
	addq	$16, %r8
.LBB6_68:                               # %for.cond134
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#69:                                # %cont_BB195
                                        #   in Loop: Header=BB6_68 Depth=2
	xorl	%r11d, %r11d
	cmpl	-160(%rbp), %r10d       # 4-byte Folded Reload
	movl	$0, -184(%rbp)          # 4-byte Folded Spill
	movl	$0, -180(%rbp)          # 4-byte Folded Spill
	jge	.LBB6_71
	jmp	.LBB6_70
	.align	16, 0x90
.LBB6_104:                              # %if.end1665
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	-144(%rbp), %ecx        # 4-byte Reload
	incl	%ecx
	movl	%ecx, %r11d
.LBB6_71:                               # %while.body188
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_85 Depth 3
                                        #       Child Loop BB6_92 Depth 3
                                        #         Child Loop BB6_96 Depth 4
                                        #       Child Loop BB6_77 Depth 3
                                        #       Child Loop BB6_106 Depth 3
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdx)
	movb	%al, %r13b
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#72:                                # %cont_BB265
                                        #   in Loop: Header=BB6_71 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	668(%rax), %eax
	cmpl	%eax, %r11d
	jge	.LBB6_109
# BB#73:                                # %if.end193
                                        #   in Loop: Header=BB6_71 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#74:                                # %cont_BB273
                                        #   in Loop: Header=BB6_71 Depth=2
	leal	49(%r11), %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	668(%rdx), %eax
	cmpl	%eax, %ecx
	jl	.LBB6_76
# BB#75:                                # %if.then199
                                        #   in Loop: Header=BB6_71 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	668(%rdx), %eax
	decl	%eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB6_76:                               # %if.end202
                                        #   in Loop: Header=BB6_71 Depth=2
	xorl	%eax, %eax
	jmp	.LBB6_77
	.align	16, 0x90
.LBB6_79:                               # %for.body206
                                        #   in Loop: Header=BB6_77 Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	xorb	%dl, %dl
	andb	$1, %dl
	movb	%dl, -16(%rcx)
	movb	$0, -16(%rcx)
	movw	$0, -52(%rbp,%rax,2)
	incq	%rax
.LBB6_77:                               # %for.cond203
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#78:                                # %cont_BB282
                                        #   in Loop: Header=BB6_77 Depth=3
	cmpl	-120(%rbp), %eax        # 4-byte Folded Reload
	jl	.LBB6_79
# BB#80:                                # %for.end211
                                        #   in Loop: Header=BB6_71 Depth=2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#81:                                # %cont_BB288
                                        #   in Loop: Header=BB6_71 Depth=2
	cmpl	$6, -120(%rbp)          # 4-byte Folded Reload
	movl	%r11d, %r8d
	jne	.LBB6_92
# BB#82:                                # %land.lhs.true214
                                        #   in Loop: Header=BB6_71 Depth=2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#83:                                # %cont_BB293
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	%r11d, %eax
	incl	%eax
	cmpl	$50, %eax
	movl	%r11d, %r8d
	jne	.LBB6_92
# BB#84:                                # %if.then219
                                        #   in Loop: Header=BB6_71 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-145(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -188(%rbp)         # 1-byte Spill
	movb	%cl, -16(%rax)
	movb	%cl, %r9b
	movslq	%r11d, %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movzwl	(%rdx,%rax,2), %ecx
	movq	%rdx, %r10
	movl	$-1, -168(%rbp)         # 4-byte Folded Spill
	leal	1(%r11), %eax
	shlq	$4, %rcx
	movslq	%eax, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movl	51640(%r14,%rcx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rcx), %eax
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movl	51648(%r14,%rcx), %r8d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r9b, -16(%rcx)
	movb	%r9b, %r15b
	movzwl	(%r10,%rdx,2), %edx
	movq	%r10, %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rbx)
	addl	%esi, %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rsi)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rbx)
	addl	%eax, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	leal	2(%r11), %edi
	movslq	%edi, %rbx
	movb	%r15b, %r10b
	movb	%r10b, -16(%rdx)
	movzwl	(%r12,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	shlq	$4, %rdx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdi)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	addl	%ecx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	3(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r12,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	4(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r12,%rbx,2), %edx
	movq	%r12, %r15
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	5(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	6(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	7(%r11), %eax
	movslq	%eax, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	8(%r11), %ecx
	movslq	%ecx, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	9(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	10(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	11(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	12(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	13(%r11), %eax
	movslq	%eax, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	14(%r11), %ecx
	movslq	%ecx, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	15(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	16(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	17(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	18(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	19(%r11), %eax
	movslq	%eax, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	20(%r11), %ecx
	movslq	%ecx, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	21(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	22(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	23(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	24(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	25(%r11), %eax
	movslq	%eax, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	26(%r11), %ecx
	movslq	%ecx, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	27(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	28(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	29(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	30(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	31(%r11), %eax
	movslq	%eax, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	32(%r11), %ecx
	movslq	%ecx, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	33(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	34(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	35(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	36(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	37(%r11), %eax
	movslq	%eax, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	38(%r11), %ecx
	movslq	%ecx, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	39(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	40(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	41(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	42(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	43(%r11), %eax
	movslq	%eax, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%esi, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	44(%r11), %ecx
	movslq	%ecx, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%ebx, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	45(%r11), %eax
	movslq	%eax, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%ebx, %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	46(%r11), %ecx
	movslq	%ecx, %rbx
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rbx,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%esi, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	addl	%edi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	51648(%r14,%rdx), %r8d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	leal	47(%r11), %eax
	movslq	%eax, %rdi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rdi,2), %edx
	addl	%r9d, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	shlq	$4, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rax)
	movl	51640(%r14,%rdx), %eax
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rdi)
	addl	%ebx, %eax
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rdi)
	movl	51644(%r14,%rdx), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rbx)
	addl	%esi, %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rsi)
	movl	51648(%r14,%rdx), %r9d
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	leal	48(%r11), %ecx
	movslq	%ecx, %rsi
	movb	%r10b, -16(%rdx)
	movzwl	(%r15,%rsi,2), %edx
	addl	%r8d, %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rdx), %r10d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	addl	%eax, %r10d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51644(%r14,%rdx), %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	addl	%edi, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	51648(%r14,%rdx), %r12d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r13b, %bl
	orb	%bl, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	leal	49(%r11), %eax
	movslq	%eax, %rax
	xorb	%r15b, %r15b
	andb	$1, %r15b
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	orb	%r13b, %bl
	andb	$1, %bl
	movb	-188(%rbp), %cl         # 1-byte Reload
	movb	%cl, -16(%rdi)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	addl	%r9d, %r12d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	shlq	$4, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	51640(%r14,%rax), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	addl	%r10d, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	movl	51644(%r14,%rax), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movl	%edx, %r9d
	shrl	$16, %r9d
	movb	%r13b, -16(%rcx)
	addl	%r8d, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movl	%edi, %r8d
	shrl	$16, %r8d
	movb	%r13b, -16(%rsi)
	movl	51648(%r14,%rax), %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rsi)
	movb	%bl, -16(%rsi)
	addl	%r12d, %eax
	xorb	%r12b, %r12b
	movw	%dx, -52(%rbp)
	movl	%eax, %edx
	shrl	$16, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rsi)
	movb	%bl, -16(%rsi)
	movw	%r9w, -50(%rbp)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rsi)
	movb	%bl, -16(%rsi)
	movw	%di, -48(%rbp)
	movl	$999999999, %edi        # imm = 0x3B9AC9FF
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rsi)
	movb	%bl, -16(%rsi)
	movw	%r8w, -46(%rbp)
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	xorl	%esi, %esi
	movb	%r15b, -16(%rcx)
	movb	%bl, -16(%rcx)
	movw	%ax, -44(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	%bl, -16(%rax)
	movw	%dx, -42(%rbp)
	jmp	.LBB6_85
	.align	16, 0x90
.LBB6_91:                               # %for.inc1162
                                        #   in Loop: Header=BB6_92 Depth=3
	incl	%r8d
.LBB6_92:                               # %for.cond1137
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_71 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_96 Depth 4
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#93:                                # %cont_BB1615
                                        #   in Loop: Header=BB6_92 Depth=3
	cmpl	-144(%rbp), %r8d        # 4-byte Folded Reload
	jg	.LBB6_94
# BB#95:                                # %for.body1140
                                        #   in Loop: Header=BB6_92 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-145(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movslq	%r8d, %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %r9d
	addq	-176(%rbp), %r9         # 8-byte Folded Reload
	xorl	%edx, %edx
	jmp	.LBB6_96
	.align	16, 0x90
.LBB6_98:                               # %for.body1147
                                        #   in Loop: Header=BB6_96 Depth=4
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rax)
	xorb	%bl, %bl
	orb	%r13b, %bl
	andb	$1, %bl
	xorb	%al, %al
	andb	$1, %al
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r13b, -16(%rsi)
	movzbl	(%r9), %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movzwl	-52(%rbp,%rdx,2), %eax
	movb	%bl, -16(%rsi)
	addl	%edi, %eax
	movw	%ax, -52(%rbp,%rdx,2)
	addq	$258, %r9               # imm = 0x102
	incq	%rdx
.LBB6_96:                               # %for.cond1144
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_71 Depth=2
                                        #       Parent Loop BB6_92 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#97:                                # %cont_BB1623
                                        #   in Loop: Header=BB6_96 Depth=4
	cmpl	-120(%rbp), %edx        # 4-byte Folded Reload
	jge	.LBB6_91
	jmp	.LBB6_98
.LBB6_94:                               #   in Loop: Header=BB6_71 Depth=2
	xorl	%esi, %esi
	movl	$-1, -168(%rbp)         # 4-byte Folded Spill
	movl	$999999999, %edi        # imm = 0x3B9AC9FF
	jmp	.LBB6_85
	.align	16, 0x90
.LBB6_90:                               # %if.end1179
                                        #   in Loop: Header=BB6_85 Depth=3
	incq	%rsi
.LBB6_85:                               # %for.cond1166
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#86:                                # %cont_BB1646
                                        #   in Loop: Header=BB6_85 Depth=3
	cmpl	-120(%rbp), %esi        # 4-byte Folded Reload
	jge	.LBB6_99
# BB#87:                                # %for.body1169
                                        #   in Loop: Header=BB6_85 Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	xorb	%al, %al
	andb	$1, %al
	movb	%al, -16(%rcx)
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#88:                                # %cont_BB1654
                                        #   in Loop: Header=BB6_85 Depth=3
	movzwl	-52(%rbp,%rsi,2), %ecx
	cmpl	%edi, %ecx
	jge	.LBB6_90
# BB#89:                                # %if.then1175
                                        #   in Loop: Header=BB6_85 Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movzwl	-52(%rbp,%rsi,2), %edi
	movl	%esi, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB6_90
.LBB6_99:                               # %for.end1182
                                        #   in Loop: Header=BB6_71 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	xorb	%bl, %bl
	andb	$1, %bl
	movb	%bl, -16(%rdx)
	movslq	-168(%rbp), %r8         # 4-byte Folded Reload
	movl	-80(%rbp,%r8,4), %esi
	movslq	-180(%rbp), %rcx        # 4-byte Folded Reload
	movb	%bl, -16(%rdx)
	incl	%esi
	movl	%esi, -80(%rbp,%r8,4)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r12b, %r12b
	movb	%r13b, -16(%rdx)
	movb	%r13b, %al
	movb	$0, -16(%rdx)
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movb	%r8b, 1704(%rdx,%rcx)
	jne	.LBB6_249
# BB#100:                               # %cont_BB1676
                                        #   in Loop: Header=BB6_71 Depth=2
	addl	%edi, -184(%rbp)        # 4-byte Folded Spill
	incl	-180(%rbp)              # 4-byte Folded Spill
	cmpl	$6, -120(%rbp)          # 4-byte Folded Reload
	jne	.LBB6_105
# BB#101:                               # %land.lhs.true1193
                                        #   in Loop: Header=BB6_71 Depth=2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#102:                               # %cont_BB1681
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	-144(%rbp), %ecx        # 4-byte Reload
	subl	%r11d, %ecx
	incl	%ecx
	cmpl	$50, %ecx
	jne	.LBB6_105
# BB#103:                               # %if.then1198
                                        #   in Loop: Header=BB6_71 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-145(%rbp), %r14b       # 1-byte Reload
	andb	$1, %r14b
	movb	%r14b, -16(%rcx)
	movslq	%r11d, %r15
	movq	-136(%rbp), %r13        # 8-byte Reload
	movzwl	(%r13,%r15,2), %esi
	leal	3(%r15), %edi
	leal	2(%r15), %ecx
	imulq	$1032, %r8, %r12        # imm = 0x408
	movq	%rsp, %rbx
	leal	1(%r15), %edx
	addq	-128(%rbp), %r12        # 8-byte Folded Reload
	movslq	%edx, %r11
	movslq	%ecx, %r10
	movslq	%edi, %r8
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rbx)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rsi,4), %ecx
	movb	%al, -16(%rdi)
	leal	4(%r15), %edx
	movslq	%edx, %r9
	incl	%ecx
	movl	%ecx, 45448(%r12,%rsi,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r11,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %edi
	movb	%al, -16(%rsi)
	leal	5(%r15), %edx
	movslq	%edx, %r11
	incl	%edi
	movl	%edi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	6(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	7(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	8(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r11,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	9(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	10(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	11(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	12(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	13(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	14(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	15(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	16(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	17(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	18(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	19(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	20(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	21(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	22(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	23(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	24(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	25(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	26(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	27(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	28(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	29(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	30(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	31(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	32(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	33(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	34(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	35(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	36(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	37(%r15), %edx
	movslq	%edx, %r10
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rdi)
	leal	38(%r15), %edx
	movslq	%edx, %rdi
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	39(%r15), %edx
	movslq	%edx, %r8
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	leal	40(%r15), %edx
	movslq	%edx, %r9
	incl	%ebx
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rbx)
	movl	45448(%r12,%rcx,4), %esi
	movb	%al, -16(%rbx)
	leal	41(%r15), %edx
	movslq	%edx, %r10
	incl	%esi
	movl	%esi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %esi
	movb	%al, -16(%rdi)
	leal	42(%r15), %edx
	movslq	%edx, %r11
	incl	%esi
	movl	%esi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %esi
	movb	%al, -16(%rdi)
	leal	43(%r15), %edx
	movslq	%edx, %r8
	incl	%esi
	movl	%esi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r9,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%r12,%rcx,4), %esi
	movb	%al, -16(%rdi)
	leal	44(%r15), %edx
	movslq	%edx, %rdi
	incl	%esi
	movl	%esi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	incl	%ebx
	leal	49(%r15), %r9d
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r11,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	incl	%ebx
	leal	48(%r15), %r10d
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	45448(%r12,%rcx,4), %ebx
	movb	%al, -16(%rsi)
	incl	%ebx
	leal	47(%r15), %esi
	movl	%ebx, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdi,2), %ecx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rdi)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rbx)
	movl	45448(%r12,%rcx,4), %edi
	movb	%al, -16(%rbx)
	leal	46(%r15), %ebx
	addl	$45, %r15d
	movslq	%r15d, %rdx
	movslq	%ebx, %r11
	movslq	%esi, %rsi
	movslq	%r10d, %r10
	movslq	%r9d, %r8
	incl	%edi
	movl	%edi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rdx,2), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movl	45448(%r12,%rcx,4), %edi
	movb	%al, -16(%rdx)
	incl	%edi
	movl	%edi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r11,2), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movl	45448(%r12,%rcx,4), %edi
	movb	%al, -16(%rdx)
	incl	%edi
	movl	%edi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%rsi,2), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movl	45448(%r12,%rcx,4), %esi
	movb	%al, -16(%rdx)
	incl	%esi
	movl	%esi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r10,2), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movl	45448(%r12,%rcx,4), %esi
	movb	%al, -16(%rdx)
	incl	%esi
	movl	%esi, 45448(%r12,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r13,%r8,2), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movl	45448(%r12,%rcx,4), %esi
	movb	%al, -16(%rdx)
	incl	%esi
	movl	%esi, 45448(%r12,%rcx,4)
	xorb	%r12b, %r12b
	jmp	.LBB6_104
.LBB6_105:                              # %if.else1649
                                        #   in Loop: Header=BB6_71 Depth=2
	movslq	%r11d, %rcx
	jmp	.LBB6_106
	.align	16, 0x90
.LBB6_108:                              # %for.body1653
                                        #   in Loop: Header=BB6_106 Depth=3
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	-145(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	%bl, -16(%rdx)
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %edx
	imulq	$1032, %r8, %rsi        # imm = 0x408
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	addq	-128(%rbp), %rsi        # 8-byte Folded Reload
	movq	%rbx, %rsp
	movb	%al, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rdi)
	movl	45448(%rsi,%rdx,4), %ebx
	movb	%al, -16(%rdi)
	incl	%ebx
	movl	%ebx, 45448(%rsi,%rdx,4)
	incq	%rcx
.LBB6_106:                              # %for.cond1650
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#107:                               # %cont_BB2335
                                        #   in Loop: Header=BB6_106 Depth=3
	cmpl	-144(%rbp), %ecx        # 4-byte Folded Reload
	jg	.LBB6_104
	jmp	.LBB6_108
.LBB6_109:                              # %while.end1667
                                        #   in Loop: Header=BB6_55 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#110:                               # %cont_BB2355
                                        #   in Loop: Header=BB6_55 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	656(%rax), %eax
	cmpl	$3, %eax
	jl	.LBB6_116
# BB#111:                               # %if.then1671
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movq	stderr(%rip), %rdi
	movl	-204(%rbp), %eax        # 4-byte Reload
	leal	1(%rax), %edx
	movl	$.L.str4, %esi
	xorb	%al, %al
	callq	fprintf
	xorl	%ebx, %ebx
	jmp	.LBB6_112
	.align	16, 0x90
.LBB6_114:                              # %for.body1678
                                        #   in Loop: Header=BB6_112 Depth=2
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movl	-80(%rbp,%rbx,4), %edx
	movl	$.L.str5, %esi
	xorb	%al, %al
	callq	fprintf
	incq	%rbx
.LBB6_112:                              # %for.cond1675
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#113:                               # %cont_BB2362
                                        #   in Loop: Header=BB6_112 Depth=2
	cmpl	-120(%rbp), %ebx        # 4-byte Folded Reload
	jl	.LBB6_114
# BB#115:                               # %for.end1684
                                        #   in Loop: Header=BB6_55 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str6, %esi
	xorb	%al, %al
	callq	fprintf
.LBB6_116:                              # %for.end1684
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	$-1, %ebx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	jmp	.LBB6_117
	.align	16, 0x90
.LBB6_119:                              # %for.body1690
                                        #   in Loop: Header=BB6_117 Depth=2
	leaq	258(%rdi), %r15
	leaq	1032(%rsi), %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	-160(%rbp), %edx        # 4-byte Reload
	movl	$17, %ecx
	callq	BZ2_hbMakeCodeLengths
	movq	%r15, %rdi
	movq	%r14, %rsi
.LBB6_117:                              # %for.cond1687
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#118:                               # %cont_BB2373
                                        #   in Loop: Header=BB6_117 Depth=2
	incl	%ebx
	cmpl	-120(%rbp), %ebx        # 4-byte Folded Reload
	jge	.LBB6_120
	jmp	.LBB6_119
.LBB6_121:                              # %for.end1704
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#122:                               # %cont_BB2386
	cmpl	$8, -120(%rbp)          # 4-byte Folded Reload
	jl	.LBB6_124
# BB#123:                               # %if.then1707
	movl	$3002, %edi             # imm = 0xBBA
	callq	BZ2_bz__AssertH__fail
.LBB6_124:                              # %if.end1708
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#125:                               # %cont_BB2389
	cmpl	$32767, -180(%rbp)      # 4-byte Folded Reload
                                        # imm = 0x7FFF
	jg	.LBB6_128
# BB#126:                               # %land.lhs.true1711
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#127:                               # %cont_BB2392
	xorl	%eax, %eax
	cmpl	$18003, -180(%rbp)      # 4-byte Folded Reload
                                        # imm = 0x4653
	jl	.LBB6_129
.LBB6_128:                              # %if.then1714
	movl	$3003, %edi             # imm = 0xBBB
	callq	BZ2_bz__AssertH__fail
	xorl	%eax, %eax
	jmp	.LBB6_129
	.align	16, 0x90
.LBB6_131:                              # %for.body1719
                                        #   in Loop: Header=BB6_129 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	xorb	%dl, %dl
	andb	$1, %dl
	movb	%dl, -16(%rcx)
	movb	$0, -16(%rcx)
	movb	%al, -86(%rbp,%rax)
	incq	%rax
.LBB6_129:                              # %for.cond1716
                                        # =>This Inner Loop Header: Depth=1
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB6_249
# BB#130:                               # %cont_BB2396
                                        #   in Loop: Header=BB6_129 Depth=1
	cmpl	-120(%rbp), %eax        # 4-byte Folded Reload
	jl	.LBB6_131
# BB#132:                               # %for.end1725
	xorl	%r9d, %r9d
	xorb	%r8b, %r8b
	xorb	%r11b, %r11b
	andb	$1, %r11b
	jmp	.LBB6_133
	.align	16, 0x90
.LBB6_139:                              # %while.end1746
                                        #   in Loop: Header=BB6_133 Depth=1
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r11b, -16(%rdi)
	andb	$1, %cl
	movb	%cl, -16(%rdi)
	movb	%al, -86(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r14b, %r13b
	movb	$0, -16(%rax)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movb	%sil, 19706(%rax,%r9)
	incl	%r9d
.LBB6_133:                              # %for.cond1726
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_136 Depth 2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#134:                               # %cont_BB2404
                                        #   in Loop: Header=BB6_133 Depth=1
	cmpl	-180(%rbp), %r9d        # 4-byte Folded Reload
	jge	.LBB6_140
# BB#135:                               # %for.body1729
                                        #   in Loop: Header=BB6_133 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movslq	%r9d, %r9
	xorl	%esi, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	%r13b, %r14b
	movq	-128(%rbp), %rax        # 8-byte Reload
	movzbl	1704(%rax,%r9), %r10d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r11b, -16(%rax)
	movb	-16(%rax), %cl
	movb	-86(%rbp), %al
	jmp	.LBB6_136
	.align	16, 0x90
.LBB6_138:                              # %while.body1740
                                        #   in Loop: Header=BB6_136 Depth=2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r11b, -16(%rdi)
	movb	-85(%rbp,%rsi), %bl
	andb	$1, %cl
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%r11b, -16(%rdi)
	movb	%cl, -16(%rdi)
	movb	%al, -85(%rbp,%rsi)
	leaq	1(%rsi), %rsi
	xorb	%cl, %cl
	movb	%bl, %al
.LBB6_136:                              # %while.cond1735
                                        #   Parent Loop BB6_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r8b, %r8b
	jne	.LBB6_249
# BB#137:                               # %cont_BB2420
                                        #   in Loop: Header=BB6_136 Depth=2
	movzbl	%al, %edi
	cmpl	%edi, %r10d
	je	.LBB6_139
	jmp	.LBB6_138
.LBB6_140:                              # %for.end1753
	xorl	%r15d, %r15d
	jmp	.LBB6_141
	.align	16, 0x90
.LBB6_159:                              # %if.end1804
                                        #   in Loop: Header=BB6_141 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movslq	%r15d, %rax
	imulq	$258, %rax, %rcx        # imm = 0x102
	imulq	$1032, %rax, %rax       # imm = 0x408
	movq	-128(%rbp), %rdx        # 8-byte Reload
	leaq	39256(%rdx,%rax), %rdi
	leaq	37708(%rdx,%rcx), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movl	-160(%rbp), %r8d        # 4-byte Reload
	callq	BZ2_hbAssignCodes
	addq	$258, -176(%rbp)        # 8-byte Folded Spill
                                        # imm = 0x102
	incl	%r15d
.LBB6_141:                              # %for.end1753
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_144 Depth 2
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB6_249
# BB#142:                               # %cont_BB2437
                                        #   in Loop: Header=BB6_141 Depth=1
	cmpl	-120(%rbp), %r15d       # 4-byte Folded Reload
	jge	.LBB6_160
# BB#143:                               #   in Loop: Header=BB6_141 Depth=1
	xorl	%r12d, %r12d
	movl	$32, %r14d
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	%r12d, %edi
	jmp	.LBB6_144
	.align	16, 0x90
.LBB6_152:                              # %if.end1793
                                        #   in Loop: Header=BB6_144 Depth=2
	movb	%bl, %r13b
	incq	%rax
	incl	%edi
	xorb	%cl, %cl
.LBB6_144:                              # %for.cond1758
                                        #   Parent Loop BB6_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%cl, %cl
	jne	.LBB6_249
# BB#145:                               # %cont_BB2443
                                        #   in Loop: Header=BB6_144 Depth=2
	cmpl	-160(%rbp), %edi        # 4-byte Folded Reload
	jge	.LBB6_153
# BB#146:                               # %for.body1761
                                        #   in Loop: Header=BB6_144 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%cl, %cl
	movb	%r13b, -16(%rdx)
	jne	.LBB6_249
# BB#147:                               # %cont_BB2454
                                        #   in Loop: Header=BB6_144 Depth=2
	movzbl	(%rax), %edx
	cmpl	%r12d, %edx
	movb	%r13b, %bl
	jle	.LBB6_149
# BB#148:                               # %if.then1770
                                        #   in Loop: Header=BB6_144 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	(%rax), %r12d
.LBB6_149:                              # %if.end1777
                                        #   in Loop: Header=BB6_144 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%cl, %cl
	movb	%bl, -16(%rdx)
	jne	.LBB6_249
# BB#150:                               # %cont_BB2474
                                        #   in Loop: Header=BB6_144 Depth=2
	movzbl	(%rax), %edx
	cmpl	%r14d, %edx
	jge	.LBB6_152
# BB#151:                               # %if.then1786
                                        #   in Loop: Header=BB6_144 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	(%rax), %r14d
	jmp	.LBB6_152
.LBB6_153:                              # %for.end1796
                                        #   in Loop: Header=BB6_141 Depth=1
	testb	%cl, %cl
	jne	.LBB6_249
# BB#154:                               # %cont_BB2487
                                        #   in Loop: Header=BB6_141 Depth=1
	cmpl	$18, %r12d
	jl	.LBB6_156
# BB#155:                               # %if.then1799
                                        #   in Loop: Header=BB6_141 Depth=1
	movl	$3004, %edi             # imm = 0xBBC
	callq	BZ2_bz__AssertH__fail
.LBB6_156:                              # %if.end1800
                                        #   in Loop: Header=BB6_141 Depth=1
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#157:                               # %cont_BB2490
                                        #   in Loop: Header=BB6_141 Depth=1
	testl	%r14d, %r14d
	jg	.LBB6_159
# BB#158:                               # %if.then1803
                                        #   in Loop: Header=BB6_141 Depth=1
	movl	$3005, %edi             # imm = 0xBBD
	callq	BZ2_bz__AssertH__fail
	jmp	.LBB6_159
.LBB6_160:                              # %for.end1814
	movq	-128(%rbp), %r8         # 8-byte Reload
	subq	$-128, %r8
	xorl	%r9d, %r9d
	xorb	%dl, %dl
	andb	$1, -192(%rbp)          # 1-byte Folded Spill
	jmp	.LBB6_161
	.align	16, 0x90
.LBB6_170:                              # %for.inc1837
                                        #   in Loop: Header=BB6_161 Depth=1
	addq	$16, %r8
	incl	%r9d
.LBB6_161:                              # %for.cond1816
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_164 Depth 2
	testb	%dl, %dl
	jne	.LBB6_249
# BB#162:                               # %cont_BB2503
                                        #   in Loop: Header=BB6_161 Depth=1
	movq	%rsp, %rax
	cmpl	$15, %r9d
	jg	.LBB6_171
# BB#163:                               # %for.body1819
                                        #   in Loop: Header=BB6_161 Depth=1
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	-192(%rbp), %cl         # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movslq	%r9d, %rsi
	xorl	%edi, %edi
	movb	$0, -112(%rbp,%rsi)
	movq	%r8, %rax
	jmp	.LBB6_164
	.align	16, 0x90
.LBB6_169:                              # %for.inc1834
                                        #   in Loop: Header=BB6_164 Depth=2
	incq	%rax
	incl	%edi
.LBB6_164:                              # %for.cond1822
                                        #   Parent Loop BB6_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dl, %dl
	jne	.LBB6_249
# BB#165:                               # %cont_BB2509
                                        #   in Loop: Header=BB6_164 Depth=2
	cmpl	$15, %edi
	jg	.LBB6_170
# BB#166:                               # %for.body1825
                                        #   in Loop: Header=BB6_164 Depth=2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rbx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	testb	%dl, %dl
	movb	%r13b, -16(%rbx)
	jne	.LBB6_249
# BB#167:                               # %cont_BB2519
                                        #   in Loop: Header=BB6_164 Depth=2
	movb	(%rax), %bl
	testb	%bl, %bl
	je	.LBB6_169
# BB#168:                               # %if.then1830
                                        #   in Loop: Header=BB6_164 Depth=2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	-192(%rbp), %cl         # 1-byte Reload
	movb	%cl, -16(%rbx)
	movb	$0, -16(%rbx)
	movb	$1, -112(%rbp,%rsi)
	jmp	.LBB6_169
.LBB6_171:                              # %for.end1839
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	116(%rax), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	xorl	%ebx, %ebx
	xorb	%r15b, %r15b
	jmp	.LBB6_172
	.align	16, 0x90
.LBB6_177:                              # %if.then1847
                                        #   in Loop: Header=BB6_172 Depth=1
	callq	bsW
	incq	%rbx
.LBB6_172:                              # %for.cond1840
                                        # =>This Inner Loop Header: Depth=1
	testb	%r15b, %r15b
	jne	.LBB6_249
# BB#173:                               # %cont_BB2530
                                        #   in Loop: Header=BB6_172 Depth=1
	cmpl	$15, %ebx
	jg	.LBB6_179
# BB#174:                               # %for.body1843
                                        #   in Loop: Header=BB6_172 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-192(%rbp), %cl         # 1-byte Reload
	movb	%cl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB6_249
# BB#175:                               # %cont_BB2537
                                        #   in Loop: Header=BB6_172 Depth=1
	movb	-112(%rbp,%rbx), %al
	testb	%al, %al
	je	.LBB6_178
# BB#176:                               # %if.then1847
                                        #   in Loop: Header=BB6_172 Depth=1
	movb	%r13b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	$1, %esi
	movl	$1, %edx
	jmp	.LBB6_177
.LBB6_178:                              # %if.else1848
                                        #   in Loop: Header=BB6_172 Depth=1
	movb	%r13b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	.LBB6_177
.LBB6_179:                              # %for.end1852
	movq	-128(%rbp), %rax        # 8-byte Reload
	subq	$-128, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorb	%bl, %bl
	jmp	.LBB6_180
	.align	16, 0x90
.LBB6_191:                              # %for.inc1878
                                        #   in Loop: Header=BB6_180 Depth=1
	addq	$16, -144(%rbp)         # 8-byte Folded Spill
	incl	%r14d
.LBB6_180:                              # %for.cond1853
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_184 Depth 2
	testb	%bl, %bl
	jne	.LBB6_249
# BB#181:                               # %cont_BB2543
                                        #   in Loop: Header=BB6_180 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	cmpl	$15, %r14d
	jg	.LBB6_192
# BB#182:                               # %for.body1856
                                        #   in Loop: Header=BB6_180 Depth=1
	movb	-192(%rbp), %cl         # 1-byte Reload
	movb	%cl, -16(%rax)
	testb	%bl, %bl
	jne	.LBB6_249
# BB#183:                               # %cont_BB2550
                                        #   in Loop: Header=BB6_180 Depth=1
	movslq	%r14d, %rax
	movb	-112(%rbp,%rax), %al
	xorl	%r15d, %r15d
	testb	%al, %al
	movq	-144(%rbp), %r12        # 8-byte Reload
	je	.LBB6_191
	jmp	.LBB6_184
	.align	16, 0x90
.LBB6_190:                              # %if.else1872
                                        #   in Loop: Header=BB6_184 Depth=2
	callq	bsW
	incq	%r12
	incl	%r15d
.LBB6_184:                              # %for.cond1861
                                        #   Parent Loop BB6_180 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%bl, %bl
	jne	.LBB6_249
# BB#185:                               # %cont_BB2554
                                        #   in Loop: Header=BB6_184 Depth=2
	cmpl	$15, %r15d
	jg	.LBB6_191
# BB#186:                               # %for.body1864
                                        #   in Loop: Header=BB6_184 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%bl, %bl
	movb	%r13b, -16(%rax)
	jne	.LBB6_249
# BB#187:                               # %cont_BB2564
                                        #   in Loop: Header=BB6_184 Depth=2
	movb	(%r12), %al
	testb	%al, %al
	je	.LBB6_189
# BB#188:                               # %if.then1871
                                        #   in Loop: Header=BB6_184 Depth=2
	movb	%r13b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	$1, %esi
	movl	$1, %edx
	jmp	.LBB6_190
.LBB6_189:                              # %if.else1872
                                        #   in Loop: Header=BB6_184 Depth=2
	movb	%r13b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	.LBB6_190
.LBB6_192:                              # %for.end1880
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#193:                               # %cont_BB2574
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	656(%rdx), %eax
	cmpl	$3, %eax
	jl	.LBB6_195
# BB#194:                               # %if.then1884
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rdx, %rbx
	movl	116(%rbx), %edx
	subl	-168(%rbp), %edx        # 4-byte Folded Reload
	movl	$.L.str7, %esi
	xorb	%al, %al
	callq	fprintf
	movq	%rbx, %rdx
.LBB6_195:                              # %if.end1888
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	116(%rdx), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movb	%r13b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	%rdx, %rdi
	movl	$3, %esi
	movq	%rdx, %rbx
	movl	-120(%rbp), %edx        # 4-byte Reload
	callq	bsW
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, %r15b
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	%rbx, %rdi
	movq	%rbx, %r14
	movl	$15, %esi
	movl	-180(%rbp), %edx        # 4-byte Reload
	callq	bsW
	xorl	%r13d, %r13d
	xorb	%r12b, %r12b
	jmp	.LBB6_196
	.align	16, 0x90
.LBB6_201:                              # %for.end1904
                                        #   in Loop: Header=BB6_196 Depth=1
	movb	%r15b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	%rcx, %rdi
	movq	%rcx, %r14
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
	incl	%r13d
.LBB6_196:                              # %for.cond1890
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_198 Depth 2
	testb	%r12b, %r12b
	jne	.LBB6_249
# BB#197:                               # %cont_BB2588
                                        #   in Loop: Header=BB6_196 Depth=1
	movl	$-1, %ebx
	cmpl	-180(%rbp), %r13d       # 4-byte Folded Reload
	jge	.LBB6_202
	jmp	.LBB6_198
	.align	16, 0x90
.LBB6_200:                              # %for.body1901
                                        #   in Loop: Header=BB6_198 Depth=2
	movb	%r15b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	%rcx, %rdi
	movq	%rcx, %r14
	movl	$1, %esi
	movl	$1, %edx
	callq	bsW
.LBB6_198:                              # %for.cond1894
                                        #   Parent Loop BB6_196 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r12b, %r12b
	movb	%r15b, -16(%rax)
	jne	.LBB6_249
# BB#199:                               # %cont_BB2598
                                        #   in Loop: Header=BB6_198 Depth=2
	movslq	%r13d, %rax
	movq	%r14, %rcx
	movzbl	19706(%rcx,%rax), %eax
	incl	%ebx
	cmpl	%eax, %ebx
	jge	.LBB6_201
	jmp	.LBB6_200
.LBB6_202:                              # %for.end1907
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#203:                               # %cont_BB2608
	movq	%r14, %rdx
	movl	656(%rdx), %eax
	cmpl	$3, %eax
	movb	%r15b, %r14b
	jl	.LBB6_205
# BB#204:                               # %if.then1911
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rdx, %rbx
	movl	116(%rbx), %edx
	subl	-144(%rbp), %edx        # 4-byte Folded Reload
	movl	$.L.str8, %esi
	xorb	%al, %al
	callq	fprintf
	movq	%rbx, %rdx
.LBB6_205:                              # %if.end1915
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r14b, %bl
	movl	116(%rdx), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	xorl	%eax, %eax
	jmp	.LBB6_206
	.align	16, 0x90
.LBB6_219:                              # %for.inc1958
                                        #   in Loop: Header=BB6_206 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	incl	%eax
.LBB6_206:                              # %for.cond1917
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_209 Depth 2
                                        #       Child Loop BB6_215 Depth 3
                                        #       Child Loop BB6_212 Depth 3
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB6_249
# BB#207:                               # %cont_BB2620
                                        #   in Loop: Header=BB6_206 Depth=1
	movl	%eax, %edx
	cmpl	-120(%rbp), %edx        # 4-byte Folded Reload
	jge	.LBB6_220
# BB#208:                               # %for.body1920
                                        #   in Loop: Header=BB6_206 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movslq	%edx, %rax
	movl	%edx, -176(%rbp)        # 4-byte Spill
	imulq	$258, %rax, %rdx        # imm = 0x102
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movzbl	37708(%rdi,%rdx), %r14d
	movb	-16(%rax), %al
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	%al, param_taint12(%rip)
	movl	$5, %esi
	movl	%r14d, %edx
	callq	bsW
	movl	$0, -144(%rbp)          # 4-byte Folded Spill
	jmp	.LBB6_209
	.align	16, 0x90
.LBB6_218:                              # %while.end1954
                                        #   in Loop: Header=BB6_209 Depth=2
	movb	%r12b, %bl
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
	decl	%r14d
	incl	-144(%rbp)              # 4-byte Folded Spill
.LBB6_209:                              # %for.cond1927
                                        #   Parent Loop BB6_206 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_215 Depth 3
                                        #       Child Loop BB6_212 Depth 3
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#210:                               # %cont_BB2633
                                        #   in Loop: Header=BB6_209 Depth=2
	movl	-144(%rbp), %eax        # 4-byte Reload
	cmpl	-160(%rbp), %eax        # 4-byte Folded Reload
	jge	.LBB6_219
# BB#211:                               # %for.body1930
                                        #   in Loop: Header=BB6_209 Depth=2
	leal	1(%r14), %r12d
	jmp	.LBB6_212
	.align	16, 0x90
.LBB6_251:                              # %while.body1940
                                        #   in Loop: Header=BB6_212 Depth=3
	movb	%bl, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movl	$2, %esi
	movl	$2, %edx
	callq	bsW
	incl	%r12d
	incl	%r14d
.LBB6_212:                              # %while.cond1931
                                        #   Parent Loop BB6_206 Depth=1
                                        #     Parent Loop BB6_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	testb	%cl, %cl
	movb	%bl, -16(%rax)
	jne	.LBB6_249
# BB#213:                               # %cont_BB2645
                                        #   in Loop: Header=BB6_212 Depth=3
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rax        # 8-byte Reload
	leaq	(%rdi,%rax), %r13
	movslq	-144(%rbp), %r15        # 4-byte Folded Reload
	movzbl	37708(%r15,%r13), %eax
	cmpl	%eax, %r14d
	jl	.LBB6_251
# BB#214:                               #   in Loop: Header=BB6_209 Depth=2
	movl	%r12d, %r14d
	movb	%bl, %r12b
	jmp	.LBB6_215
	.align	16, 0x90
.LBB6_217:                              # %while.body1952
                                        #   in Loop: Header=BB6_215 Depth=3
	movb	%r12b, param_taint10(%rip)
	movb	$0, param_taint11(%rip)
	movb	$0, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	$2, %esi
	movl	$3, %edx
	callq	bsW
	movl	%ebx, %r14d
.LBB6_215:                              # %while.cond1943
                                        #   Parent Loop BB6_206 Depth=1
                                        #     Parent Loop BB6_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	testb	%cl, %cl
	movb	%r12b, -16(%rax)
	jne	.LBB6_249
# BB#216:                               # %cont_BB2659
                                        #   in Loop: Header=BB6_215 Depth=3
	movzbl	37708(%r15,%r13), %eax
	leal	-1(%r14), %ebx
	cmpl	%eax, %ebx
	jle	.LBB6_218
	jmp	.LBB6_217
.LBB6_220:                              # %for.end1960
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#221:                               # %cont_BB2670
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	656(%rdx), %eax
	cmpl	$3, %eax
	movb	%bl, %r12b
	jl	.LBB6_223
# BB#222:                               # %if.then1964
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rdx, %rbx
	movl	116(%rbx), %edx
	subl	-184(%rbp), %edx        # 4-byte Folded Reload
	movl	$.L.str9, %esi
	xorb	%al, %al
	callq	fprintf
	movq	%rbx, %rdx
.LBB6_223:                              # %if.end1968
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	116(%rdx), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movq	%rdx, %rbx
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB6_224
	.align	16, 0x90
.LBB6_237:                              # %if.end2448
                                        #   in Loop: Header=BB6_224 Depth=1
	incl	%r13d
	movl	-184(%rbp), %eax        # 4-byte Reload
	incl	%eax
	movl	%eax, %r14d
.LBB6_224:                              # %while.body1971
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_239 Depth 2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, %r15b
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#225:                               # %cont_BB2686
                                        #   in Loop: Header=BB6_224 Depth=1
	movl	668(%rbx), %eax
	cmpl	%eax, %r14d
	jge	.LBB6_242
# BB#226:                               # %if.end1976
                                        #   in Loop: Header=BB6_224 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#227:                               # %cont_BB2694
                                        #   in Loop: Header=BB6_224 Depth=1
	leal	49(%r14), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	668(%rbx), %eax
	cmpl	%eax, %ecx
	jl	.LBB6_229
# BB#228:                               # %if.then1982
                                        #   in Loop: Header=BB6_224 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movl	668(%rbx), %eax
	decl	%eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB6_229:                              # %if.end1985
                                        #   in Loop: Header=BB6_224 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	testb	%cl, %cl
	movb	%r15b, -16(%rax)
	movb	%r15b, %r12b
	jne	.LBB6_249
# BB#230:                               # %cont_BB2708
                                        #   in Loop: Header=BB6_224 Depth=1
	movslq	%r13d, %r15
	movzbl	1704(%rbx,%r15), %eax
	cmpl	-120(%rbp), %eax        # 4-byte Folded Reload
	jl	.LBB6_232
# BB#231:                               # %if.then1992
                                        #   in Loop: Header=BB6_224 Depth=1
	movl	$3006, %edi             # imm = 0xBBE
	callq	BZ2_bz__AssertH__fail
.LBB6_232:                              # %if.end1993
                                        #   in Loop: Header=BB6_224 Depth=1
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#233:                               # %cont_BB2711
                                        #   in Loop: Header=BB6_224 Depth=1
	cmpl	$6, -120(%rbp)          # 4-byte Folded Reload
	jne	.LBB6_238
# BB#234:                               # %land.lhs.true1996
                                        #   in Loop: Header=BB6_224 Depth=1
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#235:                               # %cont_BB2716
                                        #   in Loop: Header=BB6_224 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	subl	%r14d, %eax
	incl	%eax
	cmpl	$50, %eax
	jne	.LBB6_238
# BB#236:                               # %if.then2001
                                        #   in Loop: Header=BB6_224 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	%r13d, -188(%rbp)       # 4-byte Spill
	movb	%r12b, %r13b
	movb	%r13b, -16(%rax)
	movslq	%r14d, %r12
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movb	-145(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -176(%rbp)         # 1-byte Spill
	movb	%al, %r8b
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movzbl	1704(%rbx,%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	imulq	$258, %rax, %rcx        # imm = 0x102
	movq	%rsp, %rax
	addq	%rbx, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movzbl	1704(%rdi,%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	imulq	$1032, %rax, %rcx       # imm = 0x408
	movq	%rsp, %rax
	addq	%rdi, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rbx
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%r12,2), %eax
	movq	%rcx, %r15
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rsi), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	callq	bsW
	leal	1(%r12), %eax
	movq	%r12, %r14
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %bl         # 1-byte Reload
	movb	%bl, -16(%rcx)
	movzwl	(%r15,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r12        # 8-byte Reload
	movl	39256(%r12,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	bsW
	leal	2(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%bl, %r14b
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r12,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %r12        # 8-byte Reload
	leal	3(%r12), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movq	-136(%rbp), %r14        # 8-byte Reload
	movzwl	(%r14,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	leal	4(%r12), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %bl         # 1-byte Reload
	movb	%bl, -16(%rcx)
	movzwl	(%r14,%rax,2), %eax
	movq	%r14, %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r14        # 8-byte Reload
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	5(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %r12        # 8-byte Reload
	leal	6(%r12), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %r14        # 8-byte Reload
	movzwl	(%r14,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	leal	7(%r12), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	%r14, %r12
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r14        # 8-byte Reload
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	8(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%r15, %rbx
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	9(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r12b       # 1-byte Reload
	movb	%r12b, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %rbx        # 8-byte Reload
	leal	10(%rbx), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	leal	11(%rbx), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r15b       # 1-byte Reload
	movb	%r15b, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	12(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %r14        # 8-byte Reload
	leal	13(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %bl         # 1-byte Reload
	movb	%bl, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r12        # 8-byte Reload
	movl	39256(%r12,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	leal	14(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r12,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	leal	15(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %dl         # 1-byte Reload
	movb	%dl, -16(%rcx)
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r12,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	bsW
	leal	16(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r14b       # 1-byte Reload
	movb	%r14b, -16(%rcx)
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %r15        # 8-byte Reload
	leal	17(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	callq	bsW
	leal	18(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %bl         # 1-byte Reload
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	leal	19(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r12        # 8-byte Reload
	movl	39256(%r12,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	movq	-144(%rbp), %r14        # 8-byte Reload
	leal	20(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r12,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	movq	%r14, %r15
	leal	21(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r14        # 8-byte Reload
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	leal	22(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %dl         # 1-byte Reload
	movb	%dl, -16(%rcx)
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%r12, %r15
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%r14, %rbx
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	23(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r14b       # 1-byte Reload
	movb	%r14b, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r12, %rdi
	callq	bsW
	movq	-144(%rbp), %rbx        # 8-byte Reload
	leal	24(%rbx), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movzwl	(%r15,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r14        # 8-byte Reload
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r12, %rdi
	callq	bsW
	leal	25(%rbx), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r12b       # 1-byte Reload
	movb	%r12b, -16(%rcx)
	movzwl	(%r15,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	26(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzwl	(%r15,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	callq	bsW
	movq	-144(%rbp), %r15        # 8-byte Reload
	leal	27(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	leal	28(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r14b       # 1-byte Reload
	movb	%r14b, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	leal	29(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%r12, %r15
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	30(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r12b       # 1-byte Reload
	movb	%r12b, -16(%rcx)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r15        # 8-byte Reload
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	movq	-144(%rbp), %r14        # 8-byte Reload
	leal	31(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzwl	(%rbx,%rax,2), %eax
	movq	%rbx, %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	bsW
	leal	32(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %dl         # 1-byte Reload
	movb	%dl, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%rbx, %rdi
	movq	%rbx, %r15
	callq	bsW
	leal	33(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r12b       # 1-byte Reload
	movb	%r12b, -16(%rcx)
	movq	-136(%rbp), %r14        # 8-byte Reload
	movzwl	(%r14,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	34(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzwl	(%r14,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rbx), %esi
	movq	%rbx, %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r15        # 8-byte Reload
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	bsW
	movq	-144(%rbp), %r14        # 8-byte Reload
	leal	35(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %dl         # 1-byte Reload
	movb	%dl, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%rbx, %rdi
	movq	%rbx, %r15
	callq	bsW
	leal	36(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %bl         # 1-byte Reload
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %r14        # 8-byte Reload
	movzwl	(%r14,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	37(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzwl	(%r14,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r15        # 8-byte Reload
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bsW
	movq	-144(%rbp), %r12        # 8-byte Reload
	leal	38(%r12), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzwl	(%r14,%rax,2), %eax
	movq	%r14, %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	bsW
	leal	39(%r12), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r14b       # 1-byte Reload
	movb	%r14b, -16(%rcx)
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r15, %rdi
	callq	bsW
	movq	-144(%rbp), %r15        # 8-byte Reload
	leal	40(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%rbx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	bsW
	leal	41(%r15), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%rbx, %rdi
	callq	bsW
	movq	-144(%rbp), %rbx        # 8-byte Reload
	leal	42(%rbx), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	39256(%rcx,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	callq	bsW
	leal	43(%rbx), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %dl         # 1-byte Reload
	movb	%dl, -16(%rcx)
	movzwl	(%r12,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r15), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r15        # 8-byte Reload
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	leal	44(%rbx), %eax
	movq	%rbx, %r12
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %bl         # 1-byte Reload
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movzbl	37708(%rax,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	leal	45(%r12), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	leal	46(%rax), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %dl         # 1-byte Reload
	movb	%dl, -16(%rcx)
	movzwl	(%rbx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	%r12, %rbx
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%r14, %rdi
	callq	bsW
	movq	-144(%rbp), %r14        # 8-byte Reload
	leal	47(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %r12b       # 1-byte Reload
	movb	%r12b, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%rbx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r15,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	bsW
	leal	48(%r14), %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movzwl	(%r15,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	-168(%rbp), %r14        # 8-byte Reload
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movq	%rbx, %rdi
	callq	bsW
	movq	-144(%rbp), %rax        # 8-byte Reload
	addl	$49, %eax
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-176(%rbp), %dl         # 1-byte Reload
	movb	%dl, -16(%rcx)
	movzwl	(%r15,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movzbl	37708(%rax,%r12), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	39256(%r14,%rax,4), %edx
	movb	%r13b, param_taint10(%rip)
	movb	%r13b, param_taint11(%rip)
	movb	%r13b, param_taint12(%rip)
	movb	%r13b, %r12b
	movl	-188(%rbp), %r13d       # 4-byte Reload
	movq	%rbx, %rax
	movq	%rax, %rdi
	callq	bsW
	jmp	.LBB6_237
.LBB6_238:                              # %if.else2419
                                        #   in Loop: Header=BB6_224 Depth=1
	movslq	%r14d, %r14
	jmp	.LBB6_239
	.align	16, 0x90
.LBB6_241:                              # %for.body2423
                                        #   in Loop: Header=BB6_239 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	-145(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rcx)
	movq	-136(%rbp), %r8         # 8-byte Reload
	movzwl	(%r8,%r14,2), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movzbl	1704(%rbx,%r15), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	imulq	$258, %rdx, %rdx        # imm = 0x102
	movq	%rsp, %rsi
	addq	%rbx, %rdx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movzbl	37708(%rcx,%rdx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movzwl	(%r8,%r14,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	1704(%rbx,%r15), %ecx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rdx)
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	movq	%rsp, %rdx
	addq	%rbx, %rcx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rdx)
	movl	39256(%rcx,%rax,4), %edx
	movb	%r12b, param_taint10(%rip)
	movb	%r12b, param_taint11(%rip)
	movb	%r12b, param_taint12(%rip)
	movq	%rbx, %rdi
	callq	bsW
	incq	%r14
.LBB6_239:                              # %for.cond2420
                                        #   Parent Loop BB6_224 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#240:                               # %cont_BB3488
                                        #   in Loop: Header=BB6_239 Depth=2
	cmpl	-184(%rbp), %r14d       # 4-byte Folded Reload
	jg	.LBB6_237
	jmp	.LBB6_241
.LBB6_242:                              # %while.end2451
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_249
# BB#243:                               # %cont_BB3528
	cmpl	-180(%rbp), %r13d       # 4-byte Folded Reload
	je	.LBB6_245
# BB#244:                               # %if.then2454
	movl	$3007, %edi             # imm = 0xBBF
	callq	BZ2_bz__AssertH__fail
.LBB6_245:                              # %if.end2455
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	je	.LBB6_246
	.align	16, 0x90
.LBB6_249:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str28, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB6_249
.LBB6_246:                              # %cont_BB3534
	movl	656(%rbx), %eax
	cmpl	$3, %eax
	jl	.LBB6_248
# BB#247:                               # %if.then2459
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movl	116(%rbx), %edx
	subl	-192(%rbp), %edx        # 4-byte Folded Reload
	movl	$.L.str10, %esi
	xorb	%al, %al
	callq	fprintf
.LBB6_248:                              # %if.end2463
	movb	$0, return_taint6(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp63:
	.size	sendMTFValues, .Ltmp63-sendMTFValues
	.cfi_endproc

	.align	16, 0x90
	.type	bsFinishWrite,@function
bsFinishWrite:                          # @bsFinishWrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	movb	param_taint20(%rip), %al
	andb	$1, %al
	xorb	%r8b, %r8b
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_3:                                # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movb	643(%rdi), %r9b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movslq	116(%rdi), %r10
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movq	80(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movb	%al, -16(%rdx)
	movb	%r9b, (%rcx,%r10)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movl	116(%rdi), %edx
	movb	%al, -16(%rcx)
	incl	%edx
	movl	%edx, 116(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movl	640(%rdi), %edx
	movb	%al, -16(%rcx)
	shll	$8, %edx
	movl	%edx, 640(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movl	644(%rdi), %edx
	movb	%al, -16(%rcx)
	addl	$-8, %edx
	movl	%edx, 644(%rdi)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	testb	%r8b, %r8b
	jne	.LBB7_5
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	644(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB7_3
# BB#4:                                 # %while.end
	movb	$0, return_taint7(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
	.align	16, 0x90
.LBB7_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str29, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB7_5
.Ltmp69:
	.size	bsFinishWrite, .Ltmp69-bsFinishWrite
	.cfi_endproc

	.align	16, 0x90
	.type	makeMaps_e,@function
makeMaps_e:                             # @makeMaps_e
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	param_taint21(%rip), %al
	movb	%al, -1(%rbp)
	movb	$0, -1(%rbp)
	movl	$0, 124(%rdi)
	xorl	%ecx, %ecx
	xorb	%r8b, %r8b
	jmp	.LBB8_1
	.align	16, 0x90
.LBB8_6:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	incq	%rcx
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB8_8
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$255, %ecx
	jg	.LBB8_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%al, -16(%rdx)
	jne	.LBB8_8
# BB#4:                                 # %cont_BB5
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	128(%rdi,%rcx), %dl
	testb	%dl, %dl
	je	.LBB8_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movb	124(%rdi), %r9b
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movb	%al, -16(%rsi)
	movb	%r9b, 384(%rdi,%rcx)
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movl	124(%rdi), %esi
	movb	%al, -16(%rdx)
	incl	%esi
	movl	%esi, 124(%rdi)
	jmp	.LBB8_6
	.align	16, 0x90
.LBB8_8:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str30, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB8_8
.LBB8_7:                                # %for.end
	movb	$0, return_taint8(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp75:
	.size	makeMaps_e, .Ltmp75-makeMaps_e
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\n"
	.size	.L.str, 62

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "    final combined CRC = 0x%08x\n   "
	.size	.L.str1, 36

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n"
	.size	.L.str2, 64

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n"
	.size	.L.str3, 59

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "      pass %d: size is %d, grp uses are "
	.size	.L.str4, 41

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "%d "
	.size	.L.str5, 4

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "\n"
	.size	.L.str6, 2

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "      bytes: mapping %d, "
	.size	.L.str7, 26

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "selectors %d, "
	.size	.L.str8, 15

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "code lengths %d, "
	.size	.L.str9, 18

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "codes %d\n"
	.size	.L.str10, 10

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

	.type	return_taint3,@object   # @return_taint3
	.globl	return_taint3
return_taint3:
	.byte	0                       # 0x0
	.size	return_taint3, 1

	.type	return_taint4,@object   # @return_taint4
	.globl	return_taint4
return_taint4:
	.byte	0                       # 0x0
	.size	return_taint4, 1

	.type	return_taint5,@object   # @return_taint5
	.globl	return_taint5
return_taint5:
	.byte	0                       # 0x0
	.size	return_taint5, 1

	.type	return_taint6,@object   # @return_taint6
	.globl	return_taint6
return_taint6:
	.byte	0                       # 0x0
	.size	return_taint6, 1

	.type	return_taint7,@object   # @return_taint7
	.globl	return_taint7
return_taint7:
	.byte	0                       # 0x0
	.size	return_taint7, 1

	.type	return_taint8,@object   # @return_taint8
	.globl	return_taint8
return_taint8:
	.byte	0                       # 0x0
	.size	return_taint8, 1

	.type	param_taint,@object     # @param_taint
	.globl	param_taint
param_taint:
	.byte	0                       # 0x0
	.size	param_taint, 1

	.type	param_taint9,@object    # @param_taint9
	.globl	param_taint9
param_taint9:
	.byte	0                       # 0x0
	.size	param_taint9, 1

	.type	param_taint10,@object   # @param_taint10
	.globl	param_taint10
param_taint10:
	.byte	0                       # 0x0
	.size	param_taint10, 1

	.type	param_taint11,@object   # @param_taint11
	.globl	param_taint11
param_taint11:
	.byte	0                       # 0x0
	.size	param_taint11, 1

	.type	param_taint12,@object   # @param_taint12
	.globl	param_taint12
param_taint12:
	.byte	0                       # 0x0
	.size	param_taint12, 1

	.type	param_taint13,@object   # @param_taint13
	.globl	param_taint13
param_taint13:
	.byte	0                       # 0x0
	.size	param_taint13, 1

	.type	param_taint14,@object   # @param_taint14
	.globl	param_taint14
param_taint14:
	.byte	0                       # 0x0
	.size	param_taint14, 1

	.type	param_taint15,@object   # @param_taint15
	.globl	param_taint15
param_taint15:
	.byte	0                       # 0x0
	.size	param_taint15, 1

	.type	param_taint16,@object   # @param_taint16
	.globl	param_taint16
param_taint16:
	.byte	0                       # 0x0
	.size	param_taint16, 1

	.type	param_taint17,@object   # @param_taint17
	.globl	param_taint17
param_taint17:
	.byte	0                       # 0x0
	.size	param_taint17, 1

	.type	param_taint18,@object   # @param_taint18
	.globl	param_taint18
param_taint18:
	.byte	0                       # 0x0
	.size	param_taint18, 1

	.type	param_taint19,@object   # @param_taint19
	.globl	param_taint19
param_taint19:
	.byte	0                       # 0x0
	.size	param_taint19, 1

	.type	param_taint20,@object   # @param_taint20
	.globl	param_taint20
param_taint20:
	.byte	0                       # 0x0
	.size	param_taint20, 1

	.type	param_taint21,@object   # @param_taint21
	.globl	param_taint21
param_taint21:
	.byte	0                       # 0x0
	.size	param_taint21, 1

	.type	.L.str22,@object        # @.str22
	.section	.rodata,"a",@progbits
.L.str22:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str22, 31

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str23, 31

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str24, 31

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str25, 31

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str26, 31

	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str27, 31

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str28, 31

	.type	.L.str29,@object        # @.str29
.L.str29:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str29, 31

	.type	.L.str30,@object        # @.str30
.L.str30:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str30, 31


	.section	".note.GNU-stack","",@progbits
