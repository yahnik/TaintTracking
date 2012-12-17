	.file	"bzlib.tt.bc"
	.text
	.globl	BZ2_bz__AssertH__fail
	.align	16, 0x90
	.type	BZ2_bz__AssertH__fail,@function
BZ2_bz__AssertH__fail:                  # @BZ2_bz__AssertH__fail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movl	%edi, %ebx
	movq	stderr(%rip), %r14
	callq	BZ2_bzlibVersion
	xorb	%bpl, %bpl
	movq	%r14, %rdi
	movl	$.L.str, %esi
	movl	%ebx, %edx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	fprintf
	testb	%bpl, %bpl
	je	.LBB0_1
	.align	16, 0x90
.LBB0_4:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str139, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB0_4
.LBB0_1:                                # %cont_BB
	cmpl	$1007, %ebx             # imm = 0x3EF
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movq	stderr(%rip), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
.LBB0_3:                                # %if.end
	movl	$3, %edi
	callq	exit
.Ltmp10:
	.size	BZ2_bz__AssertH__fail, .Ltmp10-BZ2_bz__AssertH__fail
	.cfi_endproc

	.globl	BZ2_bzlibVersion
	.align	16, 0x90
	.type	BZ2_bzlibVersion,@function
BZ2_bzlibVersion:                       # @BZ2_bzlibVersion
	.cfi_startproc
# BB#0:                                 # %entry
	movb	$0, return_taint7(%rip)
	movl	$.L.str5, %eax
	ret
.Ltmp11:
	.size	BZ2_bzlibVersion, .Ltmp11-BZ2_bzlibVersion
	.cfi_endproc

	.globl	BZ2_bzCompressInit
	.align	16, 0x90
	.type	BZ2_bzCompressInit,@function
BZ2_bzCompressInit:                     # @BZ2_bzCompressInit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rdi, %r14
	movb	param_taint57(%rip), %r12b
	movb	param_taint58(%rip), %al
	movb	%al, -58(%rbp)          # 1-byte Spill
	movb	param_taint59(%rip), %al
	movb	%al, -57(%rbp)          # 1-byte Spill
	movb	param_taint60(%rip), %al
	movb	%al, -49(%rbp)          # 1-byte Spill
	callq	bz_config_ok
	movl	%eax, %ecx
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#1:                                 # %cont_BB
	movl	$-9, %eax
	testl	%ecx, %ecx
	je	.LBB2_42
# BB#2:                                 # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#3:                                 # %cont_BB6
	movl	$-2, %eax
	testq	%r14, %r14
	je	.LBB2_42
# BB#4:                                 # %lor.lhs.false
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#5:                                 # %cont_BB9
	movl	$-2, %eax
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	jle	.LBB2_42
# BB#6:                                 # %lor.lhs.false2
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#7:                                 # %cont_BB12
	movl	$-2, %eax
	cmpl	$9, -48(%rbp)           # 4-byte Folded Reload
	jg	.LBB2_42
# BB#8:                                 # %lor.lhs.false4
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#9:                                 # %cont_BB15
	movl	$-2, %eax
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	js	.LBB2_42
# BB#10:                                # %lor.lhs.false6
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#11:                                # %cont_BB18
	movl	$-2, %eax
	cmpl	$250, -44(%rbp)         # 4-byte Folded Reload
	jg	.LBB2_42
# BB#12:                                # %if.end9
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#13:                                # %cont_BB21
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB2_15
# BB#14:                                # %if.then11
	movl	$30, -44(%rbp)          # 4-byte Folded Spill
	movb	$0, -49(%rbp)           # 1-byte Folded Spill
.LBB2_15:                               # %if.end12
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r12b
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#16:                                # %cont_BB24
	movq	56(%r14), %rax
	testq	%rax, %rax
	jne	.LBB2_18
# BB#17:                                # %if.then14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$default_bzalloc, 56(%r14)
.LBB2_18:                               # %if.end16
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#19:                                # %cont_BB31
	movq	64(%r14), %rax
	testq	%rax, %rax
	jne	.LBB2_21
# BB#20:                                # %if.then18
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$default_bzfree, 64(%r14)
.LBB2_21:                               # %if.end20
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	56(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movl	$55768, %esi            # imm = 0xD9D8
	movl	$1, %edx
	callq	*%rax
	movq	%rax, %rbx
	xorb	%r13b, %r13b
	testb	%r13b, %r13b
	jne	.LBB2_43
# BB#22:                                # %cont_BB41
	movl	$-3, %eax
	testq	%rbx, %rbx
	je	.LBB2_42
# BB#23:                                # %if.end25
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r13b
	movb	%r13b, -16(%rax)
	movb	%r12b, -16(%rax)
	imull	$100000, -48(%rbp), %r15d # 4-byte Folded Reload
                                        # imm = 0x186A0
	leal	(,%r15,4), %esi
	movq	%r14, (%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 24(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 32(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 40(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	56(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movl	$1, %edx
	callq	*%rax
	leal	136(,%r15,4), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	%rax, 24(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	56(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movl	$1, %edx
	callq	*%rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	%rax, 32(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	56(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movl	$262148, %esi           # imm = 0x40004
	movl	$1, %edx
	callq	*%rax
	xorb	%cl, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movq	%rax, 40(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%cl, %cl
	movb	%r13b, -16(%rax)
	jne	.LBB2_43
# BB#24:                                # %cont_BB83
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_29
# BB#25:                                # %lor.lhs.false47
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#26:                                # %cont_BB89
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_29
# BB#27:                                # %lor.lhs.false51
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#28:                                # %cont_BB95
	movq	40(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_29
# BB#41:                                # %if.end86
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movb	-58(%rbp), %dl          # 1-byte Reload
	andb	$1, %dl
	movl	$0, 660(%rbx)
	addl	$-19, %r15d
	movb	-57(%rbp), %dil         # 1-byte Reload
	andb	$1, %dil
	movb	-49(%rbp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$2, 12(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$2, 8(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 652(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	%dl, -16(%rax)
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, 664(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	%dl, -16(%rax)
	movl	%r15d, 112(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	%dil, -16(%rax)
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, 656(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	%sil, -16(%rax)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 88(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	32(%rbx), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r13b, -16(%rcx)
	movq	%rax, 64(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	24(%rbx), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r13b, -16(%rcx)
	movq	%rax, 72(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 80(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	24(%rbx), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r13b, -16(%rcx)
	movq	%rax, 56(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r13b, -16(%rax)
	movq	%rbx, 48(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 12(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 16(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 36(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 40(%r14)
	movb	%r13b, param_taint54(%rip)
	movq	%rbx, %rdi
	callq	init_RL
	movb	%r13b, param_taint55(%rip)
	movq	%rbx, %rdi
	callq	prepare_new_block
	xorl	%eax, %eax
	jmp	.LBB2_42
.LBB2_29:                               # %if.then55
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#30:                                # %cont_BB101
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_32
# BB#31:                                # %if.then59
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	24(%rbx), %rsi
	callq	*%rax
.LBB2_32:                               # %if.end63
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#33:                                # %cont_BB117
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_35
# BB#34:                                # %if.then67
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	32(%rbx), %rsi
	callq	*%rax
.LBB2_35:                               # %if.end71
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_43
# BB#36:                                # %cont_BB133
	movq	40(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_38
# BB#37:                                # %if.then75
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	40(%rbx), %rsi
	callq	*%rax
.LBB2_38:                               # %if.end79
	xorb	%al, %al
	testb	%al, %al
	je	.LBB2_39
	.align	16, 0x90
.LBB2_43:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str141, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB2_43
.LBB2_39:                               # %cont_BB146
	movl	$-3, %eax
	testq	%rbx, %rbx
	je	.LBB2_42
# BB#40:                                # %if.then82
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rbx, %rsi
	callq	*%rax
	movl	$-3, %eax
.LBB2_42:                               # %return
	movb	$0, return_taint8(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp23:
	.size	BZ2_bzCompressInit, .Ltmp23-BZ2_bzCompressInit
	.cfi_endproc

	.align	16, 0x90
	.type	bz_config_ok,@function
bz_config_ok:                           # @bz_config_ok
	.cfi_startproc
# BB#0:                                 # %entry
	movb	$0, return_taint9(%rip)
	movl	$1, %eax
	ret
.Ltmp24:
	.size	bz_config_ok, .Ltmp24-bz_config_ok
	.cfi_endproc

	.align	16, 0x90
	.type	default_bzalloc,@function
default_bzalloc:                        # @default_bzalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 16
	imull	%edx, %esi
	movslq	%esi, %rdi
	callq	malloc
	movb	$0, return_taint2(%rip)
	popq	%rdx
	ret
.Ltmp27:
	.size	default_bzalloc, .Ltmp27-default_bzalloc
	.cfi_endproc

	.align	16, 0x90
	.type	default_bzfree,@function
default_bzfree:                         # @default_bzfree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 16
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB5_4
# BB#1:                                 # %cont_BB
	testq	%rsi, %rsi
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	callq	free
.LBB5_3:                                # %if.end
	movb	$0, return_taint3(%rip)
	popq	%rax
	ret
	.align	16, 0x90
.LBB5_4:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str144, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB5_4
.Ltmp30:
	.size	default_bzfree, .Ltmp30-default_bzfree
	.cfi_endproc

	.align	16, 0x90
	.type	init_RL,@function
init_RL:                                # @init_RL
	.cfi_startproc
# BB#0:                                 # %entry
	movb	param_taint54(%rip), %al
	movb	%al, -1(%rsp)
	movb	$0, -1(%rsp)
	movl	$256, 92(%rdi)          # imm = 0x100
	movb	%al, -2(%rsp)
	movb	$0, -2(%rsp)
	movl	$0, 96(%rdi)
	movb	$0, return_taint4(%rip)
	ret
.Ltmp31:
	.size	init_RL, .Ltmp31-init_RL
	.cfi_endproc

	.align	16, 0x90
	.type	prepare_new_block,@function
prepare_new_block:                      # @prepare_new_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	param_taint55(%rip), %al
	movb	%al, -1(%rbp)
	movb	$0, -1(%rbp)
	movl	$0, 108(%rdi)
	movb	%al, -2(%rbp)
	movb	$0, -2(%rbp)
	movl	$0, 116(%rdi)
	xorl	%ecx, %ecx
	movb	%al, -3(%rbp)
	movb	$0, -3(%rbp)
	movl	$0, 120(%rdi)
	movb	%al, -4(%rbp)
	movb	$0, -4(%rbp)
	movl	$-1, 648(%rdi)
	xorb	%r8b, %r8b
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_3:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movb	$0, -16(%rsi)
	movb	$0, 128(%rdi,%rcx)
	incq	%rcx
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB7_5
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$255, %ecx
	jle	.LBB7_3
# BB#4:                                 # %for.end
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movl	660(%rdi), %edx
	movb	%al, -16(%rcx)
	incl	%edx
	movl	%edx, 660(%rdi)
	movb	$0, return_taint5(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
	.align	16, 0x90
.LBB7_5:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str146, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB7_5
.Ltmp37:
	.size	prepare_new_block, .Ltmp37-prepare_new_block
	.cfi_endproc

	.globl	BZ2_bzCompress
	.align	16, 0x90
	.type	BZ2_bzCompress,@function
BZ2_bzCompress:                         # @BZ2_bzCompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#1:                                 # %cont_BB
	movl	$-2, %eax
	testq	%rdi, %rdi
	je	.LBB8_43
# BB#2:                                 # %if.end
	movb	param_taint75(%rip), %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	andb	$1, %cl
	movb	%cl, -16(%rdx)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#3:                                 # %cont_BB4
	movq	48(%rdi), %r14
	movl	$-2, %eax
	testq	%r14, %r14
	je	.LBB8_43
# BB#4:                                 # %if.end3
	movb	-16(%rdx), %r15b
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	andb	$1, %r15b
	movb	%r15b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#5:                                 # %cont_BB10
	movq	(%r14), %rdx
	movl	$-2, %eax
	cmpq	%rdi, %rdx
	jne	.LBB8_43
# BB#6:
	xorb	%r8b, %r8b
	jmp	.LBB8_7
	.align	16, 0x90
.LBB8_14:                               # %if.then13
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movl	8(%rdi), %eax
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rdx)
	movb	%cl, -16(%rdx)
	movl	%eax, 16(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$3, 8(%r14)
	.align	16, 0x90
.LBB8_7:                                # %preswitch
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movl	8(%r14), %edx
	decl	%edx
	cmpl	$3, %edx
	ja	.LBB8_42
# BB#8:                                 # %preswitch
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	$-1, %eax
	jmpq	*.LJTI8_0(,%rdx,8)
.LBB8_9:                                # %sw.bb8
                                        #   in Loop: Header=BB8_7 Depth=1
	testb	%r8b, %r8b
	jne	.LBB8_44
# BB#10:                                # %cont_BB16
                                        #   in Loop: Header=BB8_7 Depth=1
	testl	%esi, %esi
	je	.LBB8_11
# BB#12:                                # %if.else
                                        #   in Loop: Header=BB8_7 Depth=1
	testb	%r8b, %r8b
	jne	.LBB8_44
# BB#13:                                # %cont_BB21
                                        #   in Loop: Header=BB8_7 Depth=1
	cmpl	$1, %esi
	je	.LBB8_14
# BB#15:                                # %if.else15
                                        #   in Loop: Header=BB8_7 Depth=1
	testb	%r8b, %r8b
	jne	.LBB8_44
# BB#16:                                # %cont_BB29
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	$-2, %eax
	cmpl	$2, %esi
	jne	.LBB8_43
# BB#17:                                # %if.then18
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movl	8(%rdi), %eax
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rdx)
	movb	%cl, -16(%rdx)
	movl	%eax, 16(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$4, 8(%r14)
	jmp	.LBB8_7
.LBB8_42:                               # %sw.epilog
	xorl	%eax, %eax
	jmp	.LBB8_43
.LBB8_11:                               # %if.then10
	movb	%cl, param_taint77(%rip)
	callq	handle_compress
	movl	$1, %ecx
	testb	%al, %al
	movl	$-2, %eax
	cmovnel	%ecx, %eax
	jmp	.LBB8_43
.LBB8_18:                               # %sw.bb23
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#19:                                # %cont_BB37
	movl	$-1, %eax
	cmpl	$1, %esi
	jne	.LBB8_43
# BB#20:                                # %if.end27
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movl	16(%r14), %r9d
	xorb	%r8b, %r8b
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rax)
	movq	(%r14), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%r8b, %r8b
	movb	%r15b, -16(%rax)
	jne	.LBB8_44
# BB#21:                                # %cont_BB49
	movl	8(%rsi), %esi
	movl	$-1, %eax
	cmpl	%esi, %r9d
	jne	.LBB8_43
# BB#22:                                # %if.end34
	movb	%cl, param_taint77(%rip)
	callq	handle_compress
	xorb	%al, %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r15b, -16(%rcx)
	jne	.LBB8_44
# BB#23:                                # %cont_BB56
	movl	16(%r14), %ecx
	movl	$2, %eax
	testl	%ecx, %ecx
	jne	.LBB8_43
# BB#24:                                # %lor.lhs.false
	movb	%r15b, param_taint78(%rip)
	movq	%r14, %rdi
	callq	isempty_RL
	movb	%al, %cl
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#25:                                # %cont_BB60
	movl	$2, %eax
	testb	%cl, %cl
	je	.LBB8_43
# BB#26:                                # %lor.lhs.false41
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movl	120(%r14), %ecx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%al, %al
	movb	%r15b, -16(%rdx)
	jne	.LBB8_44
# BB#27:                                # %cont_BB69
	movl	116(%r14), %edx
	movl	$2, %eax
	cmpl	%edx, %ecx
	jl	.LBB8_43
# BB#28:                                # %if.end45
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$1, %eax
	movl	$2, 8(%r14)
	jmp	.LBB8_43
.LBB8_29:                               # %sw.bb47
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#30:                                # %cont_BB73
	movl	$-1, %eax
	cmpl	$2, %esi
	jne	.LBB8_43
# BB#31:                                # %if.end51
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movl	16(%r14), %r9d
	xorb	%r8b, %r8b
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rax)
	movq	(%r14), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%r8b, %r8b
	movb	%r15b, -16(%rax)
	jne	.LBB8_44
# BB#32:                                # %cont_BB85
	movl	8(%rsi), %esi
	movl	$-1, %eax
	cmpl	%esi, %r9d
	jne	.LBB8_43
# BB#33:                                # %if.end58
	movb	%cl, param_taint77(%rip)
	callq	handle_compress
	movb	%al, %cl
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#34:                                # %cont_BB89
	movl	$-1, %eax
	testb	%cl, %cl
	je	.LBB8_43
# BB#35:                                # %if.end62
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#36:                                # %cont_BB95
	movl	16(%r14), %ecx
	movl	$3, %eax
	testl	%ecx, %ecx
	jne	.LBB8_43
# BB#37:                                # %lor.lhs.false66
	movb	%r15b, param_taint78(%rip)
	movq	%r14, %rdi
	callq	isempty_RL
	movb	%al, %cl
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_44
# BB#38:                                # %cont_BB99
	movl	$3, %eax
	testb	%cl, %cl
	je	.LBB8_43
# BB#39:                                # %lor.lhs.false69
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movl	120(%r14), %ecx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%al, %al
	movb	%r15b, -16(%rdx)
	je	.LBB8_40
	.align	16, 0x90
.LBB8_44:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str147, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB8_44
.LBB8_40:                               # %cont_BB108
	movl	116(%r14), %edx
	movl	$3, %eax
	cmpl	%edx, %ecx
	jl	.LBB8_43
# BB#41:                                # %if.end75
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$4, %eax
	movl	$1, 8(%r14)
.LBB8_43:                               # %return
	movb	$0, return_taint15(%rip)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp47:
	.size	BZ2_bzCompress, .Ltmp47-BZ2_bzCompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_43
	.quad	.LBB8_9
	.quad	.LBB8_18
	.quad	.LBB8_29

	.text
	.align	16, 0x90
	.type	handle_compress,@function
handle_compress:                        # @handle_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
	movb	param_taint77(%rip), %al
	movb	%al, -41(%rbp)
	movq	48(%rdi), %rbx
	xorb	%r12b, %r12b
	movb	-41(%rbp), %r13b
	andb	$1, %r13b
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	xorb	%r14b, %r14b
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_27:                               # %if.then55
                                        #   in Loop: Header=BB9_1 Depth=1
	callq	BZ2_compressBlock
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$1, 12(%rbx)
	.align	16, 0x90
.LBB9_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	12(%rbx), %eax
	xorb	%r15b, %r15b
	cmpl	$1, %eax
	jne	.LBB9_17
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	%r13b, param_taint135(%rip)
	movq	%rbx, %rdi
	callq	copy_output_until_stop
	movb	return_taint37(%rip), %r15b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	120(%rbx), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r12b, %r12b
	movb	%r13b, -16(%rdx)
	jne	.LBB9_34
# BB#4:                                 # %cont_BB17
                                        #   in Loop: Header=BB9_1 Depth=1
	orb	%al, %r14b
	movl	116(%rbx), %eax
	cmpl	%eax, %ecx
	jl	.LBB9_30
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#6:                                 # %cont_BB23
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	8(%rbx), %eax
	cmpl	$4, %eax
	jne	.LBB9_11
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#8:                                 # %cont_BB29
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	16(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB9_11
# BB#9:                                 # %land.lhs.true11
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	%r13b, param_taint78(%rip)
	movq	%rbx, %rdi
	callq	isempty_RL
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#10:                                # %cont_BB34
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.LBB9_30
.LBB9_11:                               # %if.end15
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	%r13b, param_taint55(%rip)
	movq	%rbx, %rdi
	callq	prepare_new_block
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$2, 12(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r12b, %r12b
	movb	%r13b, -16(%rax)
	jne	.LBB9_34
# BB#12:                                # %cont_BB42
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	8(%rbx), %eax
	cmpl	$3, %eax
	jne	.LBB9_17
# BB#13:                                # %land.lhs.true20
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#14:                                # %cont_BB48
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	16(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB9_17
# BB#15:                                # %land.lhs.true24
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	%r13b, param_taint78(%rip)
	movq	%rbx, %rdi
	callq	isempty_RL
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#16:                                # %cont_BB53
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.LBB9_30
.LBB9_17:                               # %if.end30
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#18:                                # %cont_BB60
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	12(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB9_1
# BB#19:                                # %if.then34
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	%r13b, param_taint136(%rip)
	movq	%rbx, %rdi
	callq	copy_input_until_stop
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%r13b, -16(%rcx)
	jne	.LBB9_34
# BB#20:                                # %cont_BB71
                                        #   in Loop: Header=BB9_1 Depth=1
	orb	%al, -42(%rbp)          # 1-byte Folded Spill
	movl	8(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB9_24
# BB#21:                                # %land.lhs.true43
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB9_34
# BB#22:                                # %cont_BB77
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	16(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB9_24
# BB#23:                                # %if.then47
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	%r13b, param_taint137(%rip)
	movq	%rbx, %rdi
	callq	flush_RL
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	cmpl	$4, 8(%rbx)
	sete	%al
	movzbl	%al, %esi
	movq	%rbx, %rdi
	jmp	.LBB9_27
.LBB9_24:                               # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movl	108(%rbx), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%r13b, -16(%rcx)
	jne	.LBB9_34
# BB#25:                                # %cont_BB94
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	112(%rbx), %ecx
	cmpl	%ecx, %eax
	jl	.LBB9_28
# BB#26:                                # %if.then55
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB9_27
.LBB9_28:                               # %if.else57
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	(%rbx), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%r13b, -16(%rcx)
	jne	.LBB9_34
# BB#29:                                # %cont_BB104
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.LBB9_1
.LBB9_30:                               # %while.end
	xorb	%al, %al
	testb	%al, %al
	je	.LBB9_31
	.align	16, 0x90
.LBB9_34:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str148, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB9_34
.LBB9_31:                               # %cont_BB111
	movzbl	-42(%rbp), %edx         # 1-byte Folded Reload
	movb	$1, %cl
	testl	%edx, %edx
	jne	.LBB9_33
# BB#32:                                # %lor.rhs
	testb	%r14b, %r14b
	setne	%cl
	movb	%r15b, %al
.LBB9_33:                               # %lor.end
	andb	$1, %al
	movb	%al, return_taint16(%rip)
	movzbl	%cl, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp59:
	.size	handle_compress, .Ltmp59-handle_compress
	.cfi_endproc

	.align	16, 0x90
	.type	isempty_RL,@function
isempty_RL:                             # @isempty_RL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	param_taint78(%rip), %al
	movb	%al, -1(%rbp)
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB10_6
# BB#1:                                 # %cont_BB
	movl	92(%rdi), %ecx
	cmpl	$255, %ecx
	ja	.LBB10_4
# BB#2:                                 # %land.lhs.true
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	xorb	%al, %al
	testb	%al, %al
	je	.LBB10_3
	.align	16, 0x90
.LBB10_6:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str149, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB10_6
.LBB10_3:                               # %cont_BB6
	movl	96(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB10_5
.LBB10_4:                               # %if.else
	movb	$1, %al
.LBB10_5:                               # %return
	movzbl	%al, %eax
	movb	$0, return_taint17(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp65:
	.size	isempty_RL, .Ltmp65-isempty_RL
	.cfi_endproc

	.globl	BZ2_bzCompressEnd
	.align	16, 0x90
	.type	BZ2_bzCompressEnd,@function
BZ2_bzCompressEnd:                      # @BZ2_bzCompressEnd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
.Ltmp72:
	.cfi_offset %rbx, -48
.Ltmp73:
	.cfi_offset %r12, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB11_17
# BB#1:                                 # %cont_BB
	movl	$-2, %eax
	testq	%r14, %r14
	je	.LBB11_16
# BB#2:                                 # %if.end
	movb	param_taint79(%rip), %bl
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	andb	$1, %bl
	movb	%bl, -16(%rcx)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB11_17
# BB#3:                                 # %cont_BB3
	movq	48(%r14), %r15
	movl	$-2, %eax
	testq	%r15, %r15
	je	.LBB11_16
# BB#4:                                 # %if.end3
	movb	-16(%rcx), %r12b
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r12b
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB11_17
# BB#5:                                 # %cont_BB9
	movq	(%r15), %rcx
	movl	$-2, %eax
	cmpq	%r14, %rcx
	jne	.LBB11_16
# BB#6:                                 # %if.end7
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB11_17
# BB#7:                                 # %cont_BB15
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_9
# BB#8:                                 # %if.then9
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	24(%r15), %rsi
	callq	*%rax
.LBB11_9:                               # %if.end11
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB11_17
# BB#10:                                # %cont_BB31
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_12
# BB#11:                                # %if.then13
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	32(%r15), %rsi
	callq	*%rax
.LBB11_12:                              # %if.end17
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	je	.LBB11_13
	.align	16, 0x90
.LBB11_17:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str150, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB11_17
.LBB11_13:                              # %cont_BB47
	movq	40(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_15
# BB#14:                                # %if.then19
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	40(%r15), %rsi
	callq	*%rax
.LBB11_15:                              # %if.end23
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	48(%r14), %rsi
	callq	*%rax
	xorl	%eax, %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	$0, 48(%r14)
.LBB11_16:                              # %return
	movb	$0, return_taint18(%rip)
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp76:
	.size	BZ2_bzCompressEnd, .Ltmp76-BZ2_bzCompressEnd
	.cfi_endproc

	.globl	BZ2_bzDecompressInit
	.align	16, 0x90
	.type	BZ2_bzDecompressInit,@function
BZ2_bzDecompressInit:                   # @BZ2_bzDecompressInit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %r15
	movb	param_taint80(%rip), %bl
	movb	param_taint81(%rip), %r12b
	movb	param_taint82(%rip), %r13b
	callq	bz_config_ok
	movl	%eax, %ecx
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#1:                                 # %cont_BB
	movl	$-9, %eax
	testl	%ecx, %ecx
	je	.LBB12_21
# BB#2:                                 # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#3:                                 # %cont_BB5
	movl	$-2, %eax
	testq	%r15, %r15
	je	.LBB12_21
# BB#4:                                 # %if.end2
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#5:                                 # %cont_BB8
	testl	%r14d, %r14d
	je	.LBB12_8
# BB#6:                                 # %land.lhs.true
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#7:                                 # %cont_BB11
	movl	$-2, %eax
	cmpl	$1, %r14d
	jne	.LBB12_21
.LBB12_8:                               # %if.end6
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#9:                                 # %cont_BB14
	movl	$-2, %eax
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	js	.LBB12_21
# BB#10:                                # %lor.lhs.false
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#11:                                # %cont_BB17
	movl	$-2, %eax
	cmpl	$4, -44(%rbp)           # 4-byte Folded Reload
	jg	.LBB12_21
# BB#12:                                # %if.end10
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %bl
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#13:                                # %cont_BB20
	movq	56(%r15), %rax
	testq	%rax, %rax
	jne	.LBB12_15
# BB#14:                                # %if.then12
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movq	$default_bzalloc, 56(%r15)
.LBB12_15:                              # %if.end14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB12_22
# BB#16:                                # %cont_BB27
	movq	64(%r15), %rax
	testq	%rax, %rax
	jne	.LBB12_18
# BB#17:                                # %if.then16
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movq	$default_bzfree, 64(%r15)
.LBB12_18:                              # %if.end18
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	56(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r15), %rdi
	movl	$64144, %esi            # imm = 0xFA90
	movl	$1, %edx
	callq	*%rax
	movq	%rax, %rcx
	xorb	%dl, %dl
	testb	%dl, %dl
	je	.LBB12_19
	.align	16, 0x90
.LBB12_22:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str151, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB12_22
.LBB12_19:                              # %cont_BB37
	movl	$-3, %eax
	testq	%rcx, %rcx
	je	.LBB12_21
# BB#20:                                # %if.end23
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	andb	$1, %dl
	movb	%dl, -16(%rax)
	movb	%bl, -16(%rax)
	xorl	%eax, %eax
	andb	$1, %r13b
	andb	$1, %r12b
	movq	%r15, (%rcx)
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%dl, -16(%rsi)
	movq	%rcx, 48(%r15)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$10, 8(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 36(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 32(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 3188(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 12(%r15)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 16(%r15)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 36(%r15)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 40(%r15)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	%r13b, -16(%rsi)
	movb	%r14b, 44(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movq	$0, 3168(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movq	$0, 3160(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movq	$0, 3152(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	$0, 48(%rcx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rsi)
	movb	%r12b, -16(%rsi)
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%edx, 52(%rcx)
.LBB12_21:                              # %return
	movb	$0, return_taint19(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp88:
	.size	BZ2_bzDecompressInit, .Ltmp88-BZ2_bzDecompressInit
	.cfi_endproc

	.globl	BZ2_indexIntoF
	.align	16, 0x90
	.type	BZ2_indexIntoF,@function
BZ2_indexIntoF:                         # @BZ2_indexIntoF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	movl	$256, %r10d             # imm = 0x100
	xorl	%eax, %eax
	movb	param_taint84(%rip), %r9b
	andb	$1, %r9b
	xorb	%r8b, %r8b
	.align	16, 0x90
.LBB13_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r9b, -16(%rcx)
	testb	%r8b, %r8b
	jne	.LBB13_8
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB13_1 Depth=1
	leal	(%rax,%r10), %edx
	sarl	%edx
	movslq	%edx, %rcx
	movl	(%rsi,%rcx,4), %ecx
	cmpl	%ecx, %edi
	jge	.LBB13_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	xorb	%cl, %cl
	movl	%edx, %r10d
	jmp	.LBB13_5
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	xorb	%cl, %cl
	movl	%edx, %eax
.LBB13_5:                               # %do.cond
                                        #   in Loop: Header=BB13_1 Depth=1
	testb	%r8b, %r8b
	jne	.LBB13_8
# BB#6:                                 # %cont_BB10
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%r10d, %edx
	subl	%eax, %edx
	cmpl	$1, %edx
	jne	.LBB13_1
# BB#7:                                 # %do.end
	andb	$1, %cl
	movb	%cl, return_taint20(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
	.align	16, 0x90
.LBB13_8:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str152, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB13_8
.Ltmp94:
	.size	BZ2_indexIntoF, .Ltmp94-BZ2_indexIntoF
	.cfi_endproc

	.globl	BZ2_bzDecompress
	.align	16, 0x90
	.type	BZ2_bzDecompress,@function
BZ2_bzDecompress:                       # @BZ2_bzDecompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB14_43
# BB#1:                                 # %cont_BB
	movl	$-2, %eax
	testq	%rdi, %rdi
	je	.LBB14_42
# BB#2:                                 # %if.end
	movb	param_taint85(%rip), %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	andb	$1, %al
	movb	%al, -16(%rcx)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB14_43
# BB#3:                                 # %cont_BB3
	movq	48(%rdi), %r15
	movl	$-2, %eax
	testq	%r15, %r15
	je	.LBB14_42
# BB#4:                                 # %if.end3
	movb	-16(%rcx), %r12b
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, %bl
	andb	$1, %bl
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB14_43
# BB#5:                                 # %cont_BB9
	movq	(%r15), %rcx
	movl	$-2, %eax
	cmpq	%rdi, %rcx
	jne	.LBB14_42
# BB#6:
	xorb	%r13b, %r13b
	.align	16, 0x90
.LBB14_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#8:                                 # %cont_BB15
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	8(%r15), %ecx
	movl	$-1, %eax
	cmpl	$1, %ecx
	je	.LBB14_42
# BB#9:                                 # %if.end11
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#10:                                # %cont_BB21
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	8(%r15), %eax
	cmpl	$2, %eax
	jne	.LBB14_30
# BB#11:                                # %if.then14
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#12:                                # %cont_BB27
                                        #   in Loop: Header=BB14_7 Depth=1
	movb	44(%r15), %al
	testb	%al, %al
	je	.LBB14_14
# BB#13:                                # %if.then15
                                        #   in Loop: Header=BB14_7 Depth=1
	movb	%bl, param_taint86(%rip)
	movq	%r15, %rdi
	callq	unRLE_obuf_to_output_SMALL
	jmp	.LBB14_15
.LBB14_14:                              # %if.else
                                        #   in Loop: Header=BB14_7 Depth=1
	movb	%bl, param_taint87(%rip)
	movq	%r15, %rdi
	callq	unRLE_obuf_to_output_FAST
.LBB14_15:                              # %if.else
                                        #   in Loop: Header=BB14_7 Depth=1
	movb	%al, %cl
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#16:                                # %cont_BB31
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	$-4, %eax
	testb	%cl, %cl
	jne	.LBB14_42
# BB#17:                                # %if.end20
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	1092(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#18:                                # %cont_BB41
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	64080(%r15), %edx
	incl	%edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jne	.LBB14_42
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#20:                                # %cont_BB47
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	16(%r15), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB14_42
# BB#21:                                # %if.then23
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3184(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%bl, -16(%rcx)
	notl	%eax
	movl	%eax, 3184(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rax)
	jne	.LBB14_43
# BB#22:                                # %cont_BB58
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	52(%r15), %eax
	cmpl	$3, %eax
	jl	.LBB14_24
# BB#23:                                # %if.then26
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3176(%r15), %edx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3184(%r15), %ecx
	movl	$.L.str2, %esi
	xorb	%al, %al
	callq	fprintf
.LBB14_24:                              # %if.end29
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#25:                                # %cont_BB71
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	52(%r15), %eax
	cmpl	$2, %eax
	jl	.LBB14_27
# BB#26:                                # %if.then32
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str3, %esi
	xorb	%al, %al
	callq	fprintf
.LBB14_27:                              # %if.end34
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3184(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rax)
	jne	.LBB14_43
# BB#28:                                # %cont_BB81
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	3176(%r15), %edx
	movl	$-4, %eax
	cmpl	%edx, %ecx
	jne	.LBB14_42
# BB#29:                                # %if.end39
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3188(%r15), %ecx
	movb	%r12b, %al
	orb	%al, %al
	movq	%rsp, %rdx
	andb	$1, %al
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	3188(%r15), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%al, -16(%rsi)
	shrdl	$31, %ecx, %edx
	movl	%edx, 3188(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	3184(%r15), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	3188(%r15), %esi
	movb	%al, -16(%rdx)
	xorl	%ecx, %esi
	movl	%esi, 3188(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$14, 8(%r15)
.LBB14_30:                              # %if.end47
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#31:                                # %cont_BB105
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	8(%r15), %eax
	cmpl	$10, %eax
	jl	.LBB14_7
# BB#32:                                # %if.then50
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%r15, %rdi
	callq	BZ2_decompress
	movl	%eax, %r14d
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#33:                                # %cont_BB108
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	cmpl	$4, %r14d
	je	.LBB14_34
# BB#40:                                # %if.end65
                                        #   in Loop: Header=BB14_7 Depth=1
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB14_43
# BB#41:                                # %cont_BB136
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	8(%r15), %eax
	cmpl	$2, %eax
	movl	%r14d, %eax
	je	.LBB14_7
	jmp	.LBB14_42
.LBB14_34:                              # %if.then53
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB14_43
# BB#35:                                # %cont_BB114
	movl	52(%r15), %eax
	cmpl	$3, %eax
	jl	.LBB14_37
# BB#36:                                # %if.then56
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3180(%r15), %edx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3188(%r15), %ecx
	movl	$.L.str4, %esi
	xorb	%al, %al
	callq	fprintf
.LBB14_37:                              # %if.end59
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3188(%r15), %ecx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%al, %al
	movb	%bl, -16(%rdx)
	je	.LBB14_38
	.align	16, 0x90
.LBB14_43:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str153, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB14_43
.LBB14_38:                              # %cont_BB130
	movl	3180(%r15), %edx
	movl	$-4, %eax
	cmpl	%edx, %ecx
	jne	.LBB14_42
# BB#39:                                # %if.end64
	movl	%r14d, %eax
.LBB14_42:                              # %return
	movb	$0, return_taint21(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp106:
	.size	BZ2_bzDecompress, .Ltmp106-BZ2_bzDecompress
	.cfi_endproc

	.align	16, 0x90
	.type	unRLE_obuf_to_output_SMALL,@function
unRLE_obuf_to_output_SMALL:             # @unRLE_obuf_to_output_SMALL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp113:
	.cfi_offset %rbx, -56
.Ltmp114:
	.cfi_offset %r12, -48
.Ltmp115:
	.cfi_offset %r13, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movb	param_taint86(%rip), %bl
	movb	%bl, -43(%rbp)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB15_98
# BB#1:                                 # %cont_BB
	movb	20(%r15), %al
	xorb	%r12b, %r12b
	testb	%al, %al
	je	.LBB15_62
	jmp	.LBB15_2
	.align	16, 0x90
.LBB15_8:                               # %if.then23
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	40(%rax), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 40(%rax)
	.align	16, 0x90
.LBB15_2:                               # %while.body2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#3:                                 # %cont_BB9
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	32(%rax), %ecx
	xorb	%al, %al
	testl	%ecx, %ecx
	je	.LBB15_97
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#5:                                 # %cont_BB15
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	16(%r15), %eax
	testl	%eax, %eax
	jne	.LBB15_6
# BB#9:                                 # %while.end
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	1092(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#10:                                # %cont_BB93
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	64080(%r15), %edx
	incl	%edx
	xorb	%al, %al
	cmpl	%edx, %ecx
	je	.LBB15_97
# BB#11:                                # %if.end30
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	1092(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#12:                                # %cont_BB103
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	64080(%r15), %edx
	incl	%edx
	movb	$1, %al
	cmpl	%edx, %ecx
	jg	.LBB15_97
# BB#13:                                # %if.end37
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$1, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	64(%r15), %al
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%bl, -16(%rcx)
	movb	%al, 12(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#14:                                # %cont_BB119
                                        #   in Loop: Header=BB15_2 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#15:                                # %if.end44
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	leaq	1096(%r15), %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	%bl, %r13b
	orb	%r13b, %r13b
	orb	%bl, %r13b
	movb	return_taint20(%rip), %r8b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movzwl	(%rsi,%rcx,2), %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%r13b, -16(%rdx)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#16:                                # %cont_BB164
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	24(%r15), %ecx
	testl	%ecx, %ecx
	jne	.LBB15_20
# BB#17:                                # %if.then64
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movslq	28(%r15), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%ecx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	28(%r15), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 28(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#18:                                # %cont_BB182
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	28(%r15), %ecx
	cmpl	$512, %ecx              # imm = 0x200
	jne	.LBB15_20
# BB#19:                                # %if.then73
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%r15)
.LBB15_20:                              # %if.end76
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %edx
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movl	1092(%r15), %edi
	cmpl	$1, %ecx
	movb	%bl, -16(%rsi)
	sete	%cl
	incl	%edi
	movl	%edi, 1092(%r15)
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	1092(%r15), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#21:                                # %cont_BB208
                                        #   in Loop: Header=BB15_2 Depth=1
	xorb	%cl, %al
	movl	64080(%r15), %ecx
	incl	%ecx
	cmpl	%ecx, %esi
	je	.LBB15_2
# BB#22:                                # %if.end93
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#23:                                # %cont_BB215
                                        #   in Loop: Header=BB15_2 Depth=1
	movzbl	%al, %eax
	movl	64(%r15), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_24
# BB#25:                                # %if.end101
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$2, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#26:                                # %cont_BB228
                                        #   in Loop: Header=BB15_2 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#27:                                # %if.end109
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %r8b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movzwl	(%rsi,%rcx,2), %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%r13b, -16(%rdx)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#28:                                # %cont_BB274
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	24(%r15), %ecx
	testl	%ecx, %ecx
	jne	.LBB15_32
# BB#29:                                # %if.then137
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movslq	28(%r15), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%ecx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	28(%r15), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 28(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#30:                                # %cont_BB292
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	28(%r15), %ecx
	cmpl	$512, %ecx              # imm = 0x200
	jne	.LBB15_32
# BB#31:                                # %if.then147
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%r15)
.LBB15_32:                              # %if.end150
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %edx
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movl	1092(%r15), %edi
	cmpl	$1, %ecx
	movb	%bl, -16(%rsi)
	sete	%cl
	incl	%edi
	movl	%edi, 1092(%r15)
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	1092(%r15), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#33:                                # %cont_BB318
                                        #   in Loop: Header=BB15_2 Depth=1
	xorb	%cl, %al
	movl	64080(%r15), %ecx
	incl	%ecx
	cmpl	%ecx, %esi
	je	.LBB15_2
# BB#34:                                # %if.end168
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#35:                                # %cont_BB325
                                        #   in Loop: Header=BB15_2 Depth=1
	movzbl	%al, %eax
	movl	64(%r15), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_24
# BB#36:                                # %if.end176
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$3, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#37:                                # %cont_BB338
                                        #   in Loop: Header=BB15_2 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#38:                                # %if.end184
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %r8b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movzwl	(%rsi,%rcx,2), %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%r13b, -16(%rdx)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#39:                                # %cont_BB384
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	24(%r15), %ecx
	testl	%ecx, %ecx
	jne	.LBB15_43
# BB#40:                                # %if.then212
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movslq	28(%r15), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%ecx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	28(%r15), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 28(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#41:                                # %cont_BB402
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	28(%r15), %ecx
	cmpl	$512, %ecx              # imm = 0x200
	jne	.LBB15_43
# BB#42:                                # %if.then222
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%r15)
.LBB15_43:                              # %if.end225
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %edx
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movl	1092(%r15), %edi
	cmpl	$1, %ecx
	movb	%bl, -16(%rsi)
	sete	%cl
	incl	%edi
	movl	%edi, 1092(%r15)
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	1092(%r15), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#44:                                # %cont_BB428
                                        #   in Loop: Header=BB15_2 Depth=1
	xorb	%cl, %al
	movl	64080(%r15), %ecx
	incl	%ecx
	cmpl	%ecx, %esi
	je	.LBB15_2
# BB#45:                                # %if.end243
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#46:                                # %cont_BB435
                                        #   in Loop: Header=BB15_2 Depth=1
	movzbl	%al, %eax
	movl	64(%r15), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_24
# BB#47:                                # %if.end251
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#48:                                # %cont_BB447
                                        #   in Loop: Header=BB15_2 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#49:                                # %if.end258
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %r9b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rdi)
	movzwl	(%rsi,%rcx,2), %r8d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movb	%r13b, -16(%rsi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r8d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#50:                                # %cont_BB493
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	24(%r15), %ecx
	testl	%ecx, %ecx
	jne	.LBB15_54
# BB#51:                                # %if.then286
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movslq	28(%r15), %rcx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	$0, -16(%rsi)
	movl	BZ2_rNums(,%rcx,4), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movb	$0, -16(%rsi)
	movl	%ecx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	28(%r15), %esi
	movb	%bl, -16(%rcx)
	incl	%esi
	movl	%esi, 28(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#52:                                # %cont_BB511
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	28(%r15), %ecx
	cmpl	$512, %ecx              # imm = 0x200
	jne	.LBB15_54
# BB#53:                                # %if.then296
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%r15)
.LBB15_54:                              # %if.end299
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %esi
	andb	$1, %r9b
	movb	%bl, -16(%rcx)
	decl	%esi
	movl	%esi, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	24(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movl	1092(%r15), %edi
	cmpl	$1, %ecx
	movb	%bl, -16(%rsi)
	sete	%cl
	incl	%edi
	movl	%edi, 1092(%r15)
	xorb	%al, %cl
	movzbl	%cl, %eax
	addl	$4, %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%r9b, -16(%rcx)
	movl	%eax, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#55:                                # %cont_BB540
                                        #   in Loop: Header=BB15_2 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#56:                                # %if.end320
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%cl, -16(%rdx)
	movl	%eax, 64(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	3160(%r15), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	3168(%r15), %rdx
	shrl	%ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movzbl	(%rdx,%rcx), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%r13b, -16(%rsi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%eax, %edx
	movl	%edx, 60(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rax)
	jne	.LBB15_98
# BB#57:                                # %cont_BB586
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	24(%r15), %eax
	testl	%eax, %eax
	jne	.LBB15_61
# BB#58:                                # %if.then348
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movslq	28(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	$0, -16(%rcx)
	movl	BZ2_rNums(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	%eax, 24(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	28(%r15), %ecx
	movb	%bl, -16(%rax)
	incl	%ecx
	movl	%ecx, 28(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rax)
	jne	.LBB15_98
# BB#59:                                # %cont_BB604
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	28(%r15), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB15_61
# BB#60:                                # %if.then358
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 28(%r15)
.LBB15_61:                              # %if.end361
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	24(%r15), %ecx
	movb	%bl, -16(%rax)
	decl	%ecx
	movl	%ecx, 24(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	24(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	64(%r15), %edx
	cmpl	$1, %eax
	movb	%bl, -16(%rcx)
	sete	%al
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, 64(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	1092(%r15), %ecx
	movb	%bl, -16(%rax)
	incl	%ecx
	movl	%ecx, 1092(%r15)
	jmp	.LBB15_2
.LBB15_6:                               # %if.end6
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	12(%r15), %al
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%r15), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	24(%rcx), %rcx
	movb	%bl, -42(%rbp)
	movb	%al, (%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3184(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzbl	3187(%r15), %ecx
	shll	$8, %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	12(%r15), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	$0, -16(%rsi)
	xorl	%ecx, %edx
	movl	BZ2_crc32Table(,%rdx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%bl, -16(%rdx)
	xorl	%eax, %ecx
	movl	%ecx, 3184(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	16(%r15), %ecx
	movb	%bl, -16(%rax)
	decl	%ecx
	movl	%ecx, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	24(%rax), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%bl, -16(%rcx)
	incq	%rdx
	movq	%rdx, 24(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	32(%rax), %edx
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 32(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	36(%rax), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 36(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#7:                                 # %cont_BB76
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.LBB15_2
	jmp	.LBB15_8
.LBB15_24:                              # %if.then98
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	andb	$1, %r8b
	movb	%r8b, -16(%rcx)
	movl	%eax, 64(%r15)
	jmp	.LBB15_2
	.align	16, 0x90
.LBB15_68:                              # %if.then415
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	40(%rax), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 40(%rax)
	.align	16, 0x90
.LBB15_62:                              # %while.body374
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#63:                                # %cont_BB630
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	32(%rax), %ecx
	xorb	%al, %al
	testl	%ecx, %ecx
	je	.LBB15_97
# BB#64:                                # %if.end380
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#65:                                # %cont_BB636
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	16(%r15), %eax
	testl	%eax, %eax
	jne	.LBB15_66
# BB#69:                                # %while.end420
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	1092(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#70:                                # %cont_BB716
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	64080(%r15), %edx
	incl	%edx
	xorb	%al, %al
	cmpl	%edx, %ecx
	je	.LBB15_97
# BB#71:                                # %if.end427
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	1092(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#72:                                # %cont_BB726
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	64080(%r15), %edx
	incl	%edx
	movb	$1, %al
	cmpl	%edx, %ecx
	jg	.LBB15_97
# BB#73:                                # %if.end434
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$1, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	64(%r15), %al
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%bl, -16(%rcx)
	movb	%al, 12(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#74:                                # %cont_BB742
                                        #   in Loop: Header=BB15_62 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#75:                                # %if.end445
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	leaq	1096(%r15), %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	%bl, %r13b
	orb	%r13b, %r13b
	orb	%bl, %r13b
	movb	return_taint20(%rip), %r9b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rdi)
	movzwl	(%rsi,%rcx,2), %r8d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movb	%r13b, -16(%rsi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r8d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	1092(%r15), %esi
	movb	%bl, -16(%rcx)
	incl	%esi
	movl	%esi, 1092(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	1092(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#76:                                # %cont_BB796
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	64080(%r15), %esi
	incl	%esi
	cmpl	%esi, %ecx
	je	.LBB15_62
# BB#77:                                # %if.end478
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#78:                                # %cont_BB803
                                        #   in Loop: Header=BB15_62 Depth=1
	movzbl	%al, %eax
	movl	64(%r15), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_79
# BB#80:                                # %if.end486
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$2, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#81:                                # %cont_BB816
                                        #   in Loop: Header=BB15_62 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#82:                                # %if.end494
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %r9b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rdi)
	movzwl	(%rsi,%rcx,2), %r8d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movb	%r13b, -16(%rsi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r8d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	1092(%r15), %esi
	movb	%bl, -16(%rcx)
	incl	%esi
	movl	%esi, 1092(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	1092(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#83:                                # %cont_BB870
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	64080(%r15), %esi
	incl	%esi
	cmpl	%esi, %ecx
	je	.LBB15_62
# BB#84:                                # %if.end527
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#85:                                # %cont_BB877
                                        #   in Loop: Header=BB15_62 Depth=1
	movzbl	%al, %eax
	movl	64(%r15), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_79
# BB#86:                                # %if.end535
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$3, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#87:                                # %cont_BB890
                                        #   in Loop: Header=BB15_62 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#88:                                # %if.end543
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %r9b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rdi)
	movzwl	(%rsi,%rcx,2), %r8d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movb	%r13b, -16(%rsi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r8d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	1092(%r15), %esi
	movb	%bl, -16(%rcx)
	incl	%esi
	movl	%esi, 1092(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	1092(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#89:                                # %cont_BB944
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	64080(%r15), %esi
	incl	%esi
	cmpl	%esi, %ecx
	je	.LBB15_62
# BB#90:                                # %if.end576
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#91:                                # %cont_BB951
                                        #   in Loop: Header=BB15_62 Depth=1
	movzbl	%al, %eax
	movl	64(%r15), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_79
# BB#92:                                # %if.end584
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#93:                                # %cont_BB963
                                        #   in Loop: Header=BB15_62 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#94:                                # %if.end591
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %r8b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzbl	%al, %eax
	movl	60(%r15), %ecx
	addl	$4, %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	3160(%r15), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movzwl	(%rsi,%rcx,2), %r9d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movq	3168(%r15), %rdi
	shrl	%ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	(%rdi,%rcx), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%r13b, -16(%rdx)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edi
	andl	$15, %edi
	shll	$16, %edi
	orl	%r9d, %edi
	movl	%edi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	1092(%r15), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 1092(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%r8b, -16(%rcx)
	movl	%eax, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	testb	%r12b, %r12b
	jne	.LBB15_98
# BB#95:                                # %cont_BB1020
                                        #   in Loop: Header=BB15_62 Depth=1
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movb	$1, %al
	cmpl	%edx, %ecx
	jae	.LBB15_97
# BB#96:                                # %if.end627
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint83(%rip)
	movb	%bl, param_taint84(%rip)
	movq	%r14, %rsi
	callq	BZ2_indexIntoF
	movb	return_taint20(%rip), %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%cl, -16(%rdx)
	movl	%eax, 64(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	60(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	3160(%r15), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	60(%r15), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	3168(%r15), %rdx
	shrl	%ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movzbl	(%rdx,%rcx), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movb	60(%r15), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%r13b, -16(%rsi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%eax, %edx
	movl	%edx, 60(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	1092(%r15), %ecx
	movb	%bl, -16(%rax)
	incl	%ecx
	movl	%ecx, 1092(%r15)
	jmp	.LBB15_62
.LBB15_66:                              # %if.end385
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	12(%r15), %al
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%r15), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	24(%rcx), %rcx
	movb	%bl, -41(%rbp)
	movb	%al, (%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	3184(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzbl	3187(%r15), %ecx
	shll	$8, %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movzbl	12(%r15), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	$0, -16(%rsi)
	xorl	%ecx, %edx
	movl	BZ2_crc32Table(,%rdx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%bl, -16(%rdx)
	xorl	%eax, %ecx
	movl	%ecx, 3184(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	16(%r15), %ecx
	movb	%bl, -16(%rax)
	decl	%ecx
	movl	%ecx, 16(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	24(%rax), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%bl, -16(%rcx)
	incq	%rdx
	movq	%rdx, 24(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	32(%rax), %edx
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 32(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	36(%rax), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 36(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rcx)
	jne	.LBB15_98
# BB#67:                                # %cont_BB699
                                        #   in Loop: Header=BB15_62 Depth=1
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.LBB15_62
	jmp	.LBB15_68
.LBB15_79:                              # %if.then483
                                        #   in Loop: Header=BB15_62 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	andb	$1, %r9b
	movb	%r9b, -16(%rcx)
	movl	%eax, 64(%r15)
	jmp	.LBB15_62
	.align	16, 0x90
.LBB15_98:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str154, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB15_98
.LBB15_97:                              # %return
	movzbl	%al, %eax
	movb	$0, return_taint22(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp118:
	.size	unRLE_obuf_to_output_SMALL, .Ltmp118-unRLE_obuf_to_output_SMALL
	.cfi_endproc

	.align	16, 0x90
	.type	unRLE_obuf_to_output_FAST,@function
unRLE_obuf_to_output_FAST:              # @unRLE_obuf_to_output_FAST
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
	movb	param_taint87(%rip), %r13b
	movb	%r13b, -44(%rbp)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#1:                                 # %cont_BB
	movb	20(%rdi), %al
	testb	%al, %al
	je	.LBB16_63
# BB#2:
	xorb	%r8b, %r8b
	jmp	.LBB16_3
	.align	16, 0x90
.LBB16_9:                               # %if.then23
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	40(%rcx), %esi
	movb	%r13b, -16(%rdx)
	incl	%esi
	movl	%esi, 40(%rcx)
	.align	16, 0x90
.LBB16_3:                               # %while.body2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#4:                                 # %cont_BB9
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	32(%rcx), %eax
	xorb	%sil, %sil
	testl	%eax, %eax
	je	.LBB16_75
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#6:                                 # %cont_BB15
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	16(%rdi), %eax
	movq	%rsp, %rcx
	testl	%eax, %eax
	jne	.LBB16_7
# BB#10:                                # %while.end
                                        #   in Loop: Header=BB16_3 Depth=1
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	1092(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#11:                                # %cont_BB93
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	64080(%rdi), %edx
	incl	%edx
	xorb	%sil, %sil
	cmpl	%edx, %ecx
	je	.LBB16_75
# BB#12:                                # %if.end30
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	1092(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#13:                                # %cont_BB103
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	64080(%rdi), %edx
	incl	%edx
	movb	$1, %sil
	cmpl	%edx, %ecx
	jg	.LBB16_75
# BB#14:                                # %if.end37
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$1, 16(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	64(%rdi), %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r13b, -16(%rdx)
	movb	%cl, 12(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#15:                                # %cont_BB119
                                        #   in Loop: Header=BB16_3 Depth=1
	imull	$100000, 40(%rdi), %eax # imm = 0x186A0
	movb	$1, %sil
	cmpl	%eax, %ecx
	jae	.LBB16_75
# BB#16:                                # %if.end44
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movq	3152(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	(%rdx,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r13b, -16(%rdx)
	movl	%ecx, 60(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	60(%rdi), %cl
	movb	-16(%rdx), %r9b
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	60(%rdi), %edx
	movb	%r13b, -16(%rsi)
	shrl	$8, %edx
	movl	%edx, 60(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#17:                                # %cont_BB145
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	24(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB16_21
# BB#18:                                # %if.then55
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movslq	28(%rdi), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rsi,4), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%esi, 24(%rdi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	28(%rdi), %edx
	movb	%r13b, -16(%rsi)
	incl	%edx
	movl	%edx, 28(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#19:                                # %cont_BB163
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	28(%rdi), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB16_21
# BB#20:                                # %if.then64
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	$0, 28(%rdi)
.LBB16_21:                              # %if.end67
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	24(%rdi), %edx
	movb	%r13b, -16(%rsi)
	decl	%edx
	movl	%edx, 24(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	24(%rdi), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movl	1092(%rdi), %edx
	cmpl	$1, %esi
	movb	%r13b, -16(%rbx)
	sete	%bl
	incl	%edx
	movl	%edx, 1092(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	1092(%rdi), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#22:                                # %cont_BB189
                                        #   in Loop: Header=BB16_3 Depth=1
	xorb	%bl, %cl
	movl	64080(%rdi), %edx
	incl	%edx
	cmpl	%edx, %esi
	je	.LBB16_3
# BB#23:                                # %if.end84
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#24:                                # %cont_BB196
                                        #   in Loop: Header=BB16_3 Depth=1
	movzbl	%cl, %ecx
	movl	64(%rdi), %eax
	cmpl	%eax, %ecx
	jne	.LBB16_25
# BB#26:                                # %if.end92
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$2, 16(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#27:                                # %cont_BB209
                                        #   in Loop: Header=BB16_3 Depth=1
	imull	$100000, 40(%rdi), %eax # imm = 0x186A0
	movb	$1, %sil
	cmpl	%eax, %ecx
	jae	.LBB16_75
# BB#28:                                # %if.end100
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movq	3152(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	(%rdx,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r13b, -16(%rdx)
	movl	%ecx, 60(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	60(%rdi), %cl
	movb	-16(%rdx), %r9b
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	60(%rdi), %edx
	movb	%r13b, -16(%rsi)
	shrl	$8, %edx
	movl	%edx, 60(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#29:                                # %cont_BB235
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	24(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB16_33
# BB#30:                                # %if.then114
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movslq	28(%rdi), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rsi,4), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%esi, 24(%rdi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	28(%rdi), %edx
	movb	%r13b, -16(%rsi)
	incl	%edx
	movl	%edx, 28(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#31:                                # %cont_BB253
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	28(%rdi), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB16_33
# BB#32:                                # %if.then124
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	$0, 28(%rdi)
.LBB16_33:                              # %if.end127
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	24(%rdi), %edx
	movb	%r13b, -16(%rsi)
	decl	%edx
	movl	%edx, 24(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	24(%rdi), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movl	1092(%rdi), %edx
	cmpl	$1, %esi
	movb	%r13b, -16(%rbx)
	sete	%bl
	incl	%edx
	movl	%edx, 1092(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	1092(%rdi), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#34:                                # %cont_BB279
                                        #   in Loop: Header=BB16_3 Depth=1
	xorb	%bl, %cl
	movl	64080(%rdi), %edx
	incl	%edx
	cmpl	%edx, %esi
	je	.LBB16_3
# BB#35:                                # %if.end145
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#36:                                # %cont_BB286
                                        #   in Loop: Header=BB16_3 Depth=1
	movzbl	%cl, %ecx
	movl	64(%rdi), %eax
	cmpl	%eax, %ecx
	jne	.LBB16_25
# BB#37:                                # %if.end153
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$3, 16(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#38:                                # %cont_BB299
                                        #   in Loop: Header=BB16_3 Depth=1
	imull	$100000, 40(%rdi), %eax # imm = 0x186A0
	movb	$1, %sil
	cmpl	%eax, %ecx
	jae	.LBB16_75
# BB#39:                                # %if.end161
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movq	3152(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	(%rdx,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r13b, -16(%rdx)
	movl	%ecx, 60(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	60(%rdi), %cl
	movb	-16(%rdx), %r9b
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	60(%rdi), %edx
	movb	%r13b, -16(%rsi)
	shrl	$8, %edx
	movl	%edx, 60(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#40:                                # %cont_BB325
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	24(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB16_44
# BB#41:                                # %if.then175
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movslq	28(%rdi), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rsi,4), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%esi, 24(%rdi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	28(%rdi), %edx
	movb	%r13b, -16(%rsi)
	incl	%edx
	movl	%edx, 28(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#42:                                # %cont_BB343
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	28(%rdi), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB16_44
# BB#43:                                # %if.then185
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	$0, 28(%rdi)
.LBB16_44:                              # %if.end188
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	24(%rdi), %edx
	movb	%r13b, -16(%rsi)
	decl	%edx
	movl	%edx, 24(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	24(%rdi), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movl	1092(%rdi), %edx
	cmpl	$1, %esi
	movb	%r13b, -16(%rbx)
	sete	%bl
	incl	%edx
	movl	%edx, 1092(%rdi)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	1092(%rdi), %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#45:                                # %cont_BB369
                                        #   in Loop: Header=BB16_3 Depth=1
	xorb	%bl, %cl
	movl	64080(%rdi), %edx
	incl	%edx
	cmpl	%edx, %esi
	je	.LBB16_3
# BB#46:                                # %if.end206
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#47:                                # %cont_BB376
                                        #   in Loop: Header=BB16_3 Depth=1
	movzbl	%cl, %ecx
	movl	64(%rdi), %eax
	cmpl	%eax, %ecx
	jne	.LBB16_25
# BB#48:                                # %if.end214
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#49:                                # %cont_BB388
                                        #   in Loop: Header=BB16_3 Depth=1
	imull	$100000, 40(%rdi), %eax # imm = 0x186A0
	movb	$1, %sil
	cmpl	%eax, %ecx
	jae	.LBB16_75
# BB#50:                                # %if.end221
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movq	3152(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	(%rdx,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r13b, -16(%rdx)
	movl	%ecx, 60(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	60(%rdi), %dl
	movb	-16(%rcx), %r9b
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	60(%rdi), %ecx
	movb	%r13b, -16(%rsi)
	shrl	$8, %ecx
	movl	%ecx, 60(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rcx)
	jne	.LBB16_118
# BB#51:                                # %cont_BB414
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	24(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB16_55
# BB#52:                                # %if.then235
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movslq	28(%rdi), %rsi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movl	BZ2_rNums(,%rsi,4), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	%esi, 24(%rdi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	28(%rdi), %ecx
	movb	%r13b, -16(%rsi)
	incl	%ecx
	movl	%ecx, 28(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rcx)
	jne	.LBB16_118
# BB#53:                                # %cont_BB432
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	28(%rdi), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB16_55
# BB#54:                                # %if.then245
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%rdi)
.LBB16_55:                              # %if.end248
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	24(%rdi), %ebx
	andb	$1, %r9b
	movb	%r13b, -16(%rsi)
	decl	%ebx
	movl	%ebx, 24(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	24(%rdi), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movl	1092(%rdi), %ecx
	cmpl	$1, %esi
	movb	%r13b, -16(%rbx)
	sete	%bl
	incl	%ecx
	movl	%ecx, 1092(%rdi)
	xorb	%bl, %dl
	movzbl	%dl, %edx
	addl	$4, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r9b, -16(%rcx)
	movl	%edx, 16(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	testb	%r8b, %r8b
	jne	.LBB16_118
# BB#56:                                # %cont_BB461
                                        #   in Loop: Header=BB16_3 Depth=1
	imull	$100000, 40(%rdi), %eax # imm = 0x186A0
	movb	$1, %sil
	cmpl	%eax, %ecx
	jae	.LBB16_75
# BB#57:                                # %if.end269
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movq	3152(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movl	(%rdx,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r13b, -16(%rdx)
	movl	%ecx, 60(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r13b, -16(%rdx)
	movzbl	%cl, %eax
	movl	%eax, 64(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %edx
	movb	%r13b, -16(%rcx)
	shrl	$8, %edx
	movl	%edx, 60(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rcx)
	jne	.LBB16_118
# BB#58:                                # %cont_BB489
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	24(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB16_62
# BB#59:                                # %if.then285
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movslq	28(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%ecx, 24(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	28(%rdi), %edx
	movb	%r13b, -16(%rcx)
	incl	%edx
	movl	%edx, 28(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rcx)
	jne	.LBB16_118
# BB#60:                                # %cont_BB507
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	28(%rdi), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB16_62
# BB#61:                                # %if.then295
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%rdi)
.LBB16_62:                              # %if.end298
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	24(%rdi), %edx
	movb	%r13b, -16(%rcx)
	decl	%edx
	movl	%edx, 24(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	24(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	64(%rdi), %esi
	cmpl	$1, %ecx
	movb	%r13b, -16(%rdx)
	sete	%al
	movzbl	%al, %eax
	xorl	%esi, %eax
	movl	%eax, 64(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	1092(%rdi), %edx
	movb	%r13b, -16(%rcx)
	incl	%edx
	movl	%edx, 1092(%rdi)
	jmp	.LBB16_3
.LBB16_7:                               # %if.end6
                                        #   in Loop: Header=BB16_3 Depth=1
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	12(%rdi), %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movq	(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movq	24(%rdx), %rax
	movb	%r13b, -43(%rbp)
	movb	%cl, (%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	3184(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movzbl	3187(%rdi), %edx
	shll	$8, %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movzbl	12(%rdi), %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rbx)
	xorl	%edx, %esi
	movl	BZ2_crc32Table(,%rsi,4), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	movb	%r13b, -16(%rsi)
	xorl	%ecx, %edx
	movl	%edx, 3184(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	16(%rdi), %edx
	movb	%r13b, -16(%rcx)
	decl	%edx
	movl	%edx, 16(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movq	24(%rcx), %rsi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movb	%r13b, -16(%rdx)
	incq	%rsi
	movq	%rsi, 24(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	32(%rcx), %esi
	movb	%r13b, -16(%rdx)
	decl	%esi
	movl	%esi, 32(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movl	36(%rcx), %esi
	movb	%r13b, -16(%rdx)
	incl	%esi
	movl	%esi, 36(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	testb	%r8b, %r8b
	movb	%r13b, -16(%rdx)
	jne	.LBB16_118
# BB#8:                                 # %cont_BB76
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	36(%rcx), %eax
	testl	%eax, %eax
	jne	.LBB16_3
	jmp	.LBB16_9
.LBB16_25:                              # %if.then89
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rsi)
	andb	$1, %r9b
	movb	%r9b, -16(%rsi)
	movl	%ecx, 64(%rdi)
	jmp	.LBB16_3
.LBB16_63:                              # %if.else
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movl	3184(%rdi), %r15d
	movb	-16(%rcx), %al
	movb	%al, -86(%rbp)          # 1-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	12(%rdi), %r9b
	movb	-16(%rcx), %al
	movb	%al, -85(%rbp)          # 1-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	16(%rdi), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	-16(%rcx), %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	1092(%rdi), %edx
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movb	-16(%rcx), %bl
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	64(%rdi), %r12d
	movb	-16(%rcx), %cl
	movb	%cl, -87(%rbp)          # 1-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	3152(%rdi), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movb	-16(%rcx), %cl
	movb	%cl, -107(%rbp)         # 1-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	60(%rdi), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movb	-16(%rcx), %r14b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movb	-16(%rdx), %r8b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movl	32(%rcx), %esi
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movb	-16(%rdx), %r11b
	movb	%r11b, -117(%rbp)       # 1-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movl	40(%rdi), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movl	%r12d, %edx
	movb	%r13b, -16(%rcx)
	movl	64080(%rdi), %ecx
	incl	%ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movb	%r11b, %r10b
	movl	%esi, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	%r14b, %cl
	jmp	.LBB16_64
	.align	16, 0x90
.LBB16_105:                             # %if.then410
                                        #   in Loop: Header=BB16_64 Depth=1
	xorb	%al, %al
	movb	$0, -85(%rbp)           # 1-byte Folded Spill
	movb	%r14b, %r9b
	movb	$0, -86(%rbp)           # 1-byte Folded Spill
	xorb	%r10b, %r10b
	.align	16, 0x90
.LBB16_64:                              # %while.body323
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_68 Depth 2
	movb	%al, %r11b
	movb	%r10b, -73(%rbp)        # 1-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movb	%bl, -106(%rbp)         # 1-byte Spill
	movb	%cl, -105(%rbp)         # 1-byte Spill
	movb	-87(%rbp), %r12b        # 1-byte Reload
	xorb	%al, %al
	testb	%al, %al
	movb	-85(%rbp), %r10b        # 1-byte Reload
	movb	-86(%rbp), %dl          # 1-byte Reload
	movl	-84(%rbp), %r14d        # 4-byte Reload
	jne	.LBB16_118
# BB#65:                                # %cont_BB574
                                        #   in Loop: Header=BB16_64 Depth=1
	testl	%r14d, %r14d
	jle	.LBB16_66
# BB#67:                                # %if.then326
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	%r14d, %ebx
	decq	%rbx
	xorl	%esi, %esi
	jmp	.LBB16_68
	.align	16, 0x90
.LBB16_119:                             # %if.end336
                                        #   in Loop: Header=BB16_68 Depth=2
	movb	%r10b, %al
	andb	$1, %al
	movb	%al, -42(%rbp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movb	%r9b, (%rax,%rsi)
	movzbl	%r9b, %edx
	movl	%r15d, %ecx
	shrl	$24, %ecx
	xorl	%edx, %ecx
	movq	%rsp, %rdx
	incq	%rsi
	leaq	-16(%rdx), %rax
	xorb	%r11b, %r11b
	movq	%rax, %rsp
	shll	$8, %r15d
	andb	$1, %r8b
	movb	$0, -16(%rdx)
	movl	BZ2_crc32Table(,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r8b, -16(%rdx)
	xorl	%ecx, %r15d
	xorb	%r8b, %r8b
	xorb	%dl, %dl
	movb	$0, -73(%rbp)           # 1-byte Folded Spill
.LBB16_68:                              # %while.body328
                                        #   Parent Loop BB16_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#69:                                # %cont_BB581
                                        #   in Loop: Header=BB16_68 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpl	%esi, %ecx
	je	.LBB16_70
# BB#76:                                # %if.end332
                                        #   in Loop: Header=BB16_68 Depth=2
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#77:                                # %cont_BB584
                                        #   in Loop: Header=BB16_68 Depth=2
	cmpl	%esi, %ebx
	jne	.LBB16_119
# BB#78:                                # %if.then335
                                        #   in Loop: Header=BB16_64 Depth=1
	addq	%rsi, -72(%rbp)         # 8-byte Folded Spill
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %ecx
	subq	%rsi, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	-106(%rbp), %al         # 1-byte Reload
	jmp	.LBB16_79
.LBB16_66:                              #   in Loop: Header=BB16_64 Depth=1
	movl	-100(%rbp), %r14d       # 4-byte Reload
	jmp	.LBB16_83
	.align	16, 0x90
.LBB16_79:                              # %s_state_out_len_eq_one
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	%al, -106(%rbp)         # 1-byte Spill
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#80:                                # %cont_BB607
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	%dl, %al
	movq	-56(%rbp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	je	.LBB16_81
# BB#82:                                # %if.end351
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	%r10b, %cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movb	%r9b, (%rbx)
	movzbl	%r9b, %ecx
	movl	%r15d, %esi
	shrl	$24, %esi
	xorl	%ecx, %esi
	movq	%rsp, %rcx
	decl	%edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	leaq	-16(%rcx), %rdx
	incq	%rbx
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	shll	$8, %r15d
	movb	%r8b, %dl
	andb	$1, %dl
	movb	$0, -16(%rcx)
	movl	BZ2_crc32Table(,%rsi,4), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%dl, -16(%rsi)
	xorl	%ecx, %r15d
	movl	-100(%rbp), %r14d       # 4-byte Reload
	movb	%al, %dl
.LBB16_83:                              # %if.end361
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#84:                                # %cont_BB629
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	%r10b, %r11b
	movb	$1, %sil
	movl	-104(%rbp), %eax        # 4-byte Reload
	cmpl	%eax, -80(%rbp)         # 4-byte Folded Reload
	jg	.LBB16_75
# BB#85:                                # %if.end365
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$0, %al
	testb	%al, %al
	movb	%r11b, %r10b
	jne	.LBB16_118
# BB#86:                                # %cont_BB632
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	cmpl	%eax, -80(%rbp)         # 4-byte Folded Reload
	je	.LBB16_87
# BB#88:                                # %if.end369
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#89:                                # %cont_BB637
                                        #   in Loop: Header=BB16_64 Depth=1
	imull	$100000, -112(%rbp), %r11d # 4-byte Folded Reload
                                        # imm = 0x186A0
	movb	$1, %sil
	cmpl	%r11d, -60(%rbp)        # 4-byte Folded Reload
	jae	.LBB16_75
# BB#90:                                # %if.end375
                                        #   in Loop: Header=BB16_64 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	-107(%rbp), %r12b       # 1-byte Reload
	andb	$1, %r12b
	movb	%r12b, -16(%rcx)
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#91:                                # %cont_BB649
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Folded Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	incl	-80(%rbp)               # 4-byte Folded Spill
	movzbl	%cl, %eax
	cmpl	%r14d, %eax
	je	.LBB16_94
# BB#92:                                # %if.then385
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, -105(%rbp)          # 1-byte Folded Spill
	movb	$0, %r8b
	movb	$0, %r12b
	movb	$0, %al
	movb	$0, %r10b
	jmp	.LBB16_93
.LBB16_94:                              # %if.end387
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#95:                                # %cont_BB653
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	cmpl	%eax, -80(%rbp)         # 4-byte Folded Reload
	je	.LBB16_96
# BB#97:                                # %if.end391
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#98:                                # %cont_BB657
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$1, %sil
	cmpl	%r11d, -60(%rbp)        # 4-byte Folded Reload
	jae	.LBB16_75
# BB#99:                                # %if.end396
                                        #   in Loop: Header=BB16_64 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, %al
	testb	%al, %al
	jne	.LBB16_118
# BB#100:                               # %cont_BB668
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Folded Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %esi
	movl	%esi, %eax
	shrl	$8, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	-80(%rbp), %eax         # 4-byte Reload
	incl	%eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	$2, -84(%rbp)           # 4-byte Folded Spill
	xorb	%cl, %cl
	cmpl	-104(%rbp), %eax        # 4-byte Folded Reload
	movb	$0, %r8b
	movb	$0, -87(%rbp)           # 1-byte Folded Spill
	movl	%r14d, %edx
	movb	$0, %bl
	movb	$0, %al
	movb	$0, -85(%rbp)           # 1-byte Folded Spill
	movb	%r14b, %r9b
	movb	$0, -86(%rbp)           # 1-byte Folded Spill
	movb	$0, %r10b
	je	.LBB16_64
# BB#101:                               # %if.end406
                                        #   in Loop: Header=BB16_64 Depth=1
	xorb	%bl, %bl
	testb	%bl, %bl
	jne	.LBB16_118
# BB#102:                               # %cont_BB672
                                        #   in Loop: Header=BB16_64 Depth=1
	movzbl	%sil, %edx
	cmpl	%r14d, %edx
	je	.LBB16_106
# BB#103:                               # %if.then410
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	$2, -84(%rbp)           # 4-byte Folded Spill
	.align	16, 0x90
.LBB16_104:                             # %if.then410
                                        #   in Loop: Header=BB16_64 Depth=1
	xorb	%cl, %cl
	xorb	%r8b, %r8b
	movb	$0, -87(%rbp)           # 1-byte Folded Spill
	xorb	%bl, %bl
	jmp	.LBB16_105
.LBB16_96:                              #   in Loop: Header=BB16_64 Depth=1
	movb	$0, -105(%rbp)          # 1-byte Folded Spill
	xorb	%r8b, %r8b
	xorb	%r12b, %r12b
	movl	%r14d, -100(%rbp)       # 4-byte Spill
	xorb	%al, %al
	xorb	%r10b, %r10b
.LBB16_93:                              # %if.then385
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	%r14b, %r9b
	xorb	%dl, %dl
	movb	$0, -73(%rbp)           # 1-byte Folded Spill
	jmp	.LBB16_79
.LBB16_106:                             # %if.end412
                                        #   in Loop: Header=BB16_64 Depth=1
	testb	%bl, %bl
	jne	.LBB16_118
# BB#107:                               # %cont_BB677
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$1, %sil
	cmpl	%r11d, -60(%rbp)        # 4-byte Folded Reload
	jae	.LBB16_75
# BB#108:                               # %if.end417
                                        #   in Loop: Header=BB16_64 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	testb	%bl, %bl
	jne	.LBB16_118
# BB#109:                               # %cont_BB688
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Folded Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %esi
	movl	%esi, %eax
	shrl	$8, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	-80(%rbp), %eax         # 4-byte Reload
	incl	%eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	$3, -84(%rbp)           # 4-byte Folded Spill
	xorb	%cl, %cl
	cmpl	-104(%rbp), %eax        # 4-byte Folded Reload
	movb	$0, %r8b
	movb	$0, -87(%rbp)           # 1-byte Folded Spill
	movl	%r14d, %edx
	movb	$0, %bl
	movb	$0, %al
	movb	$0, -85(%rbp)           # 1-byte Folded Spill
	movb	%r14b, %r9b
	movb	$0, -86(%rbp)           # 1-byte Folded Spill
	movb	$0, %r10b
	je	.LBB16_64
# BB#110:                               # %if.end427
                                        #   in Loop: Header=BB16_64 Depth=1
	xorb	%bl, %bl
	testb	%bl, %bl
	jne	.LBB16_118
# BB#111:                               # %cont_BB692
                                        #   in Loop: Header=BB16_64 Depth=1
	movzbl	%sil, %edx
	cmpl	%r14d, %edx
	je	.LBB16_113
# BB#112:                               # %if.then431
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	$3, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB16_104
.LBB16_113:                             # %if.end433
                                        #   in Loop: Header=BB16_64 Depth=1
	testb	%bl, %bl
	jne	.LBB16_118
# BB#114:                               # %cont_BB697
                                        #   in Loop: Header=BB16_64 Depth=1
	movb	$1, %sil
	cmpl	%r11d, -60(%rbp)        # 4-byte Folded Reload
	jae	.LBB16_75
# BB#115:                               # %if.end438
                                        #   in Loop: Header=BB16_64 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	testb	%bl, %bl
	jne	.LBB16_118
# BB#116:                               # %cont_BB711
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Folded Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %ecx
	movl	%ecx, %edx
	shrl	$8, %edx
	movb	$1, %sil
	cmpl	%r11d, %edx
	jae	.LBB16_75
# BB#117:                               # %if.end451
                                        #   in Loop: Header=BB16_64 Depth=1
	movl	-80(%rbp), %esi         # 4-byte Reload
	incl	%esi
	movzbl	%cl, %eax
	addl	$4, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movl	%edx, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	incl	%esi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movzbl	%cl, %edx
	xorb	%cl, %cl
	movb	$0, %r8b
	movb	$0, -87(%rbp)           # 1-byte Folded Spill
	movb	$0, %bl
	jmp	.LBB16_105
.LBB16_70:                              # %if.then331
	movb	%dl, %al
	addq	%rsi, -72(%rbp)         # 8-byte Folded Spill
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subl	%esi, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	subl	%esi, %r14d
	movl	%r14d, -84(%rbp)        # 4-byte Spill
	.align	16, 0x90
.LBB16_71:                              # %return_notr
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	-117(%rbp), %r14b       # 1-byte Reload
	orb	-73(%rbp), %r14b        # 1-byte Folded Reload
	orb	%r13b, %r14b
	movq	(%rdi), %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	subl	%edx, -116(%rbp)        # 4-byte Folded Spill
	andb	$1, %r14b
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movl	36(%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r13b, -16(%rdx)
	movl	36(%rcx), %ebx
	movb	%r14b, -16(%rdx)
	addl	-116(%rbp), %ebx        # 4-byte Folded Reload
	movl	%ebx, 36(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	xorb	%bl, %bl
	testb	%bl, %bl
	movb	%r13b, -16(%rdx)
	movl	-84(%rbp), %r14d        # 4-byte Reload
	je	.LBB16_72
	.align	16, 0x90
.LBB16_118:                             # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str155, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB16_118
.LBB16_72:                              # %cont_BB751
	movl	36(%rcx), %ecx
	cmpl	%esi, %ecx
	jae	.LBB16_74
# BB#73:                                # %if.then468
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	movl	40(%rcx), %esi
	movb	%r13b, -16(%rdx)
	incl	%esi
	movl	%esi, 40(%rcx)
.LBB16_74:                              # %if.end472
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	andb	$1, %al
	movb	%al, -16(%rcx)
	xorb	%sil, %sil
	movl	%r15d, 3184(%rdi)
	andb	$1, %r10b
	andb	$1, %r11b
	movb	%r11b, %r15b
	movb	-106(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	%r10b, %dl
	movb	%r12b, %r11b
	andb	$1, %r11b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%dl, -16(%rcx)
	movb	%r9b, 12(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r15b, -16(%rcx)
	movl	%r14d, 16(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	-107(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movb	-105(%rbp), %r12b       # 1-byte Reload
	andb	$1, %r12b
	movb	%r13b, -16(%rcx)
	movb	%bl, -16(%rcx)
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, 1092(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	andb	$1, %r8b
	movb	-73(%rbp), %bl          # 1-byte Reload
	andb	$1, %bl
	movb	%r13b, -16(%rcx)
	movb	%r11b, -16(%rcx)
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, 64(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%dl, -16(%rcx)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 3152(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, 60(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%r8b, -16(%rdx)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 24(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movq	(%rdi), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rdx)
	movb	%bl, -16(%rdx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, 32(%rcx)
.LBB16_75:                              # %return
	movzbl	%sil, %eax
	movb	$0, return_taint23(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB16_87:
	movb	%dl, %al
	xorb	%r11b, %r11b
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	%r14d, -100(%rbp)       # 4-byte Spill
	jmp	.LBB16_71
.LBB16_81:
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	xorb	%r11b, %r11b
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB16_71
.Ltmp130:
	.size	unRLE_obuf_to_output_FAST, .Ltmp130-unRLE_obuf_to_output_FAST
	.cfi_endproc

	.globl	BZ2_bzDecompressEnd
	.align	16, 0x90
	.type	BZ2_bzDecompressEnd,@function
BZ2_bzDecompressEnd:                    # @BZ2_bzDecompressEnd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
.Ltmp137:
	.cfi_offset %rbx, -48
.Ltmp138:
	.cfi_offset %r12, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB17_17
# BB#1:                                 # %cont_BB
	movl	$-2, %eax
	testq	%r14, %r14
	je	.LBB17_16
# BB#2:                                 # %if.end
	movb	param_taint89(%rip), %bl
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	andb	$1, %bl
	movb	%bl, -16(%rcx)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB17_17
# BB#3:                                 # %cont_BB3
	movq	48(%r14), %r15
	movl	$-2, %eax
	testq	%r15, %r15
	je	.LBB17_16
# BB#4:                                 # %if.end3
	movb	-16(%rcx), %r12b
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r12b
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB17_17
# BB#5:                                 # %cont_BB9
	movq	(%r15), %rcx
	movl	$-2, %eax
	cmpq	%r14, %rcx
	jne	.LBB17_16
# BB#6:                                 # %if.end7
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB17_17
# BB#7:                                 # %cont_BB15
	movq	3152(%r15), %rax
	testq	%rax, %rax
	je	.LBB17_9
# BB#8:                                 # %if.then9
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	3152(%r15), %rsi
	callq	*%rax
.LBB17_9:                               # %if.end11
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB17_17
# BB#10:                                # %cont_BB31
	movq	3160(%r15), %rax
	testq	%rax, %rax
	je	.LBB17_12
# BB#11:                                # %if.then13
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	3160(%r15), %rsi
	callq	*%rax
.LBB17_12:                              # %if.end17
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	je	.LBB17_13
	.align	16, 0x90
.LBB17_17:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str156, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB17_17
.LBB17_13:                              # %cont_BB47
	movq	3168(%r15), %rax
	testq	%rax, %rax
	je	.LBB17_15
# BB#14:                                # %if.then19
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	3168(%r15), %rsi
	callq	*%rax
.LBB17_15:                              # %if.end23
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	64(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	48(%r14), %rsi
	callq	*%rax
	xorl	%eax, %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	$0, 48(%r14)
.LBB17_16:                              # %return
	movb	$0, return_taint25(%rip)
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp141:
	.size	BZ2_bzDecompressEnd, .Ltmp141-BZ2_bzDecompressEnd
	.cfi_endproc

	.globl	BZ2_bzWriteOpen
	.align	16, 0x90
	.type	BZ2_bzWriteOpen,@function
BZ2_bzWriteOpen:                        # @BZ2_bzWriteOpen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
	movl	%r8d, %r14d
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r13
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#1:                                 # %cont_BB
	movb	param_taint41(%rip), %r12b
	movb	param_taint42(%rip), %al
	movb	%al, -54(%rbp)          # 1-byte Spill
	movb	param_taint43(%rip), %al
	movb	%al, -53(%rbp)          # 1-byte Spill
	movb	param_taint44(%rip), %al
	movb	%al, -55(%rbp)          # 1-byte Spill
	testq	%r13, %r13
	je	.LBB18_3
# BB#2:                                 # %if.then
	movb	$0, -41(%rbp)
	movl	$0, (%r13)
.LBB18_3:                               # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#4:                                 # %cont_BB7
	movb	$1, %al
	testb	%al, %al
	jne	.LBB18_6
# BB#5:                                 # %if.then2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096
.LBB18_6:                               # %if.end3
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#7:                                 # %cont_BB10
	testq	%r15, %r15
	je	.LBB18_20
# BB#8:                                 # %lor.lhs.false
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#9:                                 # %cont_BB13
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	jle	.LBB18_20
# BB#10:                                # %lor.lhs.false6
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#11:                                # %cont_BB16
	cmpl	$9, -52(%rbp)           # 4-byte Folded Reload
	jg	.LBB18_20
# BB#12:                                # %lor.lhs.false8
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#13:                                # %cont_BB19
	testl	%r14d, %r14d
	js	.LBB18_20
# BB#14:                                # %lor.lhs.false10
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#15:                                # %cont_BB22
	cmpl	$250, %r14d
	jg	.LBB18_20
# BB#16:                                # %lor.lhs.false12
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#17:                                # %cont_BB25
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	js	.LBB18_20
# BB#18:                                # %lor.lhs.false14
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#19:                                # %cont_BB28
	cmpl	$5, -48(%rbp)           # 4-byte Folded Reload
	jl	.LBB18_26
.LBB18_20:                              # %if.then16
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#21:                                # %cont_BB31
	testq	%r13, %r13
	je	.LBB18_23
# BB#22:                                # %if.then18
	movb	$0, -41(%rbp)
	movl	$-2, (%r13)
.LBB18_23:                              # %if.end19
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB18_62
# BB#24:                                # %cont_BB34
	xorl	%eax, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB18_61
# BB#25:                                # %if.then21
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-2, 5096
	xorb	%dl, %dl
	.align	16, 0x90
.LBB18_61:                              # %return
	andb	$1, %dl
	movb	%dl, return_taint(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB18_26:                              # %if.end24
	movq	%r15, %rdi
	callq	ferror
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB18_62
# BB#27:                                # %cont_BB38
	testl	%eax, %eax
	je	.LBB18_34
# BB#28:                                # %if.then25
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#29:                                # %cont_BB41
	testq	%r13, %r13
	je	.LBB18_31
# BB#30:                                # %if.then27
	movb	$0, -41(%rbp)
	movl	$-6, (%r13)
.LBB18_31:                              # %if.end28
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB18_62
# BB#32:                                # %cont_BB44
	xorl	%eax, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB18_61
# BB#33:                                # %if.then30
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-6, 5096
	xorb	%dl, %dl
	jmp	.LBB18_61
.LBB18_34:                              # %if.end33
	movl	$5104, %edi             # imm = 0x13F0
	callq	malloc
	movq	%rax, %rbx
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB18_62
# BB#35:                                # %cont_BB48
	xorb	%al, %al
	testq	%rbx, %rbx
	je	.LBB18_36
# BB#42:                                # %if.end44
	testb	%al, %al
	jne	.LBB18_62
# BB#43:                                # %cont_BB58
	testq	%r13, %r13
	je	.LBB18_45
# BB#44:                                # %if.then46
	movb	$0, -41(%rbp)
	movl	$0, (%r13)
.LBB18_45:                              # %if.end47
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB18_62
# BB#46:                                # %cont_BB61
	movq	%r15, %rsi
	testq	%rbx, %rbx
	je	.LBB18_48
# BB#47:                                # %if.then49
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%rbx)
.LBB18_48:                              # %if.end51
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%r15b, %r15b
	andb	$1, %r15b
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	andb	$1, %r12b
	xorb	%al, %al
	movb	$0, 5100(%rbx)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 5008(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movq	%rsi, (%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	$0, -16(%rcx)
	movb	$1, 5012(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	$0, 5072(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	$0, 5080(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r15b, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	$0, 5088(%rbx)
	jne	.LBB18_62
# BB#49:                                # %cont_BB75
	testl	%r14d, %r14d
	movb	-55(%rbp), %dl          # 1-byte Reload
	jne	.LBB18_51
# BB#50:                                # %if.then55
	movl	$30, %r14d
	xorb	%dl, %dl
.LBB18_51:                              # %if.end56
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	%r15b, param_taint57(%rip)
	leaq	5016(%rbx), %rdi
	andb	$1, %dl
	movb	-53(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	-54(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	%cl, param_taint58(%rip)
	movb	%al, param_taint59(%rip)
	movb	%dl, param_taint60(%rip)
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%r14d, %ecx
	callq	BZ2_bzCompressInit
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB18_62
# BB#52:                                # %cont_BB79
	testl	%eax, %eax
	je	.LBB18_60
# BB#53:                                # %if.then60
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB18_62
# BB#54:                                # %cont_BB82
	movb	return_taint8(%rip), %cl
	testq	%r13, %r13
	je	.LBB18_56
# BB#55:                                # %if.then62
	movb	%cl, %dl
	andb	$1, %dl
	movb	%dl, -41(%rbp)
	movl	%eax, (%r13)
.LBB18_56:                              # %if.end63
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB18_62
# BB#57:                                # %cont_BB85
	testq	%rbx, %rbx
	je	.LBB18_59
# BB#58:                                # %if.then65
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	andb	$1, %cl
	movb	%cl, -16(%rdx)
	movl	%eax, 5096(%rbx)
.LBB18_59:                              # %if.end67
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
	xorb	%dl, %dl
	jmp	.LBB18_61
.LBB18_36:                              # %if.then36
	testb	%al, %al
	jne	.LBB18_62
# BB#37:                                # %cont_BB51
	testq	%r13, %r13
	je	.LBB18_39
# BB#38:                                # %if.then38
	movb	$0, -41(%rbp)
	movl	$-3, (%r13)
.LBB18_39:                              # %if.end39
	xorb	%dl, %dl
	testb	%dl, %dl
	je	.LBB18_40
	.align	16, 0x90
.LBB18_62:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str157, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB18_62
.LBB18_60:                              # %if.end68
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5024(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	movb	$1, 5100(%rbx)
	xorb	%dl, %dl
	movq	%rbx, %rax
	jmp	.LBB18_61
.LBB18_40:                              # %cont_BB54
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB18_61
# BB#41:                                # %if.then41
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-3, 5096(%rbx)
	xorb	%dl, %dl
	jmp	.LBB18_61
.Ltmp153:
	.size	BZ2_bzWriteOpen, .Ltmp153-BZ2_bzWriteOpen
	.cfi_endproc

	.globl	BZ2_bzWrite
	.align	16, 0x90
	.type	BZ2_bzWrite,@function
BZ2_bzWrite:                            # @BZ2_bzWrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp160:
	.cfi_offset %rbx, -56
.Ltmp161:
	.cfi_offset %r12, -48
.Ltmp162:
	.cfi_offset %r13, -40
.Ltmp163:
	.cfi_offset %r14, -32
.Ltmp164:
	.cfi_offset %r15, -24
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %r13
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#1:                                 # %cont_BB
	movb	param_taint46(%rip), %bl
	movb	param_taint47(%rip), %al
	movb	%al, -57(%rbp)          # 1-byte Spill
	movb	param_taint48(%rip), %r15b
	testq	%rdi, %rdi
	je	.LBB19_3
# BB#2:                                 # %if.then
	movb	$0, -41(%rbp)
	movl	$0, (%rdi)
.LBB19_3:                               # %if.end
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#4:                                 # %cont_BB6
	testq	%r13, %r13
	je	.LBB19_6
# BB#5:                                 # %if.then2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, %cl
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%r13)
.LBB19_6:                               # %if.end3
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#7:                                 # %cont_BB9
	testq	%r13, %r13
	je	.LBB19_12
# BB#8:                                 # %lor.lhs.false
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#9:                                 # %cont_BB12
	testq	%r14, %r14
	je	.LBB19_12
# BB#10:                                # %lor.lhs.false6
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#11:                                # %cont_BB15
	testl	%r12d, %r12d
	js	.LBB19_12
# BB#18:                                # %if.end16
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %bl
	movb	%bl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#19:                                # %cont_BB26
	movb	5012(%r13), %al
	testb	%al, %al
	je	.LBB19_20
# BB#26:                                # %if.end25
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r13), %rdi
	callq	ferror
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB19_40
# BB#27:                                # %cont_BB39
	testl	%eax, %eax
	jne	.LBB19_28
# BB#34:                                # %if.end35
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#35:                                # %cont_BB49
	testl	%r12d, %r12d
	je	.LBB19_36
# BB#41:                                # %if.end45
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	andb	$1, %r15b
	movb	-57(%rbp), %dl          # 1-byte Reload
	andb	$1, %dl
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%r15b, -16(%rax)
	movl	%r12d, 5024(%r13)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%dl, -16(%rax)
	movq	%r14, 5016(%r13)
	leaq	8(%r13), %r15
	xorb	%r12b, %r12b
	.align	16, 0x90
.LBB19_42:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	leaq	5016(%r13), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$5000, 5048(%r13)       # imm = 0x1388
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
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, -16(%rax)
	movq	%r15, 5040(%r13)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%bl, param_taint75(%rip)
	movb	$0, param_taint76(%rip)
	xorl	%esi, %esi
	callq	BZ2_bzCompress
	testb	%r12b, %r12b
	jne	.LBB19_40
# BB#43:                                # %cont_BB70
                                        #   in Loop: Header=BB19_42 Depth=1
	cmpl	$1, %eax
	jne	.LBB19_44
# BB#50:                                # %if.end61
                                        #   in Loop: Header=BB19_42 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rax)
	jne	.LBB19_40
# BB#51:                                # %cont_BB84
                                        #   in Loop: Header=BB19_42 Depth=1
	movl	5048(%r13), %eax
	cmpl	$4999, %eax             # imm = 0x1387
	ja	.LBB19_56
# BB#52:                                # %if.then65
                                        #   in Loop: Header=BB19_42 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	5048(%r13), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	$5000, %r14d            # imm = 0x1388
	subl	%eax, %r14d
	movq	%rsp, %rax
	movslq	%r14d, %rdx
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r13), %rcx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	fwrite
	testb	%r12b, %r12b
	jne	.LBB19_40
# BB#53:                                # %cont_BB99
                                        #   in Loop: Header=BB19_42 Depth=1
	cmpl	%eax, %r14d
	jne	.LBB19_28
# BB#54:                                # %lor.lhs.false75
                                        #   in Loop: Header=BB19_42 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r13), %rdi
	callq	ferror
	testb	%r12b, %r12b
	jne	.LBB19_40
# BB#55:                                # %cont_BB105
                                        #   in Loop: Header=BB19_42 Depth=1
	testl	%eax, %eax
	jne	.LBB19_28
.LBB19_56:                              # %if.end90
                                        #   in Loop: Header=BB19_42 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r12b, %r12b
	movb	%bl, -16(%rax)
	jne	.LBB19_40
# BB#57:                                # %cont_BB119
                                        #   in Loop: Header=BB19_42 Depth=1
	movl	5024(%r13), %eax
	testl	%eax, %eax
	jne	.LBB19_42
.LBB19_36:                              # %if.then37
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#37:                                # %cont_BB52
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB19_39
# BB#38:                                # %if.then39
	movb	$0, -41(%rbp)
	movl	$0, (%rax)
.LBB19_39:                              # %if.end40
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#58:                                # %cont_BB125
	testq	%r13, %r13
	je	.LBB19_60
# BB#59:                                # %if.then102
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%r13)
	jmp	.LBB19_60
.LBB19_12:                              # %if.then8
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#13:                                # %cont_BB18
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB19_15
# BB#14:                                # %if.then10
	movb	$0, -41(%rbp)
	movl	$-2, (%rax)
.LBB19_15:                              # %if.end11
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#16:                                # %cont_BB21
	testq	%r13, %r13
	je	.LBB19_60
# BB#17:                                # %if.then13
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %bl
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-2, 5096(%r13)
	.align	16, 0x90
.LBB19_60:                              # %return
	movb	$0, return_taint1(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB19_20:                              # %if.then17
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#21:                                # %cont_BB29
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB19_23
# BB#22:                                # %if.then19
	movb	$0, -41(%rbp)
	movl	$-1, (%rax)
.LBB19_23:                              # %if.end20
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#24:                                # %cont_BB32
	testq	%r13, %r13
	je	.LBB19_60
# BB#25:                                # %if.then22
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-1, 5096(%r13)
	jmp	.LBB19_60
.LBB19_44:                              # %if.then53
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB19_40
# BB#45:                                # %cont_BB73
	movb	return_taint15(%rip), %cl
	movq	-56(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB19_47
# BB#46:                                # %if.then55
	movb	%cl, %dl
	andb	$1, %dl
	movb	%dl, -41(%rbp)
	movl	%eax, (%rsi)
.LBB19_47:                              # %if.end56
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB19_40
# BB#48:                                # %cont_BB76
	testq	%r13, %r13
	je	.LBB19_60
# BB#49:                                # %if.then58
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	andb	$1, %cl
	movb	%cl, -16(%rdx)
	movl	%eax, 5096(%r13)
	jmp	.LBB19_60
.LBB19_28:                              # %if.then27
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB19_40
# BB#29:                                # %cont_BB42
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB19_31
# BB#30:                                # %if.then29
	movb	$0, -41(%rbp)
	movl	$-6, (%rax)
.LBB19_31:                              # %if.end30
	xorb	%al, %al
	testb	%al, %al
	je	.LBB19_32
	.align	16, 0x90
.LBB19_40:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str158, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB19_40
.LBB19_32:                              # %cont_BB45
	testq	%r13, %r13
	je	.LBB19_60
# BB#33:                                # %if.then32
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-6, 5096(%r13)
	jmp	.LBB19_60
.Ltmp165:
	.size	BZ2_bzWrite, .Ltmp165-BZ2_bzWrite
	.cfi_endproc

	.globl	BZ2_bzWriteClose
	.align	16, 0x90
	.type	BZ2_bzWriteClose,@function
BZ2_bzWriteClose:                       # @BZ2_bzWriteClose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp168:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp169:
	.cfi_def_cfa_offset 32
.Ltmp170:
	.cfi_offset %rbx, -16
	movq	%r8, %r9
	movb	param_taint94(%rip), %r8b
	movb	param_taint93(%rip), %r10b
	movb	param_taint92(%rip), %r11b
	movb	param_taint91(%rip), %al
	movb	param_taint90(%rip), %bl
	movb	%bl, param_taint95(%rip)
	movb	%al, param_taint96(%rip)
	movb	%r11b, param_taint97(%rip)
	movb	%r10b, param_taint98(%rip)
	movb	$0, param_taint99(%rip)
	movb	%r8b, param_taint100(%rip)
	movb	$0, param_taint101(%rip)
	movq	$0, (%rsp)
	xorl	%r8d, %r8d
	callq	BZ2_bzWriteClose64
	movb	$0, return_taint26(%rip)
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp171:
	.size	BZ2_bzWriteClose, .Ltmp171-BZ2_bzWriteClose
	.cfi_endproc

	.globl	BZ2_bzWriteClose64
	.align	16, 0x90
	.type	BZ2_bzWriteClose64,@function
BZ2_bzWriteClose64:                     # @BZ2_bzWriteClose64
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Ltmp178:
	.cfi_offset %rbx, -56
.Ltmp179:
	.cfi_offset %r12, -48
.Ltmp180:
	.cfi_offset %r13, -40
.Ltmp181:
	.cfi_offset %r14, -32
.Ltmp182:
	.cfi_offset %r15, -24
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rcx, %r13
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#1:                                 # %cont_BB
	movb	param_taint96(%rip), %r14b
	testq	%rbx, %rbx
	je	.LBB21_2
# BB#8:                                 # %if.end6
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r14b
	movb	%r14b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#9:                                 # %cont_BB16
	movb	5012(%rbx), %al
	testb	%al, %al
	je	.LBB21_10
# BB#16:                                # %if.end15
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%rbx), %rdi
	callq	ferror
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB21_85
# BB#17:                                # %cont_BB29
	testl	%eax, %eax
	jne	.LBB21_18
# BB#24:                                # %if.end25
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#25:                                # %cont_BB39
	testq	%r13, %r13
	je	.LBB21_27
# BB#26:                                # %if.then27
	movb	$0, -44(%rbp)
	movl	$0, (%r13)
.LBB21_27:                              # %if.end28
	movq	%r13, -104(%rbp)        # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#28:                                # %cont_BB43
	testq	%r12, %r12
	je	.LBB21_30
# BB#29:                                # %if.then30
	movb	$0, -43(%rbp)
	movl	$0, (%r12)
.LBB21_30:                              # %if.end31
	movq	%r12, -96(%rbp)         # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#31:                                # %cont_BB47
	testq	%r15, %r15
	je	.LBB21_33
# BB#32:                                # %if.then33
	movb	$0, -42(%rbp)
	movl	$0, (%r15)
.LBB21_33:                              # %if.end34
	movq	%r15, -88(%rbp)         # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#34:                                # %cont_BB51
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	.LBB21_36
# BB#35:                                # %if.then36
	movb	$0, -41(%rbp)
	movl	$0, (%rax)
.LBB21_36:                              # %if.end37
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#37:                                # %cont_BB55
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	jne	.LBB21_59
# BB#38:                                # %land.lhs.true
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#39:                                # %cont_BB61
	movl	5096(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB21_59
# BB#40:
	leaq	8(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	5016(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorb	%r12b, %r12b
	.align	16, 0x90
.LBB21_41:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$5000, 5048(%rbx)       # imm = 0x1388
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r14b, -16(%rax)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 5040(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r14b, param_taint75(%rip)
	movb	$0, param_taint76(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	$2, %esi
	callq	BZ2_bzCompress
	movl	%eax, %r13d
	testb	%r12b, %r12b
	jne	.LBB21_85
# BB#42:                                # %cont_BB71
                                        #   in Loop: Header=BB21_41 Depth=1
	cmpl	$3, %r13d
	je	.LBB21_51
# BB#43:                                # %land.lhs.true46
                                        #   in Loop: Header=BB21_41 Depth=1
	testb	%r12b, %r12b
	jne	.LBB21_85
# BB#44:                                # %cont_BB74
                                        #   in Loop: Header=BB21_41 Depth=1
	cmpl	$4, %r13d
	jne	.LBB21_45
.LBB21_51:                              # %if.end56
                                        #   in Loop: Header=BB21_41 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r12b, %r12b
	movb	%r14b, -16(%rax)
	jne	.LBB21_85
# BB#52:                                # %cont_BB88
                                        #   in Loop: Header=BB21_41 Depth=1
	movl	5048(%rbx), %eax
	cmpl	$4999, %eax             # imm = 0x1387
	ja	.LBB21_57
# BB#53:                                # %if.then60
                                        #   in Loop: Header=BB21_41 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	5048(%rbx), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	$5000, %r15d            # imm = 0x1388
	subl	%eax, %r15d
	movq	%rsp, %rax
	movslq	%r15d, %rdx
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%rbx), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$1, %esi
	callq	fwrite
	testb	%r12b, %r12b
	jne	.LBB21_85
# BB#54:                                # %cont_BB103
                                        #   in Loop: Header=BB21_41 Depth=1
	cmpl	%eax, %r15d
	jne	.LBB21_18
# BB#55:                                # %lor.lhs.false
                                        #   in Loop: Header=BB21_41 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%rbx), %rdi
	callq	ferror
	testb	%r12b, %r12b
	jne	.LBB21_85
# BB#56:                                # %cont_BB109
                                        #   in Loop: Header=BB21_41 Depth=1
	testl	%eax, %eax
	jne	.LBB21_18
.LBB21_57:                              # %if.end84
                                        #   in Loop: Header=BB21_41 Depth=1
	testb	%r12b, %r12b
	jne	.LBB21_85
# BB#58:                                # %cont_BB119
                                        #   in Loop: Header=BB21_41 Depth=1
	cmpl	$4, %r13d
	jne	.LBB21_41
.LBB21_59:                              # %if.end89
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#60:                                # %cont_BB122
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	jne	.LBB21_65
# BB#61:                                # %land.lhs.true91
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%rbx), %rdi
	callq	ferror
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB21_85
# BB#62:                                # %cont_BB128
	testl	%eax, %eax
	jne	.LBB21_65
# BB#63:                                # %if.then95
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%rbx), %rdi
	callq	fflush
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%rbx), %rdi
	callq	ferror
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB21_85
# BB#64:                                # %cont_BB137
	testl	%eax, %eax
	je	.LBB21_65
.LBB21_18:                              # %if.then17
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#19:                                # %cont_BB32
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB21_21
# BB#20:                                # %if.then19
	movb	$0, -45(%rbp)
	movl	$-6, (%rax)
.LBB21_21:                              # %if.end20
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#22:                                # %cont_BB35
	testq	%rbx, %rbx
	je	.LBB21_84
# BB#23:                                # %if.then22
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-6, 5096(%rbx)
	jmp	.LBB21_84
.LBB21_2:                               # %if.then
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#3:                                 # %cont_BB9
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB21_5
# BB#4:                                 # %if.then2
	movb	$0, -45(%rbp)
	movl	$0, (%rax)
.LBB21_5:                               # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#6:                                 # %cont_BB12
	testq	%rbx, %rbx
	je	.LBB21_84
# BB#7:                                 # %if.then4
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r14b
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%rbx)
	jmp	.LBB21_84
.LBB21_10:                              # %if.then7
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#11:                                # %cont_BB19
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB21_13
# BB#12:                                # %if.then9
	movb	$0, -45(%rbp)
	movl	$-1, (%rax)
.LBB21_13:                              # %if.end10
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#14:                                # %cont_BB22
	testq	%rbx, %rbx
	je	.LBB21_84
# BB#15:                                # %if.then12
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-1, 5096(%rbx)
	.align	16, 0x90
.LBB21_84:                              # %return
	movb	$0, return_taint27(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB21_45:                              # %if.then48
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#46:                                # %cont_BB77
	movb	return_taint15(%rip), %al
	movq	-72(%rbp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB21_48
# BB#47:                                # %if.then50
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -45(%rbp)
	movl	%r13d, (%rdx)
.LBB21_48:                              # %if.end51
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB21_85
# BB#49:                                # %cont_BB80
	testq	%rbx, %rbx
	je	.LBB21_84
# BB#50:                                # %if.then53
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	andb	$1, %al
	movb	%al, -16(%rcx)
	movl	%r13d, 5096(%rbx)
	jmp	.LBB21_84
.LBB21_65:                              # %if.end112
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#66:                                # %cont_BB147
	movq	-104(%rbp), %rdx        # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB21_68
# BB#67:                                # %if.then115
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	5028(%rbx), %eax
	movb	%r14b, -44(%rbp)
	movl	%eax, (%rdx)
.LBB21_68:                              # %if.end117
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#69:                                # %cont_BB154
	movq	-96(%rbp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB21_71
# BB#70:                                # %if.then120
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	5032(%rbx), %eax
	movb	%r14b, -43(%rbp)
	movl	%eax, (%rdx)
.LBB21_71:                              # %if.end122
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#72:                                # %cont_BB161
	movq	-88(%rbp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB21_74
# BB#73:                                # %if.then125
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	5052(%rbx), %eax
	movb	%r14b, -42(%rbp)
	movl	%eax, (%rdx)
.LBB21_74:                              # %if.end127
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#75:                                # %cont_BB168
	movq	16(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB21_77
# BB#76:                                # %if.then130
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	5056(%rbx), %eax
	movb	%r14b, -41(%rbp)
	movl	%eax, (%rdx)
.LBB21_77:                              # %if.end132
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB21_85
# BB#78:                                # %cont_BB175
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB21_80
# BB#79:                                # %if.then135
	movb	$0, -45(%rbp)
	movl	$0, (%rax)
.LBB21_80:                              # %if.end136
	xorb	%al, %al
	testb	%al, %al
	je	.LBB21_81
	.align	16, 0x90
.LBB21_85:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str160, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB21_85
.LBB21_81:                              # %cont_BB178
	testq	%rbx, %rbx
	je	.LBB21_83
# BB#82:                                # %if.then139
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%rbx)
.LBB21_83:                              # %if.end141
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r14b, param_taint79(%rip)
	leaq	5016(%rbx), %rdi
	callq	BZ2_bzCompressEnd
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB21_84
.Ltmp183:
	.size	BZ2_bzWriteClose64, .Ltmp183-BZ2_bzWriteClose64
	.cfi_endproc

	.globl	BZ2_bzReadOpen
	.align	16, 0x90
	.type	BZ2_bzReadOpen,@function
BZ2_bzReadOpen:                         # @BZ2_bzReadOpen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp190:
	.cfi_offset %rbx, -56
.Ltmp191:
	.cfi_offset %r12, -48
.Ltmp192:
	.cfi_offset %r13, -40
.Ltmp193:
	.cfi_offset %r14, -32
.Ltmp194:
	.cfi_offset %r15, -24
	movl	%r9d, %r13d
	movq	%r8, %r14
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rdx
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#1:                                 # %cont_BB
	movb	param_taint103(%rip), %al
	movb	%al, -55(%rbp)          # 1-byte Spill
	movb	param_taint104(%rip), %al
	movb	%al, -54(%rbp)          # 1-byte Spill
	movb	param_taint105(%rip), %al
	movb	%al, -53(%rbp)          # 1-byte Spill
	movb	param_taint106(%rip), %r15b
	testq	%rdx, %rdx
	je	.LBB22_3
# BB#2:                                 # %if.then
	movb	$0, -41(%rbp)
	movl	$0, (%rdx)
.LBB22_3:                               # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#4:                                 # %cont_BB8
	movb	$1, %al
	testb	%al, %al
	jne	.LBB22_6
# BB#5:                                 # %if.then2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096
.LBB22_6:                               # %if.end3
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#7:                                 # %cont_BB11
	testq	%r12, %r12
	je	.LBB22_26
# BB#8:                                 # %lor.lhs.false
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#9:                                 # %cont_BB14
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB22_12
# BB#10:                                # %land.lhs.true
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#11:                                # %cont_BB17
	cmpl	$1, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB22_26
.LBB22_12:                              # %lor.lhs.false7
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#13:                                # %cont_BB20
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	js	.LBB22_26
# BB#14:                                # %lor.lhs.false9
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#15:                                # %cont_BB23
	cmpl	$4, -52(%rbp)           # 4-byte Folded Reload
	jg	.LBB22_26
# BB#16:                                # %lor.lhs.false11
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#17:                                # %cont_BB26
	testq	%r14, %r14
	jne	.LBB22_20
# BB#18:                                # %land.lhs.true13
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#19:                                # %cont_BB29
	testl	%r13d, %r13d
	jne	.LBB22_26
.LBB22_20:                              # %lor.lhs.false15
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#21:                                # %cont_BB32
	testq	%r14, %r14
	je	.LBB22_32
# BB#22:                                # %land.lhs.true17
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#23:                                # %cont_BB35
	testl	%r13d, %r13d
	js	.LBB22_26
# BB#24:                                # %lor.lhs.false19
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#25:                                # %cont_BB38
	cmpl	$5001, %r13d            # imm = 0x1389
	jl	.LBB22_32
.LBB22_26:                              # %if.then21
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#27:                                # %cont_BB41
	testq	%rdx, %rdx
	je	.LBB22_29
# BB#28:                                # %if.then23
	movb	$0, -41(%rbp)
	movl	$-2, (%rdx)
.LBB22_29:                              # %if.end24
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB22_69
# BB#30:                                # %cont_BB44
	xorl	%eax, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB22_68
# BB#31:                                # %if.then26
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-2, 5096
	xorb	%dl, %dl
	.align	16, 0x90
.LBB22_68:                              # %return
	andb	$1, %dl
	movb	%dl, return_taint28(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB22_32:                              # %if.end29
	movq	%r12, %rdi
	movq	%rdx, %rbx
	callq	ferror
	movq	%rbx, %rdx
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB22_69
# BB#33:                                # %cont_BB48
	testl	%eax, %eax
	je	.LBB22_40
# BB#34:                                # %if.then30
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#35:                                # %cont_BB51
	testq	%rdx, %rdx
	je	.LBB22_37
# BB#36:                                # %if.then32
	movb	$0, -41(%rbp)
	movl	$-6, (%rdx)
.LBB22_37:                              # %if.end33
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB22_69
# BB#38:                                # %cont_BB54
	xorl	%eax, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB22_68
# BB#39:                                # %if.then35
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-6, 5096
	xorb	%dl, %dl
	jmp	.LBB22_68
.LBB22_40:                              # %if.end38
	movl	$5104, %edi             # imm = 0x13F0
	movq	%rdx, %rbx
	callq	malloc
	movq	%rbx, %r8
	movq	%rax, %rbx
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB22_69
# BB#41:                                # %cont_BB58
	xorb	%al, %al
	testq	%rbx, %rbx
	je	.LBB22_42
# BB#48:                                # %if.end49
	testb	%al, %al
	jne	.LBB22_69
# BB#49:                                # %cont_BB68
	testq	%r8, %r8
	je	.LBB22_51
# BB#50:                                # %if.then51
	movb	$0, -41(%rbp)
	movl	$0, (%r8)
.LBB22_51:                              # %if.end52
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB22_69
# BB#52:                                # %cont_BB71
	movq	%r12, %rsi
	testq	%rbx, %rbx
	je	.LBB22_54
# BB#53:                                # %if.then54
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%rbx)
.LBB22_54:                              # %if.end56
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%r12b, %r12b
	andb	$1, %r12b
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movb	-55(%rbp), %dl          # 1-byte Reload
	andb	$1, %dl
	movb	$0, 5100(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%dl, -16(%rax)
	movq	%rsi, (%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5008(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movb	$0, 5012(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 5072(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 5080(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 5088(%rbx)
	xorb	%al, %al
	jmp	.LBB22_55
.LBB22_42:                              # %if.then41
	testb	%al, %al
	jne	.LBB22_69
# BB#43:                                # %cont_BB61
	testq	%r8, %r8
	je	.LBB22_45
# BB#44:                                # %if.then43
	movb	$0, -41(%rbp)
	movl	$-3, (%r8)
.LBB22_45:                              # %if.end44
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB22_69
# BB#46:                                # %cont_BB64
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB22_68
# BB#47:                                # %if.then46
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-3, 5096(%rbx)
	xorb	%dl, %dl
	jmp	.LBB22_68
	.align	16, 0x90
.LBB22_57:                              # %while.body
                                        #   in Loop: Header=BB22_55 Depth=1
	movb	(%r14), %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	decl	%r13d
	incq	%r14
	andb	$1, %r15b
	movslq	5008(%rbx), %rdx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	$0, -16(%rsi)
	movb	%cl, 8(%rbx,%rdx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	5008(%rbx), %edx
	movb	%r12b, -16(%rcx)
	incl	%edx
	movl	%edx, 5008(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	xorb	%r15b, %r15b
.LBB22_55:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB22_69
# BB#56:                                # %cont_BB86
                                        #   in Loop: Header=BB22_55 Depth=1
	testl	%r13d, %r13d
	jg	.LBB22_57
# BB#58:                                # %while.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, param_taint80(%rip)
	leaq	5016(%rbx), %rdi
	movb	-53(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	-54(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	%cl, param_taint81(%rip)
	movb	%al, param_taint82(%rip)
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movq	%r8, %r14
	callq	BZ2_bzDecompressInit
	movq	%r14, %rdx
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB22_69
# BB#59:                                # %cont_BB101
	testl	%eax, %eax
	je	.LBB22_67
# BB#60:                                # %if.then65
	xorb	%cl, %cl
	testb	%cl, %cl
	movq	%rdx, %rsi
	jne	.LBB22_69
# BB#61:                                # %cont_BB104
	movb	return_taint19(%rip), %cl
	testq	%rsi, %rsi
	je	.LBB22_63
# BB#62:                                # %if.then67
	movb	%cl, %dl
	andb	$1, %dl
	movb	%dl, -41(%rbp)
	movl	%eax, (%rsi)
.LBB22_63:                              # %if.end68
	xorb	%dl, %dl
	testb	%dl, %dl
	je	.LBB22_64
	.align	16, 0x90
.LBB22_69:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str161, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB22_69
.LBB22_67:                              # %if.end73
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	5008(%rbx), %ecx
	leaq	8(%rbx), %rax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%r12b, -16(%rdx)
	movl	%ecx, 5024(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movq	%rax, 5016(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movb	$1, 5100(%rbx)
	xorb	%dl, %dl
	movq	%rbx, %rax
	jmp	.LBB22_68
.LBB22_64:                              # %cont_BB107
	testq	%rbx, %rbx
	je	.LBB22_66
# BB#65:                                # %if.then70
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	andb	$1, %cl
	movb	%cl, -16(%rdx)
	movl	%eax, 5096(%rbx)
.LBB22_66:                              # %if.end72
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
	xorb	%dl, %dl
	jmp	.LBB22_68
.Ltmp195:
	.size	BZ2_bzReadOpen, .Ltmp195-BZ2_bzReadOpen
	.cfi_endproc

	.globl	BZ2_bzReadClose
	.align	16, 0x90
	.type	BZ2_bzReadClose,@function
BZ2_bzReadClose:                        # @BZ2_bzReadClose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp202:
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB23_27
# BB#1:                                 # %cont_BB
	movb	param_taint109(%rip), %al
	testq	%rdi, %rdi
	je	.LBB23_3
# BB#2:                                 # %if.then
	movb	$0, -9(%rbp)
	movl	$0, (%rdi)
.LBB23_3:                               # %if.end
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB23_27
# BB#4:                                 # %cont_BB4
	testq	%rbx, %rbx
	je	.LBB23_6
# BB#5:                                 # %if.then2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, %dl
	andb	$1, %dl
	movb	%dl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 5096(%rbx)
.LBB23_6:                               # %if.end3
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB23_27
# BB#7:                                 # %cont_BB7
	testq	%rbx, %rbx
	je	.LBB23_8
# BB#14:                                # %if.end13
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	andb	$1, %al
	movb	%al, -16(%rcx)
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB23_27
# BB#15:                                # %cont_BB18
	movb	5012(%rbx), %cl
	testb	%cl, %cl
	je	.LBB23_22
# BB#16:                                # %if.then14
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB23_27
# BB#17:                                # %cont_BB21
	testq	%rdi, %rdi
	je	.LBB23_19
# BB#18:                                # %if.then16
	movb	$0, -9(%rbp)
	movl	$-1, (%rdi)
.LBB23_19:                              # %if.end17
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB23_27
# BB#20:                                # %cont_BB24
	testq	%rbx, %rbx
	je	.LBB23_26
# BB#21:                                # %if.then19
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$-1, 5096(%rbx)
	jmp	.LBB23_26
.LBB23_8:                               # %if.then5
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB23_27
# BB#9:                                 # %cont_BB10
	testq	%rdi, %rdi
	je	.LBB23_11
# BB#10:                                # %if.then7
	movb	$0, -9(%rbp)
	movl	$0, (%rdi)
.LBB23_11:                              # %if.end8
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB23_27
# BB#12:                                # %cont_BB13
	testq	%rbx, %rbx
	je	.LBB23_26
# BB#13:                                # %if.then10
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	andb	$1, %al
	movb	%al, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 5096(%rbx)
	jmp	.LBB23_26
.LBB23_22:                              # %if.end22
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	xorb	%cl, %cl
	testb	%cl, %cl
	je	.LBB23_23
	.align	16, 0x90
.LBB23_27:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str162, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB23_27
.LBB23_23:                              # %cont_BB31
	movb	5100(%rbx), %cl
	testb	%cl, %cl
	je	.LBB23_25
# BB#24:                                # %if.then24
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movb	%al, param_taint89(%rip)
	leaq	5016(%rbx), %rdi
	callq	BZ2_bzDecompressEnd
.LBB23_25:                              # %if.end25
	movq	%rbx, %rdi
	callq	free
.LBB23_26:                              # %return
	movb	$0, return_taint29(%rip)
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp203:
	.size	BZ2_bzReadClose, .Ltmp203-BZ2_bzReadClose
	.cfi_endproc

	.globl	BZ2_bzRead
	.align	16, 0x90
	.type	BZ2_bzRead,@function
BZ2_bzRead:                             # @BZ2_bzRead
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp210:
	.cfi_offset %rbx, -56
.Ltmp211:
	.cfi_offset %r12, -48
.Ltmp212:
	.cfi_offset %r13, -40
.Ltmp213:
	.cfi_offset %r14, -32
.Ltmp214:
	.cfi_offset %r15, -24
	movl	%ecx, %r8d
	movq	%rsi, %r12
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#1:                                 # %cont_BB
	movb	param_taint111(%rip), %al
	movb	%al, -57(%rbp)          # 1-byte Spill
	movb	param_taint112(%rip), %al
	movb	param_taint113(%rip), %cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
	testq	%rdi, %rdi
	je	.LBB24_3
# BB#2:                                 # %if.then
	movb	$0, -41(%rbp)
	movl	$0, (%rdi)
.LBB24_3:                               # %if.end
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB24_93
# BB#4:                                 # %cont_BB6
	testq	%r12, %r12
	je	.LBB24_6
# BB#5:                                 # %if.then2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	-57(%rbp), %bl          # 1-byte Reload
	andb	$1, %bl
	movb	%bl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 5096(%r12)
.LBB24_6:                               # %if.end3
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB24_93
# BB#7:                                 # %cont_BB9
	testq	%r12, %r12
	je	.LBB24_12
# BB#8:                                 # %lor.lhs.false
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB24_93
# BB#9:                                 # %cont_BB12
	testq	%rdx, %rdx
	je	.LBB24_12
# BB#10:                                # %lor.lhs.false6
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB24_93
# BB#11:                                # %cont_BB15
	testl	%r8d, %r8d
	js	.LBB24_12
# BB#18:                                # %if.end16
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	-57(%rbp), %r14b        # 1-byte Reload
	andb	$1, %r14b
	movb	%r14b, -16(%rcx)
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB24_93
# BB#19:                                # %cont_BB26
	movb	5012(%r12), %cl
	testb	%cl, %cl
	je	.LBB24_26
# BB#20:                                # %if.then17
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#21:                                # %cont_BB29
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_23
# BB#22:                                # %if.then19
	movb	$0, -41(%rbp)
	movl	$-1, (%rax)
.LBB24_23:                              # %if.end20
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jne	.LBB24_93
# BB#24:                                # %cont_BB32
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB24_92
# BB#25:                                # %if.then22
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-1, 5096(%r12)
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jmp	.LBB24_92
.LBB24_12:                              # %if.then8
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#13:                                # %cont_BB18
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_15
# BB#14:                                # %if.then10
	movb	$0, -41(%rbp)
	movl	$-2, (%rax)
.LBB24_15:                              # %if.end11
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jne	.LBB24_93
# BB#16:                                # %cont_BB21
	xorl	%eax, %eax
	testq	%r12, %r12
	movb	-57(%rbp), %dl          # 1-byte Reload
	je	.LBB24_92
# BB#17:                                # %if.then13
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %dl
	movb	%dl, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-2, 5096(%r12)
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	.align	16, 0x90
.LBB24_92:                              # %return
	movb	-42(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	%cl, return_taint30(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB24_26:                              # %if.end25
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB24_93
# BB#27:                                # %cont_BB36
	testl	%r8d, %r8d
	je	.LBB24_28
# BB#34:                                # %if.end35
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rcx)
	movb	-42(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	andb	$1, %al
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r14b, -16(%rsi)
	movb	%cl, -16(%rsi)
	movl	%r8d, 5048(%r12)
	movl	%r8d, -64(%rbp)         # 4-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rcx)
	movb	%al, -16(%rcx)
	movq	%rdx, 5040(%r12)
	xorb	%r15b, %r15b
	.align	16, 0x90
.LBB24_35:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%r12), %rdi
	callq	ferror
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#36:                                # %cont_BB53
                                        #   in Loop: Header=BB24_35 Depth=1
	testl	%eax, %eax
	jne	.LBB24_37
# BB#43:                                # %if.end46
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r15b, %r15b
	movb	%r14b, -16(%rax)
	jne	.LBB24_93
# BB#44:                                # %cont_BB67
                                        #   in Loop: Header=BB24_35 Depth=1
	movl	5024(%r12), %eax
	testl	%eax, %eax
	jne	.LBB24_50
# BB#45:                                # %land.lhs.true
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%r12), %rdi
	movb	%r14b, param_taint114(%rip)
	callq	myfeof
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#46:                                # %cont_BB73
                                        #   in Loop: Header=BB24_35 Depth=1
	testb	%al, %al
	jne	.LBB24_50
# BB#47:                                # %if.then52
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	leaq	8(%r12), %r13
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%r12), %rcx
	movq	%r13, %rdi
	movl	$1, %esi
	movl	$5000, %edx             # imm = 0x1388
	callq	fread
	movq	%rax, %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%r12), %rdi
	callq	ferror
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#48:                                # %cont_BB85
                                        #   in Loop: Header=BB24_35 Depth=1
	testl	%eax, %eax
	jne	.LBB24_37
# BB#49:                                # %if.end69
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r15b, %cl
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movl	%ebx, 5008(%r12)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	5008(%r12), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movb	%r14b, -16(%rcx)
	movl	%eax, 5024(%r12)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r14b, -16(%rax)
	movq	%r13, 5016(%r12)
.LBB24_50:                              # %if.end76
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r14b, param_taint85(%rip)
	leaq	5016(%r12), %rdi
	callq	BZ2_bzDecompress
	movl	%eax, %ebx
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#51:                                # %cont_BB107
                                        #   in Loop: Header=BB24_35 Depth=1
	testl	%ebx, %ebx
	je	.LBB24_60
# BB#52:                                # %land.lhs.true81
                                        #   in Loop: Header=BB24_35 Depth=1
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#53:                                # %cont_BB110
                                        #   in Loop: Header=BB24_35 Depth=1
	cmpl	$4, %ebx
	jne	.LBB24_54
.LBB24_60:                              # %if.end94
                                        #   in Loop: Header=BB24_35 Depth=1
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#61:                                # %cont_BB120
                                        #   in Loop: Header=BB24_35 Depth=1
	testl	%ebx, %ebx
	jne	.LBB24_74
# BB#62:                                # %land.lhs.true97
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	(%r12), %rdi
	movb	%r14b, param_taint114(%rip)
	callq	myfeof
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#63:                                # %cont_BB128
                                        #   in Loop: Header=BB24_35 Depth=1
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.LBB24_74
# BB#64:                                # %land.lhs.true102
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r15b, %r15b
	movb	%r14b, -16(%rax)
	jne	.LBB24_93
# BB#65:                                # %cont_BB135
                                        #   in Loop: Header=BB24_35 Depth=1
	movl	5024(%r12), %eax
	testl	%eax, %eax
	jne	.LBB24_74
# BB#66:                                # %land.lhs.true107
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r15b, %r15b
	movb	%r14b, -16(%rax)
	jne	.LBB24_93
# BB#67:                                # %cont_BB142
                                        #   in Loop: Header=BB24_35 Depth=1
	movl	5048(%r12), %eax
	testl	%eax, %eax
	jne	.LBB24_68
.LBB24_74:                              # %if.end122
                                        #   in Loop: Header=BB24_35 Depth=1
	testb	%r15b, %r15b
	jne	.LBB24_93
# BB#75:                                # %cont_BB152
                                        #   in Loop: Header=BB24_35 Depth=1
	cmpl	$4, %ebx
	je	.LBB24_76
# BB#83:                                # %if.end137
                                        #   in Loop: Header=BB24_35 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r15b, %r15b
	movb	%r14b, -16(%rax)
	jne	.LBB24_93
# BB#84:                                # %cont_BB171
                                        #   in Loop: Header=BB24_35 Depth=1
	movl	5048(%r12), %eax
	testl	%eax, %eax
	jne	.LBB24_35
# BB#85:                                # %if.then142
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#86:                                # %cont_BB174
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_88
# BB#87:                                # %if.then145
	movb	$0, -41(%rbp)
	movl	$0, (%rax)
.LBB24_88:                              # %if.end146
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#89:                                # %cont_BB177
	testq	%r12, %r12
	je	.LBB24_91
# BB#90:                                # %if.then149
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%r12)
.LBB24_91:                              # %if.then149
	movl	-64(%rbp), %eax         # 4-byte Reload
	jmp	.LBB24_92
.LBB24_28:                              # %if.then27
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#29:                                # %cont_BB39
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_31
# BB#30:                                # %if.then29
	movb	$0, -41(%rbp)
	movl	$0, (%rax)
.LBB24_31:                              # %if.end30
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jne	.LBB24_93
# BB#32:                                # %cont_BB42
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB24_92
# BB#33:                                # %if.then32
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$0, 5096(%r12)
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jmp	.LBB24_92
.LBB24_37:                              # %if.then38
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#38:                                # %cont_BB56
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_40
# BB#39:                                # %if.then40
	movb	$0, -41(%rbp)
	movl	$-6, (%rax)
.LBB24_40:                              # %if.end41
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jne	.LBB24_93
# BB#41:                                # %cont_BB59
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB24_92
# BB#42:                                # %if.then43
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-6, 5096(%r12)
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jmp	.LBB24_92
.LBB24_54:                              # %if.then84
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#55:                                # %cont_BB113
	movb	return_taint21(%rip), %sil
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_57
# BB#56:                                # %if.then87
	movb	%sil, %cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	movl	%ebx, (%rax)
.LBB24_57:                              # %if.end88
	xorb	%cl, %cl
	testb	%cl, %cl
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jne	.LBB24_93
# BB#58:                                # %cont_BB116
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB24_92
# BB#59:                                # %if.then91
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	andb	$1, %sil
	movb	%sil, -16(%rcx)
	xorl	%eax, %eax
	movl	%ebx, 5096(%r12)
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jmp	.LBB24_92
.LBB24_68:                              # %if.then112
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#69:                                # %cont_BB145
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_71
# BB#70:                                # %if.then115
	movb	$0, -41(%rbp)
	movl	$-7, (%rax)
.LBB24_71:                              # %if.end116
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jne	.LBB24_93
# BB#72:                                # %cont_BB148
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB24_92
# BB#73:                                # %if.then119
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-7, 5096(%r12)
	movb	$0, -42(%rbp)           # 1-byte Folded Spill
	jmp	.LBB24_92
.LBB24_76:                              # %if.then125
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB24_93
# BB#77:                                # %cont_BB155
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB24_79
# BB#78:                                # %if.then128
	movb	$0, -41(%rbp)
	movl	$4, (%rax)
.LBB24_79:                              # %if.end129
	xorb	%al, %al
	testb	%al, %al
	je	.LBB24_80
	.align	16, 0x90
.LBB24_93:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str163, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB24_93
.LBB24_80:                              # %cont_BB158
	testq	%r12, %r12
	je	.LBB24_82
# BB#81:                                # %if.then132
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$4, 5096(%r12)
.LBB24_82:                              # %if.end134
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	-57(%rbp), %al          # 1-byte Reload
	orb	%al, -42(%rbp)          # 1-byte Folded Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	5048(%r12), %eax
	jmp	.LBB24_92
.Ltmp215:
	.size	BZ2_bzRead, .Ltmp215-BZ2_bzRead
	.cfi_endproc

	.align	16, 0x90
	.type	myfeof,@function
myfeof:                                 # @myfeof
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	fgetc
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB25_4
# BB#1:                                 # %cont_BB
	movb	$1, %cl
	cmpl	$-1, %eax
	je	.LBB25_3
# BB#2:                                 # %if.end
	movl	%eax, %edi
	movq	%rbx, %rsi
	callq	ungetc
	xorb	%cl, %cl
.LBB25_3:                               # %return
	movzbl	%cl, %eax
	movb	$0, return_taint31(%rip)
	popq	%rbx
	ret
	.align	16, 0x90
.LBB25_4:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str164, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB25_4
.Ltmp220:
	.size	myfeof, .Ltmp220-myfeof
	.cfi_endproc

	.globl	BZ2_bzReadGetUnused
	.align	16, 0x90
	.type	BZ2_bzReadGetUnused,@function
BZ2_bzReadGetUnused:                    # @BZ2_bzReadGetUnused
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#1:                                 # %cont_BB
	movb	param_taint116(%rip), %r8b
	testq	%rsi, %rsi
	je	.LBB26_2
# BB#8:                                 # %if.end6
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	andb	$1, %r8b
	movb	%r8b, -16(%r9)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#9:                                 # %cont_BB13
	movl	5096(%rsi), %eax
	cmpl	$4, %eax
	je	.LBB26_16
# BB#10:                                # %if.then9
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#11:                                # %cont_BB16
	testq	%rdi, %rdi
	je	.LBB26_13
# BB#12:                                # %if.then11
	movb	$0, -3(%rbp)
	movl	$-1, (%rdi)
.LBB26_13:                              # %if.end12
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#14:                                # %cont_BB19
	testq	%rsi, %rsi
	je	.LBB26_33
# BB#15:                                # %if.then14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-1, 5096(%rsi)
	jmp	.LBB26_33
.LBB26_2:                               # %if.then
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#3:                                 # %cont_BB6
	testq	%rdi, %rdi
	je	.LBB26_5
# BB#4:                                 # %if.then2
	movb	$0, -3(%rbp)
	movl	$-2, (%rdi)
.LBB26_5:                               # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#6:                                 # %cont_BB9
	testq	%rsi, %rsi
	je	.LBB26_33
# BB#7:                                 # %if.then4
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	andb	$1, %r8b
	movb	%r8b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$-2, 5096(%rsi)
	.align	16, 0x90
.LBB26_33:                              # %return
	movb	$0, return_taint32(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.LBB26_16:                              # %if.end17
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#17:                                # %cont_BB23
	testq	%rdx, %rdx
	je	.LBB26_20
# BB#18:                                # %lor.lhs.false
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#19:                                # %cont_BB26
	testq	%rcx, %rcx
	je	.LBB26_20
# BB#26:                                # %if.end28
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#27:                                # %cont_BB36
	testq	%rdi, %rdi
	je	.LBB26_29
# BB#28:                                # %if.then30
	movb	$0, -3(%rbp)
	movl	$0, (%rdi)
.LBB26_29:                              # %if.end31
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#30:                                # %cont_BB39
	testq	%rsi, %rsi
	je	.LBB26_32
# BB#31:                                # %if.then33
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r8b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 5096(%rsi)
.LBB26_32:                              # %if.end35
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r8b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r8b, -16(%rax)
	movl	5024(%rsi), %eax
	movb	%r8b, -2(%rbp)
	movl	%eax, (%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movq	5016(%rsi), %rax
	movb	%r8b, -1(%rbp)
	movq	%rax, (%rdx)
	jmp	.LBB26_33
.LBB26_20:                              # %if.then20
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB26_34
# BB#21:                                # %cont_BB29
	testq	%rdi, %rdi
	je	.LBB26_23
# BB#22:                                # %if.then22
	movb	$0, -3(%rbp)
	movl	$-2, (%rdi)
.LBB26_23:                              # %if.end23
	xorb	%al, %al
	testb	%al, %al
	je	.LBB26_24
	.align	16, 0x90
.LBB26_34:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str165, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB26_34
.LBB26_24:                              # %cont_BB32
	testq	%rsi, %rsi
	je	.LBB26_33
# BB#25:                                # %if.then25
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-2, 5096(%rsi)
	jmp	.LBB26_33
.Ltmp226:
	.size	BZ2_bzReadGetUnused, .Ltmp226-BZ2_bzReadGetUnused
	.cfi_endproc

	.globl	BZ2_bzBuffToBuffCompress
	.align	16, 0x90
	.type	BZ2_bzBuffToBuffCompress,@function
BZ2_bzBuffToBuffCompress:               # @BZ2_bzBuffToBuffCompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Ltmp233:
	.cfi_offset %rbx, -56
.Ltmp234:
	.cfi_offset %r12, -48
.Ltmp235:
	.cfi_offset %r13, -40
.Ltmp236:
	.cfi_offset %r14, -32
.Ltmp237:
	.cfi_offset %r15, -24
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	xorb	%r14b, %r14b
	testb	%r14b, %r14b
	jne	.LBB27_33
# BB#1:                                 # %cont_BB
	movl	$-2, %ebx
	xorb	%r15b, %r15b
	testq	%rdi, %rdi
	je	.LBB27_32
# BB#2:                                 # %lor.lhs.false
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#3:                                 # %cont_BB9
	movl	$-2, %ebx
	cmpq	$0, -136(%rbp)          # 8-byte Folded Reload
	je	.LBB27_32
# BB#4:                                 # %lor.lhs.false2
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#5:                                 # %cont_BB12
	movl	$-2, %ebx
	testq	%rdx, %rdx
	je	.LBB27_32
# BB#6:                                 # %lor.lhs.false4
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#7:                                 # %cont_BB15
	movl	$-2, %ebx
	testl	%r8d, %r8d
	jle	.LBB27_32
# BB#8:                                 # %lor.lhs.false6
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#9:                                 # %cont_BB18
	movl	$-2, %ebx
	cmpl	$9, %r8d
	jg	.LBB27_32
# BB#10:                                # %lor.lhs.false8
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#11:                                # %cont_BB21
	movl	$-2, %ebx
	testl	%r9d, %r9d
	js	.LBB27_32
# BB#12:                                # %lor.lhs.false10
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#13:                                # %cont_BB24
	movl	$-2, %ebx
	cmpl	$4, %r9d
	jg	.LBB27_32
# BB#14:                                # %lor.lhs.false12
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#15:                                # %cont_BB27
	movl	16(%rbp), %ecx
	movl	$-2, %ebx
	testl	%ecx, %ecx
	js	.LBB27_32
# BB#16:                                # %lor.lhs.false14
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB27_33
# BB#17:                                # %cont_BB30
	movl	$-2, %ebx
	cmpl	$250, %ecx
	jg	.LBB27_32
# BB#18:                                # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB27_33
# BB#19:                                # %cont_BB33
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movb	param_taint119(%rip), %r12b
	movb	param_taint121(%rip), %r13b
	movb	param_taint122(%rip), %r15b
	movb	param_taint123(%rip), %dl
	movb	param_taint124(%rip), %r10b
	testl	%ecx, %ecx
	je	.LBB27_21
# BB#20:
	movb	param_taint125(%rip), %bl
	jmp	.LBB27_22
.LBB27_21:                              # %if.then17
	movl	$30, %ecx
	xorb	%bl, %bl
.LBB27_22:                              # %if.end18
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	andb	$1, %r14b
	movb	%r14b, -16(%rsi)
	movb	$0, -16(%rsi)
	andb	$1, %bl
	andb	$1, %r10b
	andb	$1, %dl
	leaq	-128(%rbp), %rdi
	movq	$0, -72(%rbp)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rsi)
	movb	$0, -16(%rsi)
	movq	$0, -64(%rbp)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rsi)
	movb	$0, -16(%rsi)
	movq	$0, -56(%rbp)
	movb	%r14b, param_taint57(%rip)
	movb	%dl, param_taint58(%rip)
	movb	%r10b, param_taint59(%rip)
	movb	%bl, param_taint60(%rip)
	movl	%r8d, %esi
	movl	%r9d, %edx
	callq	BZ2_bzCompressInit
	movl	%eax, %ebx
	xorb	%al, %al
	testb	%al, %al
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	jne	.LBB27_33
# BB#23:                                # %cont_BB38
	testl	%ebx, %ebx
	je	.LBB27_25
# BB#24:
	movb	return_taint8(%rip), %r15b
	jmp	.LBB27_32
.LBB27_25:                              # %if.end21
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	andb	$1, %r13b
	movb	%r13b, -16(%rax)
	andb	$1, %r12b
	andb	$1, %r15b
	leaq	-128(%rbp), %rdi
	movq	%rsi, -128(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r12b, -16(%rax)
	movq	%rdx, -104(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r15b, -16(%rax)
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	%eax, -96(%rbp)
	movb	%r14b, param_taint75(%rip)
	movb	$0, param_taint76(%rip)
	movl	$2, %esi
	callq	BZ2_bzCompress
	movl	%eax, %ebx
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB27_33
# BB#26:                                # %cont_BB46
	cmpl	$3, %ebx
	jne	.LBB27_27
# BB#30:                                # %output_overflow
	movb	%r14b, param_taint79(%rip)
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzCompressEnd
	movl	$-8, %ebx
	xorb	%r15b, %r15b
	jmp	.LBB27_32
.LBB27_27:                              # %if.end25
	xorb	%al, %al
	testb	%al, %al
	je	.LBB27_28
	.align	16, 0x90
.LBB27_33:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str166, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB27_33
.LBB27_28:                              # %cont_BB49
	cmpl	$4, %ebx
	je	.LBB27_29
# BB#31:                                # %errhandler
	movb	return_taint15(%rip), %r15b
	movb	%r14b, param_taint79(%rip)
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzCompressEnd
	jmp	.LBB27_32
.LBB27_29:                              # %if.end28
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	leaq	-128(%rbp), %rdi
	subl	-96(%rbp), %eax
	movb	%r14b, -41(%rbp)
	movl	%eax, (%rcx)
	movb	%r14b, param_taint79(%rip)
	callq	BZ2_bzCompressEnd
	xorl	%ebx, %ebx
	xorb	%r15b, %r15b
.LBB27_32:                              # %return
	andb	$1, %r15b
	movb	%r15b, return_taint33(%rip)
	movl	%ebx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp238:
	.size	BZ2_bzBuffToBuffCompress, .Ltmp238-BZ2_bzBuffToBuffCompress
	.cfi_endproc

	.globl	BZ2_bzBuffToBuffDecompress
	.align	16, 0x90
	.type	BZ2_bzBuffToBuffDecompress,@function
BZ2_bzBuffToBuffDecompress:             # @BZ2_bzBuffToBuffDecompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp245:
	.cfi_offset %rbx, -56
.Ltmp246:
	.cfi_offset %r12, -48
.Ltmp247:
	.cfi_offset %r13, -40
.Ltmp248:
	.cfi_offset %r14, -32
.Ltmp249:
	.cfi_offset %r15, -24
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rdx, %r10
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	xorb	%r14b, %r14b
	testb	%r14b, %r14b
	jne	.LBB28_28
# BB#1:                                 # %cont_BB
	movl	$-2, %ebx
	xorb	%r15b, %r15b
	testq	%rdi, %rdi
	je	.LBB28_27
# BB#2:                                 # %lor.lhs.false
	testb	%r15b, %r15b
	jne	.LBB28_28
# BB#3:                                 # %cont_BB8
	movl	$-2, %ebx
	cmpq	$0, -136(%rbp)          # 8-byte Folded Reload
	je	.LBB28_27
# BB#4:                                 # %lor.lhs.false2
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB28_28
# BB#5:                                 # %cont_BB11
	movl	$-2, %ebx
	testq	%r10, %r10
	je	.LBB28_27
# BB#6:                                 # %lor.lhs.false4
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB28_28
# BB#7:                                 # %cont_BB14
	movb	param_taint126(%rip), %r12b
	movb	param_taint128(%rip), %r13b
	movb	param_taint129(%rip), %al
	movb	%al, -141(%rbp)         # 1-byte Spill
	movb	param_taint130(%rip), %al
	movb	param_taint131(%rip), %cl
	testl	%r8d, %r8d
	je	.LBB28_10
# BB#8:                                 # %land.lhs.true
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB28_28
# BB#9:                                 # %cont_BB17
	movl	$-2, %ebx
	cmpl	$1, %r8d
	jne	.LBB28_27
.LBB28_10:                              # %lor.lhs.false7
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB28_28
# BB#11:                                # %cont_BB20
	movl	$-2, %ebx
	testl	%r9d, %r9d
	js	.LBB28_27
# BB#12:                                # %lor.lhs.false9
	xorb	%r15b, %r15b
	testb	%r15b, %r15b
	jne	.LBB28_28
# BB#13:                                # %cont_BB23
	movl	$-2, %ebx
	cmpl	$4, %r9d
	jg	.LBB28_27
# BB#14:                                # %if.end
	movq	%rdi, %r15
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	andb	$1, %r14b
	movb	%r14b, -16(%rdx)
	movb	$0, -16(%rdx)
	andb	$1, %al
	andb	$1, %cl
	leaq	-128(%rbp), %rdi
	movq	$0, -72(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movb	$0, -16(%rdx)
	movq	$0, -64(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movb	$0, -16(%rdx)
	movq	$0, -56(%rbp)
	movb	%r14b, param_taint80(%rip)
	movb	%cl, param_taint81(%rip)
	movb	%al, param_taint82(%rip)
	movl	%r9d, %esi
	movl	%r8d, %edx
	movq	%r10, %rbx
	callq	BZ2_bzDecompressInit
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%eax, %ebx
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB28_28
# BB#15:                                # %cont_BB28
	testl	%ebx, %ebx
	je	.LBB28_17
# BB#16:
	movb	return_taint19(%rip), %r15b
	jmp	.LBB28_27
.LBB28_17:                              # %if.end13
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	andb	$1, %r13b
	movb	%r13b, -16(%rax)
	andb	$1, %r12b
	movb	-141(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	leaq	-128(%rbp), %rdi
	movq	%rsi, -128(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%r12b, -16(%rax)
	movq	%rdx, -104(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%bl, -16(%rax)
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	%eax, -96(%rbp)
	movb	%r14b, param_taint85(%rip)
	callq	BZ2_bzDecompress
	movl	%eax, %ebx
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB28_28
# BB#18:                                # %cont_BB36
	testl	%ebx, %ebx
	je	.LBB28_22
# BB#19:                                # %if.end17
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB28_28
# BB#20:                                # %cont_BB39
	cmpl	$4, %ebx
	je	.LBB28_21
# BB#26:                                # %errhandler
	movb	return_taint21(%rip), %r15b
	movb	%r14b, param_taint89(%rip)
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzDecompressEnd
	jmp	.LBB28_27
.LBB28_22:                              # %output_overflow_or_eof
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	je	.LBB28_23
	.align	16, 0x90
.LBB28_28:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str167, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB28_28
.LBB28_21:                              # %if.end20
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	leaq	-128(%rbp), %rdi
	subl	-96(%rbp), %eax
	movb	%r14b, -41(%rbp)
	movl	%eax, (%rcx)
	movb	%r14b, param_taint89(%rip)
	callq	BZ2_bzDecompressEnd
	xorl	%ebx, %ebx
	xorb	%r15b, %r15b
	jmp	.LBB28_27
.LBB28_23:                              # %cont_BB50
	movl	-96(%rbp), %eax
	testl	%eax, %eax
	je	.LBB28_25
# BB#24:                                # %if.then25
	movb	%r14b, param_taint89(%rip)
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzDecompressEnd
	movl	$-7, %ebx
	xorb	%r15b, %r15b
	jmp	.LBB28_27
.LBB28_25:                              # %if.else
	movb	%r14b, param_taint89(%rip)
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzDecompressEnd
	movl	$-8, %ebx
	xorb	%r15b, %r15b
.LBB28_27:                              # %return
	andb	$1, %r15b
	movb	%r15b, return_taint34(%rip)
	movl	%ebx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp250:
	.size	BZ2_bzBuffToBuffDecompress, .Ltmp250-BZ2_bzBuffToBuffDecompress
	.cfi_endproc

	.globl	BZ2_bzopen
	.align	16, 0x90
	.type	BZ2_bzopen,@function
BZ2_bzopen:                             # @BZ2_bzopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp252:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movb	param_taint62(%rip), %cl
	movb	param_taint61(%rip), %dl
	movb	%dl, param_taint63(%rip)
	movb	$0, param_taint64(%rip)
	movb	%cl, param_taint65(%rip)
	movb	$0, param_taint66(%rip)
	movl	$-1, %esi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	bzopen_or_bzdopen
	movb	return_taint11(%rip), %cl
	movb	%cl, return_taint10(%rip)
	popq	%rdx
	ret
.Ltmp253:
	.size	BZ2_bzopen, .Ltmp253-BZ2_bzopen
	.cfi_endproc

	.align	16, 0x90
	.type	bzopen_or_bzdopen,@function
bzopen_or_bzdopen:                      # @bzopen_or_bzdopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5064, %rsp             # imm = 0x13C8
.Ltmp260:
	.cfi_offset %rbx, -56
.Ltmp261:
	.cfi_offset %r12, -48
.Ltmp262:
	.cfi_offset %r13, -40
.Ltmp263:
	.cfi_offset %r14, -32
.Ltmp264:
	.cfi_offset %r15, -24
	movl	%ecx, -5096(%rbp)       # 4-byte Spill
	movq	%rdx, %r12
	movl	%esi, -5092(%rbp)       # 4-byte Spill
	movq	%rdi, -5088(%rbp)       # 8-byte Spill
	movb	param_taint65(%rip), %r15b
	xorb	%al, %al
	movw	$0, -5064(%rbp)
	movq	$0, -5072(%rbp)
	testb	%al, %al
	movb	$0, %dl
	jne	.LBB30_48
# BB#1:                                 # %cont_BB
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB30_47
# BB#2:
	xorb	%al, %al
	movb	%al, -5078(%rbp)        # 1-byte Spill
	movb	%al, -5077(%rbp)        # 1-byte Spill
	movl	$9, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, -5076(%rbp)      # 4-byte Spill
	jmp	.LBB30_3
	.align	16, 0x90
.LBB30_14:                              # %sw.epilog
                                        #   in Loop: Header=BB30_3 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r15b
	movb	%r15b, -16(%rax)
	incq	%r12
	xorb	%r15b, %r15b
.LBB30_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB30_48
# BB#4:                                 # %cont_BB12
                                        #   in Loop: Header=BB30_3 Depth=1
	movb	(%r12), %al
	testb	%al, %al
	je	.LBB30_15
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB30_3 Depth=1
	movsbl	(%r12), %eax
	cmpl	$114, %eax
	je	.LBB30_6
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB30_3 Depth=1
	cmpl	$115, %eax
	jne	.LBB30_8
# BB#10:                                # %sw.bb2
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	$1, -5076(%rbp)         # 4-byte Folded Spill
	jmp	.LBB30_14
.LBB30_6:                               #   in Loop: Header=BB30_3 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB30_14
.LBB30_8:                               # %while.body
                                        #   in Loop: Header=BB30_3 Depth=1
	cmpl	$119, %eax
	jne	.LBB30_11
# BB#9:                                 # %sw.bb1
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	$1, %r14d
	jmp	.LBB30_14
.LBB30_11:                              # %sw.default
                                        #   in Loop: Header=BB30_3 Depth=1
	movsbq	(%r12), %r13
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	$0, -16(%rcx)
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB30_48
# BB#12:                                # %cont_BB24
                                        #   in Loop: Header=BB30_3 Depth=1
	movzwl	(%rax,%r13,2), %eax
	andl	$2048, %eax             # imm = 0x800
	testl	%eax, %eax
	je	.LBB30_14
# BB#13:                                # %if.then6
                                        #   in Loop: Header=BB30_3 Depth=1
	movsbl	(%r12), %ebx
	addl	$-48, %ebx
	jmp	.LBB30_14
.LBB30_15:                              # %while.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%r15b, %r15b
	andb	$1, %r15b
	movb	%r15b, -16(%rax)
	movl	$.L.str17, %eax
	testl	%r14d, %r14d
	movl	$.L.str18, %esi
	cmovneq	%rax, %rsi
	leaq	-5072(%rbp), %r12
	movq	%r12, %rdi
	callq	strcat
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movq	%r12, %rdi
	movl	$.L.str19, %esi
	callq	strcat
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB30_48
# BB#16:                                # %cont_BB38
	cmpl	$0, -5096(%rbp)         # 4-byte Folded Reload
	je	.LBB30_17
# BB#26:                                # %if.else27
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	leaq	-5072(%rbp), %rsi
	movl	-5092(%rbp), %edi       # 4-byte Reload
	callq	fdopen
	.align	16, 0x90
.LBB30_27:                              # %if.else27
	movq	%rax, %r15
	.align	16, 0x90
.LBB30_28:                              # %if.else27
	xorb	%cl, %cl
	xorb	%al, %al
	testb	%al, %al
	movb	$0, %dl
	jne	.LBB30_48
# BB#29:                                # %cont_BB57
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB30_47
# BB#30:                                # %if.end34
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB30_48
# BB#31:                                # %cont_BB60
	testl	%r14d, %r14d
	je	.LBB30_39
# BB#32:                                # %if.then36
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB30_48
# BB#33:                                # %cont_BB63
	testl	%ebx, %ebx
	jg	.LBB30_35
# BB#34:                                # %if.then39
	movl	$1, %ebx
.LBB30_35:                              # %if.end40
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB30_48
# BB#36:                                # %cont_BB67
	cmpl	$10, %ebx
	jl	.LBB30_38
# BB#37:                                # %if.then43
	movl	$9, %ebx
.LBB30_38:                              # %if.end44
	movb	-5077(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, param_taint(%rip)
	andb	$1, %cl
	movb	%cl, param_taint41(%rip)
	movb	$0, param_taint42(%rip)
	movb	$0, param_taint43(%rip)
	movb	$0, param_taint44(%rip)
	leaq	-44(%rbp), %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	movl	$30, %r8d
	callq	BZ2_bzWriteOpen
	movb	return_taint(%rip), %dl
	jmp	.LBB30_40
.LBB30_17:                              # %if.then15
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB30_48
# BB#18:                                # %cont_BB41
	movq	-5088(%rbp), %rax       # 8-byte Reload
	testq	%rax, %rax
	je	.LBB30_21
# BB#19:                                # %lor.lhs.false
	movq	%rax, %rdi
	movq	%rax, %r12
	movl	$.L.str20, %esi
	callq	strcmp
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB30_48
# BB#20:                                # %cont_BB44
	testl	%eax, %eax
	movq	%r12, %rdi
	je	.LBB30_21
# BB#25:                                # %if.else
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	leaq	-5072(%rbp), %rsi
	callq	fopen
	jmp	.LBB30_27
.LBB30_21:                              # %if.then21
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB30_48
# BB#22:                                # %cont_BB47
	testl	%r14d, %r14d
	je	.LBB30_24
# BB#23:                                # %cond.true
	movq	stdout(%rip), %r15
	jmp	.LBB30_28
.LBB30_39:                              # %if.else46
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-5078(%rbp), %dl        # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rax)
	movb	-5077(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, param_taint102(%rip)
	andb	$1, %cl
	leaq	-44(%rbp), %rdi
	leaq	-5056(%rbp), %r8
	movb	%cl, param_taint103(%rip)
	movb	$0, param_taint104(%rip)
	movb	$0, param_taint105(%rip)
	movb	%dl, param_taint106(%rip)
	movb	$0, param_taint107(%rip)
	movq	%r15, %rsi
	xorl	%edx, %edx
	movl	-5076(%rbp), %ecx       # 4-byte Reload
	xorl	%r9d, %r9d
	callq	BZ2_bzReadOpen
	movb	return_taint28(%rip), %dl
.LBB30_40:                              # %if.end49
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB30_48
# BB#41:                                # %cont_BB74
	testq	%rax, %rax
	jne	.LBB30_47
# BB#42:                                # %if.then52
	xorb	%al, %al
	testb	%al, %al
	movb	$0, %dl
	jne	.LBB30_48
# BB#43:                                # %cont_BB78
	movq	stdin(%rip), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %r15
	je	.LBB30_47
# BB#44:                                # %land.lhs.true
	xorb	%al, %al
	testb	%al, %al
	movb	$0, %dl
	je	.LBB30_45
	.align	16, 0x90
.LBB30_48:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str169, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB30_48
.LBB30_24:                              # %cond.false
	movq	stdin(%rip), %r15
	jmp	.LBB30_28
.LBB30_45:                              # %cont_BB82
	movq	stdout(%rip), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %r15
	je	.LBB30_47
# BB#46:                                # %if.then57
	movq	%r15, %rdi
	callq	fclose
	xorl	%eax, %eax
	xorb	%dl, %dl
.LBB30_47:                              # %return
	andb	$1, %dl
	movb	%dl, return_taint11(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp265:
	.size	bzopen_or_bzdopen, .Ltmp265-bzopen_or_bzdopen
	.cfi_endproc

	.globl	BZ2_bzdopen
	.align	16, 0x90
	.type	BZ2_bzdopen,@function
BZ2_bzdopen:                            # @BZ2_bzdopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp267:
	.cfi_def_cfa_offset 16
	movq	%rsi, %r8
	movl	%edi, %ecx
	movb	param_taint68(%rip), %dl
	movb	param_taint67(%rip), %al
	movb	$0, param_taint63(%rip)
	movb	%al, param_taint64(%rip)
	movb	%dl, param_taint65(%rip)
	movb	$0, param_taint66(%rip)
	xorl	%edi, %edi
	movl	%ecx, %esi
	movq	%r8, %rdx
	movl	$1, %ecx
	callq	bzopen_or_bzdopen
	movb	return_taint11(%rip), %cl
	movb	%cl, return_taint12(%rip)
	popq	%rdx
	ret
.Ltmp268:
	.size	BZ2_bzdopen, .Ltmp268-BZ2_bzdopen
	.cfi_endproc

	.globl	BZ2_bzread
	.align	16, 0x90
	.type	BZ2_bzread,@function
BZ2_bzread:                             # @BZ2_bzread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp270:
	.cfi_def_cfa_offset 16
	movl	%edx, %r8d
	movq	%rsi, %r9
	movq	%rdi, %r11
	movb	param_taint70(%rip), %dl
	movb	param_taint71(%rip), %dil
	movb	param_taint69(%rip), %r10b
	movb	%r10b, 3(%rsp)
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB32_8
# BB#1:                                 # %cont_BB
	movl	5096(%r11), %esi
	xorl	%eax, %eax
	cmpl	$4, %esi
	je	.LBB32_7
# BB#2:                                 # %if.end
	andb	$1, %cl
	movb	%cl, param_taint110(%rip)
	movb	%r10b, param_taint111(%rip)
	andb	$1, %dl
	movb	%dl, param_taint112(%rip)
	andb	$1, %dil
	movb	%dil, param_taint113(%rip)
	leaq	4(%rsp), %rdi
	movq	%r11, %rsi
	movq	%r9, %rdx
	movl	%r8d, %ecx
	callq	BZ2_bzRead
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB32_8
# BB#3:                                 # %cont_BB7
	movl	4(%rsp), %edx
	movb	return_taint30(%rip), %cl
	testl	%edx, %edx
	je	.LBB32_7
# BB#4:                                 # %lor.lhs.false
	xorb	%dl, %dl
	testb	%dl, %dl
	je	.LBB32_5
	.align	16, 0x90
.LBB32_8:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str171, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB32_8
.LBB32_5:                               # %cont_BB11
	movl	4(%rsp), %edx
	cmpl	$4, %edx
	je	.LBB32_7
# BB#6:                                 # %if.else
	movl	$-1, %eax
	xorb	%cl, %cl
.LBB32_7:                               # %return
	andb	$1, %cl
	movb	%cl, return_taint13(%rip)
	popq	%rdx
	ret
.Ltmp271:
	.size	BZ2_bzread, .Ltmp271-BZ2_bzread
	.cfi_endproc

	.globl	BZ2_bzwrite
	.align	16, 0x90
	.type	BZ2_bzwrite,@function
BZ2_bzwrite:                            # @BZ2_bzwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp275:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp276:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp277:
	.cfi_def_cfa_offset 32
.Ltmp278:
	.cfi_offset %rbx, -24
.Ltmp279:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r8
	movq	%rdi, %rcx
	movb	param_taint74(%rip), %bpl
	movb	param_taint73(%rip), %dl
	movb	param_taint72(%rip), %al
	movb	$0, param_taint45(%rip)
	movb	%al, param_taint46(%rip)
	movb	%dl, param_taint47(%rip)
	movb	%bpl, param_taint48(%rip)
	leaq	4(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movl	%ebx, %ecx
	callq	BZ2_bzWrite
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB33_4
# BB#1:                                 # %cont_BB
	movl	4(%rsp), %eax
	testl	%eax, %eax
	je	.LBB33_3
# BB#2:                                 # %if.else
	movl	$-1, %ebx
	xorb	%bpl, %bpl
.LBB33_3:                               # %return
	movb	%bpl, return_taint14(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.align	16, 0x90
.LBB33_4:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str172, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB33_4
.Ltmp280:
	.size	BZ2_bzwrite, .Ltmp280-BZ2_bzwrite
	.cfi_endproc

	.globl	BZ2_bzflush
	.align	16, 0x90
	.type	BZ2_bzflush,@function
BZ2_bzflush:                            # @BZ2_bzflush
	.cfi_startproc
# BB#0:                                 # %entry
	movb	$0, return_taint24(%rip)
	xorl	%eax, %eax
	ret
.Ltmp281:
	.size	BZ2_bzflush, .Ltmp281-BZ2_bzflush
	.cfi_endproc

	.globl	BZ2_bzclose
	.align	16, 0x90
	.type	BZ2_bzclose,@function
BZ2_bzclose:                            # @BZ2_bzclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
.Ltmp288:
	.cfi_offset %rbx, -40
.Ltmp289:
	.cfi_offset %r14, -32
.Ltmp290:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB35_14
# BB#1:                                 # %cont_BB
	testq	%r15, %r15
	je	.LBB35_13
# BB#2:                                 # %if.end
	movb	param_taint132(%rip), %bl
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	andb	$1, %bl
	movb	%bl, -16(%rcx)
	movq	(%r15), %r14
	xorb	%cl, %cl
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%cl, %cl
	movb	%bl, -16(%rdx)
	jne	.LBB35_14
# BB#3:                                 # %cont_BB8
	movb	5012(%r15), %cl
	andb	$1, %al
	testb	%cl, %cl
	je	.LBB35_7
# BB#4:                                 # %if.then1
	movb	%al, param_taint90(%rip)
	movb	%bl, param_taint91(%rip)
	movb	$0, param_taint92(%rip)
	movb	$0, param_taint93(%rip)
	movb	$0, param_taint94(%rip)
	leaq	-28(%rbp), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	BZ2_bzWriteClose
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB35_14
# BB#5:                                 # %cont_BB12
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.LBB35_8
# BB#6:                                 # %if.then3
	movb	$0, param_taint90(%rip)
	movb	%bl, param_taint91(%rip)
	movb	$0, param_taint92(%rip)
	movb	$0, param_taint93(%rip)
	movb	$0, param_taint94(%rip)
	xorl	%edi, %edi
	movq	%r15, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	BZ2_bzWriteClose
	jmp	.LBB35_8
.LBB35_7:                               # %if.else
	movb	%al, param_taint108(%rip)
	movb	%bl, param_taint109(%rip)
	leaq	-28(%rbp), %rdi
	movq	%r15, %rsi
	callq	BZ2_bzReadClose
.LBB35_8:                               # %if.end5
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB35_14
# BB#9:                                 # %cont_BB18
	movq	stdin(%rip), %rax
	cmpq	%rax, %r14
	je	.LBB35_13
# BB#10:                                # %land.lhs.true
	xorb	%al, %al
	testb	%al, %al
	je	.LBB35_11
	.align	16, 0x90
.LBB35_14:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str174, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB35_14
.LBB35_11:                              # %cont_BB22
	movq	stdout(%rip), %rax
	cmpq	%rax, %r14
	je	.LBB35_13
# BB#12:                                # %if.then8
	movq	%r14, %rdi
	callq	fclose
.LBB35_13:                              # %if.end9
	movb	$0, return_taint35(%rip)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp291:
	.size	BZ2_bzclose, .Ltmp291-BZ2_bzclose
	.cfi_endproc

	.globl	BZ2_bzerror
	.align	16, 0x90
	.type	BZ2_bzerror,@function
BZ2_bzerror:                            # @BZ2_bzerror
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	param_taint133(%rip), %al
	movb	%al, -2(%rbp)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB36_5
# BB#1:                                 # %cont_BB
	movl	5096(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB36_2
# BB#3:                                 # %if.then
	xorl	%eax, %eax
	xorb	%cl, %cl
	jmp	.LBB36_4
	.align	16, 0x90
.LBB36_5:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str175, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB36_5
.LBB36_2:
	movb	-2(%rbp), %cl
.LBB36_4:                               # %if.end
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	%eax, (%rsi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	negl	%eax
	movq	%rdx, %rsp
	movslq	%eax, %rax
	movb	$0, -16(%rcx)
	movq	bzerrorstrings(,%rax,8), %rax
	movb	$0, return_taint36(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp297:
	.size	BZ2_bzerror, .Ltmp297-BZ2_bzerror
	.cfi_endproc

	.align	16, 0x90
	.type	copy_output_until_stop,@function
copy_output_until_stop:                 # @copy_output_until_stop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorb	%r8b, %r8b
	movb	param_taint135(%rip), %cl
	andb	$1, %cl
	xorb	%r9b, %r9b
	jmp	.LBB37_1
	.align	16, 0x90
.LBB37_7:                               # %if.then16
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movq	(%rdi), %rsi
	movb	$1, %r9b
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movl	40(%rsi), %edx
	movb	%cl, -16(%rax)
	incl	%edx
	movl	%edx, 40(%rsi)
	.align	16, 0x90
.LBB37_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movq	(%rdi), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%r8b, %r8b
	movb	%cl, -16(%rax)
	jne	.LBB37_9
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	32(%rsi), %eax
	testl	%eax, %eax
	je	.LBB37_8
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movl	120(%rdi), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%r8b, %r8b
	movb	%cl, -16(%rax)
	jne	.LBB37_9
# BB#4:                                 # %cont_BB12
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	116(%rdi), %eax
	cmpl	%eax, %esi
	jge	.LBB37_8
# BB#5:                                 # %if.end3
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movslq	120(%rdi), %r9
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%cl, -16(%rax)
	movq	80(%rdi), %rax
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rsi)
	movb	(%rax,%r9), %r9b
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%cl, -16(%rax)
	movq	(%rdi), %rax
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rsi)
	movq	24(%rax), %rax
	movb	%cl, -1(%rbp)
	movb	%r9b, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movl	120(%rdi), %edx
	movb	%cl, -16(%rax)
	incl	%edx
	movl	%edx, 120(%rdi)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movq	(%rdi), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%cl, -16(%rax)
	movl	32(%rdx), %esi
	movb	%cl, -16(%rax)
	decl	%esi
	movl	%esi, 32(%rdx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movq	(%rdi), %r9
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%cl, -16(%rsi)
	movq	24(%r9), %rax
	movq	%rsp, %r10
	leaq	-16(%r10), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%r10)
	movb	%cl, -16(%rsi)
	incq	%rax
	movq	%rax, 24(%r9)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movq	(%rdi), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%cl, -16(%rax)
	movl	36(%rdx), %esi
	movb	%cl, -16(%rax)
	incl	%esi
	movl	%esi, 36(%rdx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movq	(%rdi), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%cl, -16(%rax)
	jne	.LBB37_9
# BB#6:                                 # %cont_BB61
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	36(%rdx), %eax
	movb	$1, %r9b
	testl	%eax, %eax
	jne	.LBB37_1
	jmp	.LBB37_7
	.align	16, 0x90
.LBB37_9:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str176, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB37_9
.LBB37_8:                               # %while.end
	movzbl	%r9b, %eax
	movb	$0, return_taint37(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp303:
	.size	copy_output_until_stop, .Ltmp303-copy_output_until_stop
	.cfi_endproc

	.align	16, 0x90
	.type	copy_input_until_stop,@function
copy_input_until_stop:                  # @copy_input_until_stop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp307:
	.cfi_def_cfa_offset 16
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp309:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Ltmp310:
	.cfi_offset %rbx, -48
.Ltmp311:
	.cfi_offset %r12, -40
.Ltmp312:
	.cfi_offset %r14, -32
.Ltmp313:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movb	param_taint136(%rip), %bl
	movb	%bl, -33(%rbp)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB38_48
# BB#1:                                 # %cont_BB
	movl	8(%r14), %ecx
	xorb	%r15b, %r15b
	cmpl	$2, %ecx
	jne	.LBB38_23
	jmp	.LBB38_2
	.align	16, 0x90
.LBB38_46:                              # %if.end151
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%bl, -16(%rcx)
	movl	16(%r14), %edx
	movb	$1, %al
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 16(%r14)
.LBB38_23:                              # %while.body60
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	108(%r14), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rdx)
	jne	.LBB38_48
# BB#24:                                # %cont_BB147
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	112(%r14), %edx
	cmpl	%edx, %ecx
	jge	.LBB38_47
# BB#25:                                # %if.end66
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%r14), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rdx)
	jne	.LBB38_48
# BB#26:                                # %cont_BB156
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	8(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB38_47
# BB#27:                                # %if.end72
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#28:                                # %cont_BB162
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	16(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB38_47
# BB#29:                                # %if.end76
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%rax), %rax
	movzbl	(%rax), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rax)
	jne	.LBB38_48
# BB#30:                                # %cont_BB176
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	92(%r14), %eax
	cmpl	%eax, %r12d
	je	.LBB38_34
# BB#31:                                # %land.lhs.true84
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#32:                                # %cont_BB182
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	96(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB38_34
# BB#33:                                # %if.then88
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movzbl	92(%r14), %r8d
	movb	%r15b, %al
	andb	$1, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	648(%r14), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movzbl	651(%r14), %esi
	shll	$8, %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rdi)
	xorl	%r8d, %esi
	movl	BZ2_crc32Table(,%rsi,4), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdi)
	movb	%bl, -16(%rdi)
	xorl	%edx, %esi
	movl	%esi, 648(%r14)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdx)
	movl	92(%r14), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rsi)
	movb	$0, -16(%rsi)
	movb	$1, 128(%r14,%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdx)
	movslq	108(%r14), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rsi)
	movq	64(%r14), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdi)
	movb	%bl, -16(%rdi)
	movb	%r8b, (%rsi,%rdx)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	108(%r14), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%r14)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%al, -16(%rcx)
	movl	%r12d, 92(%r14)
	jmp	.LBB38_43
.LBB38_34:                              # %if.else113
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#35:                                # %cont_BB227
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	92(%r14), %eax
	cmpl	%eax, %r12d
	jne	.LBB38_38
# BB#36:                                # %lor.lhs.false117
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#37:                                # %cont_BB233
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	96(%r14), %eax
	cmpl	$255, %eax
	jne	.LBB38_42
.LBB38_38:                              # %if.then121
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#39:                                # %cont_BB239
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	92(%r14), %eax
	cmpl	$255, %eax
	ja	.LBB38_41
# BB#40:                                # %if.then125
                                        #   in Loop: Header=BB38_23 Depth=1
	movb	%bl, param_taint138(%rip)
	movq	%r14, %rdi
	callq	add_pair_to_block
.LBB38_41:                              # %if.end126
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%r15b, %cl
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movl	%r12d, 92(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$1, 96(%r14)
	jmp	.LBB38_43
.LBB38_42:                              # %if.else129
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	96(%r14), %ecx
	movb	%bl, -16(%rax)
	incl	%ecx
	movl	%ecx, 96(%r14)
.LBB38_43:                              # %if.end133
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%rax), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%bl, -16(%rcx)
	incq	%rdx
	movq	%rdx, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	8(%rax), %edx
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	12(%rax), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rcx)
	jne	.LBB38_48
# BB#44:                                # %cont_BB276
                                        #   in Loop: Header=BB38_23 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.LBB38_46
# BB#45:                                # %if.then147
                                        #   in Loop: Header=BB38_23 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	16(%rax), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 16(%rax)
	jmp	.LBB38_46
	.align	16, 0x90
.LBB38_22:                              # %if.then55
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rcx
	movb	$1, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	16(%rcx), %esi
	movb	%bl, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rcx)
	.align	16, 0x90
.LBB38_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	108(%r14), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rdx)
	jne	.LBB38_48
# BB#3:                                 # %cont_BB9
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	112(%r14), %edx
	cmpl	%edx, %ecx
	jge	.LBB38_47
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%r14), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rdx)
	jne	.LBB38_48
# BB#5:                                 # %cont_BB18
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	8(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB38_47
# BB#6:                                 # %if.end5
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%rax), %rax
	movzbl	(%rax), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rax)
	jne	.LBB38_48
# BB#7:                                 # %cont_BB31
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	92(%r14), %eax
	cmpl	%eax, %r12d
	je	.LBB38_11
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#9:                                 # %cont_BB37
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	96(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB38_11
# BB#10:                                # %if.then11
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movzbl	92(%r14), %r8d
	movb	%r15b, %al
	andb	$1, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movl	648(%r14), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movzbl	651(%r14), %esi
	shll	$8, %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rdi)
	xorl	%r8d, %esi
	movl	BZ2_crc32Table(,%rsi,4), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdi)
	movb	%bl, -16(%rdi)
	xorl	%edx, %esi
	movl	%esi, 648(%r14)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdx)
	movl	92(%r14), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rsi)
	movb	$0, -16(%rsi)
	movb	$1, 128(%r14,%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdx)
	movslq	108(%r14), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rsi)
	movq	64(%r14), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdi)
	movb	%bl, -16(%rdi)
	movb	%r8b, (%rsi,%rdx)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	108(%r14), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%r14)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movb	%al, -16(%rcx)
	movl	%r12d, 92(%r14)
	jmp	.LBB38_20
.LBB38_11:                              # %if.else
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#12:                                # %cont_BB82
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	92(%r14), %eax
	cmpl	%eax, %r12d
	jne	.LBB38_15
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#14:                                # %cont_BB88
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	96(%r14), %eax
	cmpl	$255, %eax
	jne	.LBB38_19
.LBB38_15:                              # %if.then32
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r15b, %r15b
	jne	.LBB38_48
# BB#16:                                # %cont_BB94
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	92(%r14), %eax
	cmpl	$255, %eax
	ja	.LBB38_18
# BB#17:                                # %if.then36
                                        #   in Loop: Header=BB38_2 Depth=1
	movb	%bl, param_taint138(%rip)
	movq	%r14, %rdi
	callq	add_pair_to_block
.LBB38_18:                              # %if.end37
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	%r15b, %cl
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movl	%r12d, 92(%r14)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$1, 96(%r14)
	jmp	.LBB38_20
.LBB38_19:                              # %if.else40
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	96(%r14), %ecx
	movb	%bl, -16(%rax)
	incl	%ecx
	movl	%ecx, 96(%r14)
.LBB38_20:                              # %if.end44
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	(%rax), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%bl, -16(%rcx)
	incq	%rdx
	movq	%rdx, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	8(%rax), %edx
	movb	%bl, -16(%rcx)
	decl	%edx
	movl	%edx, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	12(%rax), %edx
	movb	%bl, -16(%rcx)
	incl	%edx
	movl	%edx, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%r15b, %r15b
	movb	%bl, -16(%rcx)
	jne	.LBB38_48
# BB#21:                                # %cont_BB130
                                        #   in Loop: Header=BB38_2 Depth=1
	movl	12(%rax), %ecx
	movb	$1, %al
	testl	%ecx, %ecx
	jne	.LBB38_2
	jmp	.LBB38_22
	.align	16, 0x90
.LBB38_48:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str177, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB38_48
.LBB38_47:                              # %if.end155
	movzbl	%al, %eax
	movb	$0, return_taint38(%rip)
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp314:
	.size	copy_input_until_stop, .Ltmp314-copy_input_until_stop
	.cfi_endproc

	.align	16, 0x90
	.type	flush_RL,@function
flush_RL:                               # @flush_RL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp318:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp319:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp320:
	.cfi_def_cfa_offset 32
.Ltmp321:
	.cfi_offset %rbx, -24
.Ltmp322:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movb	param_taint137(%rip), %bl
	movb	%bl, 7(%rsp)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB39_4
# BB#1:                                 # %cont_BB
	movl	92(%r14), %eax
	cmpl	$255, %eax
	ja	.LBB39_3
# BB#2:                                 # %if.then
	movb	%bl, param_taint138(%rip)
	movq	%r14, %rdi
	callq	add_pair_to_block
.LBB39_3:                               # %if.end
	movb	%bl, param_taint54(%rip)
	movq	%r14, %rdi
	callq	init_RL
	movb	$0, return_taint39(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
	.align	16, 0x90
.LBB39_4:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str178, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB39_4
.Ltmp323:
	.size	flush_RL, .Ltmp323-flush_RL
	.cfi_endproc

	.align	16, 0x90
	.type	add_pair_to_block,@function
add_pair_to_block:                      # @add_pair_to_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp330:
	.cfi_offset %rbx, -32
.Ltmp331:
	.cfi_offset %r14, -24
	movb	param_taint138(%rip), %r14b
	movb	%r14b, -17(%rbp)
	movb	92(%rdi), %r8b
	movl	$-1, %esi
	movb	-17(%rbp), %r9b
	xorb	%r10b, %r10b
	movzbl	%r8b, %r11d
	jmp	.LBB40_1
	.align	16, 0x90
.LBB40_3:                               # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	648(%rdi), %ecx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rdx)
	movzbl	651(%rdi), %edx
	shll	$8, %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rbx)
	xorl	%r11d, %edx
	movl	BZ2_crc32Table(,%rdx,4), %edx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r14b, -16(%rbx)
	movb	%r14b, -16(%rbx)
	xorl	%ecx, %edx
	movl	%edx, 648(%rdi)
.LBB40_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	testb	%r10b, %r10b
	jne	.LBB40_14
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	96(%rdi), %ecx
	incl	%esi
	cmpl	%ecx, %esi
	jl	.LBB40_3
# BB#4:                                 # %for.end
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	92(%rdi), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movb	$0, -16(%rdx)
	movb	$1, 128(%rdi,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	96(%rdi), %ecx
	cmpl	$3, %ecx
	jne	.LBB40_5
# BB#11:                                # %sw.bb27
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	andb	$1, %r9b
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movb	%r8b, (%rdx,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	108(%rdi), %edx
	movb	%r14b, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	jmp	.LBB40_10
	.align	16, 0x90
.LBB40_14:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str179, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB40_14
.LBB40_5:                               # %for.end
	cmpl	$2, %ecx
	jne	.LBB40_6
# BB#9:                                 # %sw.bb14
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	andb	$1, %r9b
.LBB40_10:                              # %sw.bb14
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rdx
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movb	%r8b, (%rdx,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	108(%rdi), %edx
	movb	%r14b, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	.align	16, 0x90
.LBB40_8:                               # %sw.bb
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rdx
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movb	%r8b, (%rdx,%rcx)
	.align	16, 0x90
.LBB40_13:                              # %sw.default
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	108(%rdi), %edx
	movb	%r14b, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%rdi)
	movb	$0, return_taint40(%rip)
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.LBB40_6:                               # %for.end
	cmpl	$1, %ecx
	jne	.LBB40_12
# BB#7:                                 # %sw.bb
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	andb	$1, %r9b
	jmp	.LBB40_8
.LBB40_12:                              # %sw.default
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	96(%rdi), %ecx
	andb	$1, %r9b
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	addl	$-4, %ecx
	movslq	%ecx, %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movb	$0, -16(%rdx)
	movb	$1, 128(%rdi,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movb	%r8b, (%rdx,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	108(%rdi), %edx
	movb	%r14b, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movb	%r8b, (%rdx,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	108(%rdi), %edx
	movb	%r14b, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movb	%r8b, (%rdx,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	108(%rdi), %edx
	movb	%r14b, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movslq	108(%rdi), %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rsi)
	movb	%r9b, -16(%rsi)
	movb	%r8b, (%rdx,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	108(%rdi), %edx
	movb	%r14b, -16(%rcx)
	incl	%edx
	movl	%edx, 108(%rdi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	movl	96(%rdi), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movslq	108(%rdi), %r8
	addl	$-4, %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rdx)
	movq	64(%rdi), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rdx)
	movb	%r14b, -16(%rdx)
	movb	%cl, (%rsi,%r8)
	jmp	.LBB40_13
.Ltmp332:
	.size	add_pair_to_block, .Ltmp332-add_pair_to_block
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "\n\nbzip2/libbzip2: internal error number %d.\nThis is a bug in bzip2/libbzip2, %s.\nPlease report it to me at: jseward@bzip.org.  If this happened\nwhen you were using some program which uses libbzip2 as a\ncomponent, you should also report this bug to the author(s)\nof that program.  Please make an effort to report this bug;\ntimely and accurate bug reports eventually lead to higher\nquality software.  Thanks.  Julian Seward, 10 December 2007.\n\n"
	.size	.L.str, 443

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "\n*** A special note about internal error number 1007 ***\n\nExperience suggests that a common cause of i.e. 1007\nis unreliable memory or other hardware.  The 1007 assertion\njust happens to cross-check the results of huge numbers of\nmemory reads/writes, and so acts (unintendedly) as a stress\ntest of your memory system.\n\nI suggest the following: try compressing the file again,\npossibly monitoring progress in detail with the -vv flag.\n\n* If the error cannot be reproduced, and/or happens at different\n  points in compression, you may have a flaky memory system.\n  Try a memory-test program.  I have used Memtest86\n  (www.memtest86.com).  At the time of writing it is free (GPLd).\n  Memtest86 tests memory much more thorougly than your BIOSs\n  power-on test, and may find failures that the BIOS doesn't.\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n"
	.size	.L.str1, 1057

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 " {0x%08x, 0x%08x}"
	.size	.L.str2, 18

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "]"
	.size	.L.str3, 2

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "\n    combined CRCs: stored = 0x%08x, computed = 0x%08x"
	.size	.L.str4, 55

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "1.0.6, 6-Sept-2010"
	.size	.L.str5, 19

	.type	bzerrorstrings,@object  # @bzerrorstrings
	.data
	.align	16
bzerrorstrings:
	.quad	.L.str6
	.quad	.L.str7
	.quad	.L.str8
	.quad	.L.str9
	.quad	.L.str10
	.quad	.L.str11
	.quad	.L.str12
	.quad	.L.str13
	.quad	.L.str14
	.quad	.L.str15
	.quad	.L.str16
	.quad	.L.str16
	.quad	.L.str16
	.quad	.L.str16
	.quad	.L.str16
	.quad	.L.str16
	.size	bzerrorstrings, 128

	.type	.L.str6,@object         # @.str6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str6:
	.asciz	 "OK"
	.size	.L.str6, 3

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "SEQUENCE_ERROR"
	.size	.L.str7, 15

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "PARAM_ERROR"
	.size	.L.str8, 12

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "MEM_ERROR"
	.size	.L.str9, 10

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "DATA_ERROR"
	.size	.L.str10, 11

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "DATA_ERROR_MAGIC"
	.size	.L.str11, 17

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "IO_ERROR"
	.size	.L.str12, 9

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "UNEXPECTED_EOF"
	.size	.L.str13, 15

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "OUTBUFF_FULL"
	.size	.L.str14, 13

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "CONFIG_ERROR"
	.size	.L.str15, 13

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	 "???"
	.size	.L.str16, 4

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	 "w"
	.size	.L.str17, 2

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	 "r"
	.size	.L.str18, 2

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	 "b"
	.size	.L.str19, 2

	.type	.L.str20,@object        # @.str20
.L.str20:
	.zero	1
	.size	.L.str20, 1

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

	.type	return_taint9,@object   # @return_taint9
	.globl	return_taint9
return_taint9:
	.byte	0                       # 0x0
	.size	return_taint9, 1

	.type	return_taint10,@object  # @return_taint10
	.globl	return_taint10
return_taint10:
	.byte	0                       # 0x0
	.size	return_taint10, 1

	.type	return_taint11,@object  # @return_taint11
	.globl	return_taint11
return_taint11:
	.byte	0                       # 0x0
	.size	return_taint11, 1

	.type	return_taint12,@object  # @return_taint12
	.globl	return_taint12
return_taint12:
	.byte	0                       # 0x0
	.size	return_taint12, 1

	.type	return_taint13,@object  # @return_taint13
	.globl	return_taint13
return_taint13:
	.byte	0                       # 0x0
	.size	return_taint13, 1

	.type	return_taint14,@object  # @return_taint14
	.globl	return_taint14
return_taint14:
	.byte	0                       # 0x0
	.size	return_taint14, 1

	.type	return_taint15,@object  # @return_taint15
	.globl	return_taint15
return_taint15:
	.byte	0                       # 0x0
	.size	return_taint15, 1

	.type	return_taint16,@object  # @return_taint16
	.globl	return_taint16
return_taint16:
	.byte	0                       # 0x0
	.size	return_taint16, 1

	.type	return_taint17,@object  # @return_taint17
	.globl	return_taint17
return_taint17:
	.byte	0                       # 0x0
	.size	return_taint17, 1

	.type	return_taint18,@object  # @return_taint18
	.globl	return_taint18
return_taint18:
	.byte	0                       # 0x0
	.size	return_taint18, 1

	.type	return_taint19,@object  # @return_taint19
	.globl	return_taint19
return_taint19:
	.byte	0                       # 0x0
	.size	return_taint19, 1

	.type	return_taint20,@object  # @return_taint20
	.globl	return_taint20
return_taint20:
	.byte	0                       # 0x0
	.size	return_taint20, 1

	.type	return_taint21,@object  # @return_taint21
	.globl	return_taint21
return_taint21:
	.byte	0                       # 0x0
	.size	return_taint21, 1

	.type	return_taint22,@object  # @return_taint22
	.globl	return_taint22
return_taint22:
	.byte	0                       # 0x0
	.size	return_taint22, 1

	.type	return_taint23,@object  # @return_taint23
	.globl	return_taint23
return_taint23:
	.byte	0                       # 0x0
	.size	return_taint23, 1

	.type	return_taint24,@object  # @return_taint24
	.globl	return_taint24
return_taint24:
	.byte	0                       # 0x0
	.size	return_taint24, 1

	.type	return_taint25,@object  # @return_taint25
	.globl	return_taint25
return_taint25:
	.byte	0                       # 0x0
	.size	return_taint25, 1

	.type	return_taint26,@object  # @return_taint26
	.globl	return_taint26
return_taint26:
	.byte	0                       # 0x0
	.size	return_taint26, 1

	.type	return_taint27,@object  # @return_taint27
	.globl	return_taint27
return_taint27:
	.byte	0                       # 0x0
	.size	return_taint27, 1

	.type	return_taint28,@object  # @return_taint28
	.globl	return_taint28
return_taint28:
	.byte	0                       # 0x0
	.size	return_taint28, 1

	.type	return_taint29,@object  # @return_taint29
	.globl	return_taint29
return_taint29:
	.byte	0                       # 0x0
	.size	return_taint29, 1

	.type	return_taint30,@object  # @return_taint30
	.globl	return_taint30
return_taint30:
	.byte	0                       # 0x0
	.size	return_taint30, 1

	.type	return_taint31,@object  # @return_taint31
	.globl	return_taint31
return_taint31:
	.byte	0                       # 0x0
	.size	return_taint31, 1

	.type	return_taint32,@object  # @return_taint32
	.globl	return_taint32
return_taint32:
	.byte	0                       # 0x0
	.size	return_taint32, 1

	.type	return_taint33,@object  # @return_taint33
	.globl	return_taint33
return_taint33:
	.byte	0                       # 0x0
	.size	return_taint33, 1

	.type	return_taint34,@object  # @return_taint34
	.globl	return_taint34
return_taint34:
	.byte	0                       # 0x0
	.size	return_taint34, 1

	.type	return_taint35,@object  # @return_taint35
	.globl	return_taint35
return_taint35:
	.byte	0                       # 0x0
	.size	return_taint35, 1

	.type	return_taint36,@object  # @return_taint36
	.globl	return_taint36
return_taint36:
	.byte	0                       # 0x0
	.size	return_taint36, 1

	.type	return_taint37,@object  # @return_taint37
	.globl	return_taint37
return_taint37:
	.byte	0                       # 0x0
	.size	return_taint37, 1

	.type	return_taint38,@object  # @return_taint38
	.globl	return_taint38
return_taint38:
	.byte	0                       # 0x0
	.size	return_taint38, 1

	.type	return_taint39,@object  # @return_taint39
	.globl	return_taint39
return_taint39:
	.byte	0                       # 0x0
	.size	return_taint39, 1

	.type	return_taint40,@object  # @return_taint40
	.globl	return_taint40
return_taint40:
	.byte	0                       # 0x0
	.size	return_taint40, 1

	.type	param_taint,@object     # @param_taint
	.globl	param_taint
param_taint:
	.byte	0                       # 0x0
	.size	param_taint, 1

	.type	param_taint41,@object   # @param_taint41
	.globl	param_taint41
param_taint41:
	.byte	0                       # 0x0
	.size	param_taint41, 1

	.type	param_taint42,@object   # @param_taint42
	.globl	param_taint42
param_taint42:
	.byte	0                       # 0x0
	.size	param_taint42, 1

	.type	param_taint43,@object   # @param_taint43
	.globl	param_taint43
param_taint43:
	.byte	0                       # 0x0
	.size	param_taint43, 1

	.type	param_taint44,@object   # @param_taint44
	.globl	param_taint44
param_taint44:
	.byte	0                       # 0x0
	.size	param_taint44, 1

	.type	param_taint45,@object   # @param_taint45
	.globl	param_taint45
param_taint45:
	.byte	0                       # 0x0
	.size	param_taint45, 1

	.type	param_taint46,@object   # @param_taint46
	.globl	param_taint46
param_taint46:
	.byte	0                       # 0x0
	.size	param_taint46, 1

	.type	param_taint47,@object   # @param_taint47
	.globl	param_taint47
param_taint47:
	.byte	0                       # 0x0
	.size	param_taint47, 1

	.type	param_taint48,@object   # @param_taint48
	.globl	param_taint48
param_taint48:
	.byte	0                       # 0x0
	.size	param_taint48, 1

	.type	param_taint49,@object   # @param_taint49
	.globl	param_taint49
param_taint49:
	.byte	0                       # 0x0
	.size	param_taint49, 1

	.type	param_taint50,@object   # @param_taint50
	.globl	param_taint50
param_taint50:
	.byte	0                       # 0x0
	.size	param_taint50, 1

	.type	param_taint51,@object   # @param_taint51
	.globl	param_taint51
param_taint51:
	.byte	0                       # 0x0
	.size	param_taint51, 1

	.type	param_taint52,@object   # @param_taint52
	.globl	param_taint52
param_taint52:
	.byte	0                       # 0x0
	.size	param_taint52, 1

	.type	param_taint53,@object   # @param_taint53
	.globl	param_taint53
param_taint53:
	.byte	0                       # 0x0
	.size	param_taint53, 1

	.type	param_taint54,@object   # @param_taint54
	.globl	param_taint54
param_taint54:
	.byte	0                       # 0x0
	.size	param_taint54, 1

	.type	param_taint55,@object   # @param_taint55
	.globl	param_taint55
param_taint55:
	.byte	0                       # 0x0
	.size	param_taint55, 1

	.type	param_taint56,@object   # @param_taint56
	.globl	param_taint56
param_taint56:
	.byte	0                       # 0x0
	.size	param_taint56, 1

	.type	param_taint57,@object   # @param_taint57
	.globl	param_taint57
param_taint57:
	.byte	0                       # 0x0
	.size	param_taint57, 1

	.type	param_taint58,@object   # @param_taint58
	.globl	param_taint58
param_taint58:
	.byte	0                       # 0x0
	.size	param_taint58, 1

	.type	param_taint59,@object   # @param_taint59
	.globl	param_taint59
param_taint59:
	.byte	0                       # 0x0
	.size	param_taint59, 1

	.type	param_taint60,@object   # @param_taint60
	.globl	param_taint60
param_taint60:
	.byte	0                       # 0x0
	.size	param_taint60, 1

	.type	param_taint61,@object   # @param_taint61
	.globl	param_taint61
param_taint61:
	.byte	0                       # 0x0
	.size	param_taint61, 1

	.type	param_taint62,@object   # @param_taint62
	.globl	param_taint62
param_taint62:
	.byte	0                       # 0x0
	.size	param_taint62, 1

	.type	param_taint63,@object   # @param_taint63
	.globl	param_taint63
param_taint63:
	.byte	0                       # 0x0
	.size	param_taint63, 1

	.type	param_taint64,@object   # @param_taint64
	.globl	param_taint64
param_taint64:
	.byte	0                       # 0x0
	.size	param_taint64, 1

	.type	param_taint65,@object   # @param_taint65
	.globl	param_taint65
param_taint65:
	.byte	0                       # 0x0
	.size	param_taint65, 1

	.type	param_taint66,@object   # @param_taint66
	.globl	param_taint66
param_taint66:
	.byte	0                       # 0x0
	.size	param_taint66, 1

	.type	param_taint67,@object   # @param_taint67
	.globl	param_taint67
param_taint67:
	.byte	0                       # 0x0
	.size	param_taint67, 1

	.type	param_taint68,@object   # @param_taint68
	.globl	param_taint68
param_taint68:
	.byte	0                       # 0x0
	.size	param_taint68, 1

	.type	param_taint69,@object   # @param_taint69
	.globl	param_taint69
param_taint69:
	.byte	0                       # 0x0
	.size	param_taint69, 1

	.type	param_taint70,@object   # @param_taint70
	.globl	param_taint70
param_taint70:
	.byte	0                       # 0x0
	.size	param_taint70, 1

	.type	param_taint71,@object   # @param_taint71
	.globl	param_taint71
param_taint71:
	.byte	0                       # 0x0
	.size	param_taint71, 1

	.type	param_taint72,@object   # @param_taint72
	.globl	param_taint72
param_taint72:
	.byte	0                       # 0x0
	.size	param_taint72, 1

	.type	param_taint73,@object   # @param_taint73
	.globl	param_taint73
param_taint73:
	.byte	0                       # 0x0
	.size	param_taint73, 1

	.type	param_taint74,@object   # @param_taint74
	.globl	param_taint74
param_taint74:
	.byte	0                       # 0x0
	.size	param_taint74, 1

	.type	param_taint75,@object   # @param_taint75
	.globl	param_taint75
param_taint75:
	.byte	0                       # 0x0
	.size	param_taint75, 1

	.type	param_taint76,@object   # @param_taint76
	.globl	param_taint76
param_taint76:
	.byte	0                       # 0x0
	.size	param_taint76, 1

	.type	param_taint77,@object   # @param_taint77
	.globl	param_taint77
param_taint77:
	.byte	0                       # 0x0
	.size	param_taint77, 1

	.type	param_taint78,@object   # @param_taint78
	.globl	param_taint78
param_taint78:
	.byte	0                       # 0x0
	.size	param_taint78, 1

	.type	param_taint79,@object   # @param_taint79
	.globl	param_taint79
param_taint79:
	.byte	0                       # 0x0
	.size	param_taint79, 1

	.type	param_taint80,@object   # @param_taint80
	.globl	param_taint80
param_taint80:
	.byte	0                       # 0x0
	.size	param_taint80, 1

	.type	param_taint81,@object   # @param_taint81
	.globl	param_taint81
param_taint81:
	.byte	0                       # 0x0
	.size	param_taint81, 1

	.type	param_taint82,@object   # @param_taint82
	.globl	param_taint82
param_taint82:
	.byte	0                       # 0x0
	.size	param_taint82, 1

	.type	param_taint83,@object   # @param_taint83
	.globl	param_taint83
param_taint83:
	.byte	0                       # 0x0
	.size	param_taint83, 1

	.type	param_taint84,@object   # @param_taint84
	.globl	param_taint84
param_taint84:
	.byte	0                       # 0x0
	.size	param_taint84, 1

	.type	param_taint85,@object   # @param_taint85
	.globl	param_taint85
param_taint85:
	.byte	0                       # 0x0
	.size	param_taint85, 1

	.type	param_taint86,@object   # @param_taint86
	.globl	param_taint86
param_taint86:
	.byte	0                       # 0x0
	.size	param_taint86, 1

	.type	param_taint87,@object   # @param_taint87
	.globl	param_taint87
param_taint87:
	.byte	0                       # 0x0
	.size	param_taint87, 1

	.type	param_taint88,@object   # @param_taint88
	.globl	param_taint88
param_taint88:
	.byte	0                       # 0x0
	.size	param_taint88, 1

	.type	param_taint89,@object   # @param_taint89
	.globl	param_taint89
param_taint89:
	.byte	0                       # 0x0
	.size	param_taint89, 1

	.type	param_taint90,@object   # @param_taint90
	.globl	param_taint90
param_taint90:
	.byte	0                       # 0x0
	.size	param_taint90, 1

	.type	param_taint91,@object   # @param_taint91
	.globl	param_taint91
param_taint91:
	.byte	0                       # 0x0
	.size	param_taint91, 1

	.type	param_taint92,@object   # @param_taint92
	.globl	param_taint92
param_taint92:
	.byte	0                       # 0x0
	.size	param_taint92, 1

	.type	param_taint93,@object   # @param_taint93
	.globl	param_taint93
param_taint93:
	.byte	0                       # 0x0
	.size	param_taint93, 1

	.type	param_taint94,@object   # @param_taint94
	.globl	param_taint94
param_taint94:
	.byte	0                       # 0x0
	.size	param_taint94, 1

	.type	param_taint95,@object   # @param_taint95
	.globl	param_taint95
param_taint95:
	.byte	0                       # 0x0
	.size	param_taint95, 1

	.type	param_taint96,@object   # @param_taint96
	.globl	param_taint96
param_taint96:
	.byte	0                       # 0x0
	.size	param_taint96, 1

	.type	param_taint97,@object   # @param_taint97
	.globl	param_taint97
param_taint97:
	.byte	0                       # 0x0
	.size	param_taint97, 1

	.type	param_taint98,@object   # @param_taint98
	.globl	param_taint98
param_taint98:
	.byte	0                       # 0x0
	.size	param_taint98, 1

	.type	param_taint99,@object   # @param_taint99
	.globl	param_taint99
param_taint99:
	.byte	0                       # 0x0
	.size	param_taint99, 1

	.type	param_taint100,@object  # @param_taint100
	.globl	param_taint100
param_taint100:
	.byte	0                       # 0x0
	.size	param_taint100, 1

	.type	param_taint101,@object  # @param_taint101
	.globl	param_taint101
param_taint101:
	.byte	0                       # 0x0
	.size	param_taint101, 1

	.type	param_taint102,@object  # @param_taint102
	.globl	param_taint102
param_taint102:
	.byte	0                       # 0x0
	.size	param_taint102, 1

	.type	param_taint103,@object  # @param_taint103
	.globl	param_taint103
param_taint103:
	.byte	0                       # 0x0
	.size	param_taint103, 1

	.type	param_taint104,@object  # @param_taint104
	.globl	param_taint104
param_taint104:
	.byte	0                       # 0x0
	.size	param_taint104, 1

	.type	param_taint105,@object  # @param_taint105
	.globl	param_taint105
param_taint105:
	.byte	0                       # 0x0
	.size	param_taint105, 1

	.type	param_taint106,@object  # @param_taint106
	.globl	param_taint106
param_taint106:
	.byte	0                       # 0x0
	.size	param_taint106, 1

	.type	param_taint107,@object  # @param_taint107
	.globl	param_taint107
param_taint107:
	.byte	0                       # 0x0
	.size	param_taint107, 1

	.type	param_taint108,@object  # @param_taint108
	.globl	param_taint108
param_taint108:
	.byte	0                       # 0x0
	.size	param_taint108, 1

	.type	param_taint109,@object  # @param_taint109
	.globl	param_taint109
param_taint109:
	.byte	0                       # 0x0
	.size	param_taint109, 1

	.type	param_taint110,@object  # @param_taint110
	.globl	param_taint110
param_taint110:
	.byte	0                       # 0x0
	.size	param_taint110, 1

	.type	param_taint111,@object  # @param_taint111
	.globl	param_taint111
param_taint111:
	.byte	0                       # 0x0
	.size	param_taint111, 1

	.type	param_taint112,@object  # @param_taint112
	.globl	param_taint112
param_taint112:
	.byte	0                       # 0x0
	.size	param_taint112, 1

	.type	param_taint113,@object  # @param_taint113
	.globl	param_taint113
param_taint113:
	.byte	0                       # 0x0
	.size	param_taint113, 1

	.type	param_taint114,@object  # @param_taint114
	.globl	param_taint114
param_taint114:
	.byte	0                       # 0x0
	.size	param_taint114, 1

	.type	param_taint115,@object  # @param_taint115
	.globl	param_taint115
param_taint115:
	.byte	0                       # 0x0
	.size	param_taint115, 1

	.type	param_taint116,@object  # @param_taint116
	.globl	param_taint116
param_taint116:
	.byte	0                       # 0x0
	.size	param_taint116, 1

	.type	param_taint117,@object  # @param_taint117
	.globl	param_taint117
param_taint117:
	.byte	0                       # 0x0
	.size	param_taint117, 1

	.type	param_taint118,@object  # @param_taint118
	.globl	param_taint118
param_taint118:
	.byte	0                       # 0x0
	.size	param_taint118, 1

	.type	param_taint119,@object  # @param_taint119
	.globl	param_taint119
param_taint119:
	.byte	0                       # 0x0
	.size	param_taint119, 1

	.type	param_taint120,@object  # @param_taint120
	.globl	param_taint120
param_taint120:
	.byte	0                       # 0x0
	.size	param_taint120, 1

	.type	param_taint121,@object  # @param_taint121
	.globl	param_taint121
param_taint121:
	.byte	0                       # 0x0
	.size	param_taint121, 1

	.type	param_taint122,@object  # @param_taint122
	.globl	param_taint122
param_taint122:
	.byte	0                       # 0x0
	.size	param_taint122, 1

	.type	param_taint123,@object  # @param_taint123
	.globl	param_taint123
param_taint123:
	.byte	0                       # 0x0
	.size	param_taint123, 1

	.type	param_taint124,@object  # @param_taint124
	.globl	param_taint124
param_taint124:
	.byte	0                       # 0x0
	.size	param_taint124, 1

	.type	param_taint125,@object  # @param_taint125
	.globl	param_taint125
param_taint125:
	.byte	0                       # 0x0
	.size	param_taint125, 1

	.type	param_taint126,@object  # @param_taint126
	.globl	param_taint126
param_taint126:
	.byte	0                       # 0x0
	.size	param_taint126, 1

	.type	param_taint127,@object  # @param_taint127
	.globl	param_taint127
param_taint127:
	.byte	0                       # 0x0
	.size	param_taint127, 1

	.type	param_taint128,@object  # @param_taint128
	.globl	param_taint128
param_taint128:
	.byte	0                       # 0x0
	.size	param_taint128, 1

	.type	param_taint129,@object  # @param_taint129
	.globl	param_taint129
param_taint129:
	.byte	0                       # 0x0
	.size	param_taint129, 1

	.type	param_taint130,@object  # @param_taint130
	.globl	param_taint130
param_taint130:
	.byte	0                       # 0x0
	.size	param_taint130, 1

	.type	param_taint131,@object  # @param_taint131
	.globl	param_taint131
param_taint131:
	.byte	0                       # 0x0
	.size	param_taint131, 1

	.type	param_taint132,@object  # @param_taint132
	.globl	param_taint132
param_taint132:
	.byte	0                       # 0x0
	.size	param_taint132, 1

	.type	param_taint133,@object  # @param_taint133
	.globl	param_taint133
param_taint133:
	.byte	0                       # 0x0
	.size	param_taint133, 1

	.type	param_taint134,@object  # @param_taint134
	.globl	param_taint134
param_taint134:
	.byte	0                       # 0x0
	.size	param_taint134, 1

	.type	param_taint135,@object  # @param_taint135
	.globl	param_taint135
param_taint135:
	.byte	0                       # 0x0
	.size	param_taint135, 1

	.type	param_taint136,@object  # @param_taint136
	.globl	param_taint136
param_taint136:
	.byte	0                       # 0x0
	.size	param_taint136, 1

	.type	param_taint137,@object  # @param_taint137
	.globl	param_taint137
param_taint137:
	.byte	0                       # 0x0
	.size	param_taint137, 1

	.type	param_taint138,@object  # @param_taint138
	.globl	param_taint138
param_taint138:
	.byte	0                       # 0x0
	.size	param_taint138, 1

	.type	.L.str139,@object       # @.str139
	.section	.rodata,"a",@progbits
.L.str139:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str139, 31

	.type	.L.str140,@object       # @.str140
.L.str140:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str140, 31

	.type	.L.str141,@object       # @.str141
.L.str141:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str141, 31

	.type	.L.str142,@object       # @.str142
.L.str142:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str142, 31

	.type	.L.str143,@object       # @.str143
.L.str143:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str143, 31

	.type	.L.str144,@object       # @.str144
.L.str144:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str144, 31

	.type	.L.str145,@object       # @.str145
.L.str145:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str145, 31

	.type	.L.str146,@object       # @.str146
.L.str146:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str146, 31

	.type	.L.str147,@object       # @.str147
.L.str147:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str147, 31

	.type	.L.str148,@object       # @.str148
.L.str148:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str148, 31

	.type	.L.str149,@object       # @.str149
.L.str149:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str149, 31

	.type	.L.str150,@object       # @.str150
.L.str150:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str150, 31

	.type	.L.str151,@object       # @.str151
.L.str151:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str151, 31

	.type	.L.str152,@object       # @.str152
.L.str152:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str152, 31

	.type	.L.str153,@object       # @.str153
.L.str153:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str153, 31

	.type	.L.str154,@object       # @.str154
.L.str154:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str154, 31

	.type	.L.str155,@object       # @.str155
.L.str155:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str155, 31

	.type	.L.str156,@object       # @.str156
.L.str156:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str156, 31

	.type	.L.str157,@object       # @.str157
.L.str157:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str157, 31

	.type	.L.str158,@object       # @.str158
.L.str158:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str158, 31

	.type	.L.str159,@object       # @.str159
.L.str159:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str159, 31

	.type	.L.str160,@object       # @.str160
.L.str160:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str160, 31

	.type	.L.str161,@object       # @.str161
.L.str161:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str161, 31

	.type	.L.str162,@object       # @.str162
.L.str162:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str162, 31

	.type	.L.str163,@object       # @.str163
.L.str163:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str163, 31

	.type	.L.str164,@object       # @.str164
.L.str164:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str164, 31

	.type	.L.str165,@object       # @.str165
.L.str165:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str165, 31

	.type	.L.str166,@object       # @.str166
.L.str166:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str166, 31

	.type	.L.str167,@object       # @.str167
.L.str167:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str167, 31

	.type	.L.str168,@object       # @.str168
.L.str168:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str168, 31

	.type	.L.str169,@object       # @.str169
.L.str169:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str169, 31

	.type	.L.str170,@object       # @.str170
.L.str170:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str170, 31

	.type	.L.str171,@object       # @.str171
.L.str171:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str171, 31

	.type	.L.str172,@object       # @.str172
.L.str172:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str172, 31

	.type	.L.str173,@object       # @.str173
.L.str173:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str173, 31

	.type	.L.str174,@object       # @.str174
.L.str174:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str174, 31

	.type	.L.str175,@object       # @.str175
.L.str175:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str175, 31

	.type	.L.str176,@object       # @.str176
.L.str176:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str176, 31

	.type	.L.str177,@object       # @.str177
.L.str177:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str177, 31

	.type	.L.str178,@object       # @.str178
.L.str178:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str178, 31

	.type	.L.str179,@object       # @.str179
.L.str179:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str179, 31


	.section	".note.GNU-stack","",@progbits
