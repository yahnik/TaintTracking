	.file	"huffman.tt.bc"
	.text
	.globl	BZ2_hbMakeCodeLengths
	.align	16, 0x90
	.type	BZ2_hbMakeCodeLengths,@function
BZ2_hbMakeCodeLengths:                  # @BZ2_hbMakeCodeLengths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5240, %rsp             # imm = 0x1478
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movl	%ecx, -5260(%rbp)       # 4-byte Spill
	movl	%edx, -5224(%rbp)       # 4-byte Spill
	movq	%rdi, -5272(%rbp)       # 8-byte Spill
	xorl	%r9d, %r9d
	xorb	%r10b, %r10b
	movb	param_taint(%rip), %al
	movb	%al, -5254(%rbp)        # 1-byte Spill
	movb	%r10b, -5253(%rbp)      # 1-byte Spill
	xorb	%r15b, %r15b
	movb	param_taint3(%rip), %r8b
	movb	param_taint4(%rip), %al
	movb	%al, -5273(%rbp)        # 1-byte Spill
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_15:                               # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	xorb	%r10b, %r10b
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	-5253(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rdi)
	andb	$1, %cl
	movb	%cl, -16(%rdi)
	shll	$8, %edx
	movl	%edx, -3148(%rbp,%r9,4)
	incq	%r9
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%r10b, %r10b
	movb	$0, -5217(%rbp)         # 1-byte Folded Spill
	jne	.LBB0_73
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	-5224(%rbp), %r9d       # 4-byte Folded Reload
	jge	.LBB0_3
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r8b, %cl
	andb	$1, %cl
	movb	%cl, -16(%rdx)
	movb	$0, %al
	testb	%al, %al
	jne	.LBB0_73
# BB#12:                                # %cont_BB9
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	(%rsi,%r9,4), %eax
	testl	%eax, %eax
	je	.LBB0_13
# BB#14:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%cl, -16(%rdi)
	movl	(%rsi,%r9,4), %edx
	movb	-16(%rdi), %cl
	jmp	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	xorb	%cl, %cl
	movl	$1, %edx
	jmp	.LBB0_15
.LBB0_3:
	andb	$1, %r15b
	movb	-5253(%rbp), %bl        # 1-byte Reload
	andb	$1, %bl
	andb	$1, -5217(%rbp)         # 1-byte Folded Spill
	xorb	%r13b, %r13b
	andb	$1, -5254(%rbp)         # 1-byte Folded Spill
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_18:                               # %cont_BB67
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$260, %r14d             # imm = 0x104
	jl	.LBB0_20
# BB#19:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$2001, %edi             # imm = 0x7D1
	callq	BZ2_bz__AssertH__fail
.LBB0_20:                               # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	-5273(%rbp), %al        # 1-byte Reload
	movb	%al, -5229(%rbp)        # 1-byte Spill
	movl	-5224(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5228(%rbp)       # 4-byte Spill
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_53:                               # %while.end198
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	andb	$1, %r9b
	movb	%r9b, -16(%rax)
	movslq	%r11d, %rax
	movb	$0, -5229(%rbp)         # 1-byte Folded Spill
	movl	%r8d, -1088(%rbp,%rax,4)
.LBB0_21:                               # %while.cond40
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#22:                                # %cont_BB72
                                        #   in Loop: Header=BB0_21 Depth=2
	cmpl	$2, %r14d
	jl	.LBB0_54
# BB#23:                                # %while.body42
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movslq	-1084(%rbp), %rax
	movq	%rax, -5240(%rbp)       # 8-byte Spill
	movl	$1, %r10d
	movslq	%r14d, %rax
	decl	%r14d
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1088(%rbp,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	%r15b, -16(%rcx)
	movl	%eax, -1084(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	-16(%rax), %r8b
	movl	-1084(%rbp), %eax
	movl	%eax, -5248(%rbp)       # 4-byte Spill
	movslq	%eax, %r9
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_33:                               # %if.end82
                                        #   in Loop: Header=BB0_24 Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1088(%rbp,%rax,4), %eax
	movslq	%r10d, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	movb	%r15b, -16(%rdx)
	movl	%eax, -1088(%rbp,%rcx,4)
	movl	%r11d, %r10d
.LBB0_24:                               # %while.body55
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#25:                                # %cont_BB90
                                        #   in Loop: Header=BB0_24 Depth=3
	leal	(%r10,%r10), %r11d
	cmpl	%r14d, %r11d
	jg	.LBB0_34
# BB#26:                                # %if.end59
                                        #   in Loop: Header=BB0_24 Depth=3
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#27:                                # %cont_BB93
                                        #   in Loop: Header=BB0_24 Depth=3
	cmpl	%r14d, %r11d
	jge	.LBB0_31
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_24 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	leal	1(%r11), %eax
	movslq	%eax, %rcx
	movslq	-1088(%rbp,%rcx,4), %rcx
	movslq	%r11d, %r12
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rsi)
	movl	-3152(%rbp,%rcx,4), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rsi)
	movslq	-1088(%rbp,%r12,4), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rsi)
	jne	.LBB0_73
# BB#29:                                # %cont_BB113
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	-3152(%rbp,%rdx,4), %edx
	cmpl	%edx, %ecx
	jge	.LBB0_31
# BB#30:                                # %if.then71
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	%eax, %r11d
.LBB0_31:                               # %if.end73
                                        #   in Loop: Header=BB0_24 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	-3152(%rbp,%r9,4), %ecx
	movslq	%r11d, %rax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	movslq	-1088(%rbp,%rax,4), %rdx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rsi)
	jne	.LBB0_73
# BB#32:                                # %cont_BB130
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	-3152(%rbp,%rdx,4), %edx
	cmpl	%edx, %ecx
	jge	.LBB0_33
.LBB0_34:                               # %while.end87
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	andb	$1, %r8b
	movb	%r8b, -16(%rax)
	movslq	%r10d, %rax
	movl	-5248(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, -1088(%rbp,%rax,4)
	movl	$1, %r12d
	movslq	%r14d, %rax
	decl	%r14d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movslq	-1084(%rbp), %rcx
	movq	%rcx, -5248(%rbp)       # 8-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1088(%rbp,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	%r15b, -16(%rcx)
	movl	%eax, -1084(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	-16(%rax), %r11b
	movl	-1084(%rbp), %eax
	movl	%eax, -5252(%rbp)       # 4-byte Spill
	movslq	%eax, %r10
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_44:                               # %if.end132
                                        #   in Loop: Header=BB0_35 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movl	-1088(%rbp,%rcx,4), %ecx
	movslq	%r12d, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rax)
	movb	%r15b, -16(%rax)
	movl	%ecx, -1088(%rbp,%rdx,4)
	movl	%r8d, %r12d
.LBB0_35:                               # %while.body104
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#36:                                # %cont_BB156
                                        #   in Loop: Header=BB0_35 Depth=3
	leal	(%r12,%r12), %r8d
	cmpl	%r14d, %r8d
	jg	.LBB0_45
# BB#37:                                # %if.end108
                                        #   in Loop: Header=BB0_35 Depth=3
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#38:                                # %cont_BB159
                                        #   in Loop: Header=BB0_35 Depth=3
	cmpl	%r14d, %r8d
	jge	.LBB0_42
# BB#39:                                # %land.lhs.true110
                                        #   in Loop: Header=BB0_35 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	leal	1(%r8), %ecx
	movslq	%ecx, %rax
	movslq	-1088(%rbp,%rax,4), %rsi
	movslq	%r8d, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rax)
	movl	-3152(%rbp,%rsi,4), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r15b, -16(%rax)
	movslq	-1088(%rbp,%rdx,4), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rax)
	jne	.LBB0_73
# BB#40:                                # %cont_BB179
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	-3152(%rbp,%rdx,4), %eax
	cmpl	%eax, %esi
	jge	.LBB0_42
# BB#41:                                # %if.then121
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	%ecx, %r8d
.LBB0_42:                               # %if.end123
                                        #   in Loop: Header=BB0_35 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	-3152(%rbp,%r10,4), %r9d
	movslq	%r8d, %rcx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movslq	-1088(%rbp,%rcx,4), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rax)
	jne	.LBB0_73
# BB#43:                                # %cont_BB196
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	-3152(%rbp,%rdx,4), %eax
	cmpl	%eax, %r9d
	jge	.LBB0_44
.LBB0_45:                               # %while.end137
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	andb	$1, %r11b
	movb	%r11b, -16(%rax)
	movslq	%r12d, %rax
	movl	-5252(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, -1088(%rbp,%rax,4)
	movl	-5228(%rbp), %edi       # 4-byte Reload
	incl	%edi
	movl	%edi, -5228(%rbp)       # 4-byte Spill
	movb	-5229(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-5217(%rbp), %sil       # 1-byte Reload
	movb	%sil, -16(%rcx)
	movb	%al, -16(%rcx)
	movq	-5248(%rbp), %r8        # 8-byte Reload
	movl	%edi, -5216(%rbp,%r8,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%sil, -16(%rcx)
	movb	%al, -16(%rcx)
	movq	-5240(%rbp), %rax       # 8-byte Reload
	movl	%edi, -5216(%rbp,%rax,4)
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rdx)
	movl	-3152(%rbp,%rax,4), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rsi)
	movl	-3152(%rbp,%r8,4), %r10d
	movq	%r8, %r11
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rcx)
	movl	-3152(%rbp,%rax,4), %edi
	movq	%rax, %r9
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rcx)
	jne	.LBB0_73
# BB#46:                                # %cont_BB233
                                        #   in Loop: Header=BB0_21 Depth=2
	movb	-5253(%rbp), %r8b       # 1-byte Reload
	orb	%r8b, %r8b
	andl	$-256, %edx
	andl	$-256, %r10d
	addl	%edx, %r10d
	movzbl	%dil, %ecx
	movzbl	-3152(%rbp,%r11,4), %edx
	cmpl	%edx, %ecx
	jle	.LBB0_48
# BB#47:                                # %cond.true158
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzbl	-3152(%rbp,%r9,4), %edx
	jmp	.LBB0_49
.LBB0_48:                               # %cond.false162
                                        #   in Loop: Header=BB0_21 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movzbl	-3152(%rbp,%r11,4), %edx
.LBB0_49:                               # %cond.false162
                                        #   in Loop: Header=BB0_21 Depth=2
	movb	-16(%rcx), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	orb	%r8b, %cl
	andb	$1, %cl
	movb	%cl, -16(%rsi)
	incl	%edx
	orl	%edx, %r10d
	movslq	-5228(%rbp), %rdi       # 4-byte Folded Reload
	movl	%r10d, -3152(%rbp,%rdi,4)
	incl	%r14d
	movslq	%r14d, %r8
	movb	-5229(%rbp), %cl        # 1-byte Reload
	andb	$1, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	-5217(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	$-1, -5216(%rbp,%rdi,4)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	movb	%cl, -16(%rdx)
	movl	%edi, -1088(%rbp,%r8,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	-16(%rcx), %r9b
	movl	-1088(%rbp,%r8,4), %r8d
	movslq	%r8d, %r10
	movl	%r14d, %r11d
	jmp	.LBB0_50
	.align	16, 0x90
.LBB0_52:                               # %while.body191
                                        #   in Loop: Header=BB0_50 Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1088(%rbp,%rax,4), %eax
	movslq	%r11d, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	movb	%r15b, -16(%rdx)
	movl	%eax, -1088(%rbp,%rcx,4)
	movl	%edi, %r11d
.LBB0_50:                               # %while.cond182
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	-3152(%rbp,%r10,4), %r12d
	movl	%r11d, %edi
	sarl	%edi
	movslq	%edi, %rax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	movslq	-1088(%rbp,%rax,4), %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%rdx)
	jne	.LBB0_73
# BB#51:                                # %cont_BB274
                                        #   in Loop: Header=BB0_50 Depth=3
	movl	-3152(%rbp,%rsi,4), %edx
	cmpl	%edx, %r12d
	jge	.LBB0_53
	jmp	.LBB0_52
.LBB0_54:                               # %while.end201
                                        #   in Loop: Header=BB0_4 Depth=1
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#55:                                # %cont_BB287
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$516, -5228(%rbp)       # 4-byte Folded Reload
                                        # imm = 0x204
	jl	.LBB0_56
# BB#57:                                # %if.then203
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$2002, %edi             # imm = 0x7D2
	callq	BZ2_bz__AssertH__fail
	movl	$1, %r9d
	xorb	%r8b, %r8b
	jmp	.LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_4 Depth=1
	xorb	%r8b, %r8b
	movl	$1, %r9d
	jmp	.LBB0_58
	.align	16, 0x90
.LBB0_66:                               # %if.end222
                                        #   in Loop: Header=BB0_58 Depth=2
	incl	%r9d
.LBB0_58:                               # %for.cond205
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_60 Depth 3
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#59:                                # %cont_BB292
                                        #   in Loop: Header=BB0_58 Depth=2
	xorl	%edx, %edx
	cmpl	-5224(%rbp), %r9d       # 4-byte Folded Reload
	movl	%r9d, %esi
	movb	-5217(%rbp), %cl        # 1-byte Reload
	jg	.LBB0_67
	jmp	.LBB0_60
	.align	16, 0x90
.LBB0_62:                               # %while.body212
                                        #   in Loop: Header=BB0_60 Depth=3
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	-5217(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rdi)
	incl	%edx
	movl	-5216(%rbp,%rsi,4), %esi
.LBB0_60:                               # %while.cond208
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%cl, -16(%rdi)
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#61:                                # %cont_BB301
                                        #   in Loop: Header=BB0_60 Depth=3
	movslq	%esi, %rsi
	movl	-5216(%rbp,%rsi,4), %edi
	testl	%edi, %edi
	jns	.LBB0_62
# BB#63:                                # %while.end216
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	-5254(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rsi)
	movb	$0, -16(%rsi)
	leal	-1(%r9), %eax
	movslq	%eax, %rax
	movq	-5272(%rbp), %rsi       # 8-byte Reload
	movb	%dl, (%rsi,%rax)
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#64:                                # %cont_BB313
                                        #   in Loop: Header=BB0_58 Depth=2
	cmpl	-5260(%rbp), %edx       # 4-byte Folded Reload
	jle	.LBB0_66
# BB#65:                                # %if.then221
                                        #   in Loop: Header=BB0_58 Depth=2
	movb	$1, %r8b
	jmp	.LBB0_66
.LBB0_67:                               # %for.end225
                                        #   in Loop: Header=BB0_4 Depth=1
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#68:                                # %cont_BB318
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$1, %ecx
	testb	%r8b, %r8b
	je	.LBB0_72
	jmp	.LBB0_69
	.align	16, 0x90
.LBB0_71:                               # %for.body231
                                        #   in Loop: Header=BB0_69 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	movl	-3152(%rbp,%rcx,4), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%bl, -16(%rdx)
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$8, %eax
	addl	%edx, %eax
	andl	$-2, %eax
	shll	$7, %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -3152(%rbp,%rcx,4)
	incq	%rcx
.LBB0_69:                               # %for.cond228
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#70:                                # %cont_BB322
                                        #   in Loop: Header=BB0_69 Depth=2
	cmpl	-5224(%rbp), %ecx       # 4-byte Folded Reload
	jle	.LBB0_71
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_58 Depth 2
                                        #       Child Loop BB0_60 Depth 3
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%r14d, %r14d
	movl	$1, %r9d
	movl	$0, -1088(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, -3152(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-5217(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movl	$-2, -5216(%rbp)
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_16:                               # %while.end
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	andb	$1, %r10b
	movb	%r10b, -16(%rax)
	movslq	%r8d, %rax
	movl	-5228(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, -1088(%rbp,%rax,4)
	incl	%r9d
.LBB0_5:                                # %for.cond9
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	testb	%r13b, %r13b
	jne	.LBB0_73
# BB#6:                                 # %cont_BB27
                                        #   in Loop: Header=BB0_5 Depth=2
	cmpl	-5224(%rbp), %r9d       # 4-byte Folded Reload
	jg	.LBB0_17
# BB#7:                                 # %for.body11
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-5217(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movslq	%r9d, %rax
	movl	$-1, -5216(%rbp,%rax,4)
	incl	%r14d
	movslq	%r14d, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	%r9d, -1088(%rbp,%rax,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	-16(%rcx), %r10b
	movl	-1088(%rbp,%rax,4), %eax
	movl	%eax, -5228(%rbp)       # 4-byte Spill
	movslq	%eax, %r11
	movl	%r14d, %r8d
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_10:                               # %while.body27
                                        #   in Loop: Header=BB0_8 Depth=3
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdx)
	movl	-1088(%rbp,%rax,4), %eax
	movslq	%r8d, %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r15b, -16(%rdx)
	movb	%r15b, -16(%rdx)
	movl	%eax, -1088(%rbp,%rcx,4)
	movl	%esi, %r8d
.LBB0_8:                                # %while.cond19
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rax)
	movl	-3152(%rbp,%r11,4), %edx
	movl	%r8d, %esi
	sarl	%esi
	movslq	%esi, %rax
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdi)
	movslq	-1088(%rbp,%rax,4), %rdi
	movq	%rsp, %r12
	leaq	-16(%r12), %rcx
	movq	%rcx, %rsp
	testb	%r13b, %r13b
	movb	%bl, -16(%r12)
	jne	.LBB0_73
# BB#9:                                 # %cont_BB53
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	-3152(%rbp,%rdi,4), %edi
	cmpl	%edi, %edx
	jge	.LBB0_16
	jmp	.LBB0_10
.LBB0_17:                               # %for.end38
                                        #   in Loop: Header=BB0_4 Depth=1
	testb	%r13b, %r13b
	je	.LBB0_18
	.align	16, 0x90
.LBB0_73:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB0_73
.LBB0_72:                               # %while.end242
	movb	$0, return_taint(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp11:
	.size	BZ2_hbMakeCodeLengths, .Ltmp11-BZ2_hbMakeCodeLengths
	.cfi_endproc

	.globl	BZ2_hbAssignCodes
	.align	16, 0x90
	.type	BZ2_hbAssignCodes,@function
BZ2_hbAssignCodes:                      # @BZ2_hbAssignCodes
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
	pushq	%rbx
	pushq	%rax
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	xorl	%r14d, %r14d
	movb	param_taint6(%rip), %r9b
	movb	param_taint7(%rip), %r10b
	xorb	%r11b, %r11b
	andb	$1, %r10b
	andb	$1, %r9b
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_9:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	%r14d, %r14d
	incl	%edx
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	testb	%r11b, %r11b
	jne	.LBB1_11
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%r15d, %r15d
	cmpl	%ecx, %edx
	jg	.LBB1_10
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_8:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	incq	%r15
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r11b, %r11b
	jne	.LBB1_11
# BB#4:                                 # %cont_BB10
                                        #   in Loop: Header=BB1_3 Depth=2
	cmpl	%r8d, %r15d
	jge	.LBB1_9
# BB#5:                                 # %for.body3
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r10b, -16(%rax)
	testb	%r11b, %r11b
	jne	.LBB1_11
# BB#6:                                 # %cont_BB14
                                        #   in Loop: Header=BB1_3 Depth=2
	movzbl	(%rsi,%r15), %eax
	cmpl	%edx, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r9b, -16(%rax)
	movb	$0, -16(%rax)
	movl	%r14d, (%rdi,%r15,4)
	incl	%r14d
	jmp	.LBB1_8
	.align	16, 0x90
.LBB1_11:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str18, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB1_11
.LBB1_10:                               # %for.end11
	movb	$0, return_taint1(%rip)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp21:
	.size	BZ2_hbAssignCodes, .Ltmp21-BZ2_hbAssignCodes
	.cfi_endproc

	.globl	BZ2_hbCreateDecodeTables
	.align	16, 0x90
	.type	BZ2_hbCreateDecodeTables,@function
BZ2_hbCreateDecodeTables:               # @BZ2_hbCreateDecodeTables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r8d, %r9d
	xorl	%r15d, %r15d
	movb	param_taint11(%rip), %al
	movb	%al, -46(%rbp)          # 1-byte Spill
	movb	param_taint12(%rip), %al
	movb	%al, -45(%rbp)          # 1-byte Spill
	movb	param_taint13(%rip), %r12b
	movb	param_taint14(%rip), %r14b
	movl	16(%rbp), %ebx
	xorb	%r13b, %r13b
	andb	$1, %r12b
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_22:                               # %for.inc9
                                        #   in Loop: Header=BB2_1 Depth=1
	incl	%r8d
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
	testb	%r13b, %r13b
	jne	.LBB2_35
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%r10d, %r10d
	cmpl	-44(%rbp), %r8d         # 4-byte Folded Reload
	jle	.LBB2_16
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_21:                               # %if.end
                                        #   in Loop: Header=BB2_16 Depth=2
	incq	%r10
.LBB2_16:                               # %for.cond1
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB2_35
# BB#17:                                # %cont_BB12
                                        #   in Loop: Header=BB2_16 Depth=2
	cmpl	%ebx, %r10d
	jge	.LBB2_22
# BB#18:                                # %for.body3
                                        #   in Loop: Header=BB2_16 Depth=2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movb	%r14b, %al
	andb	$1, %al
	movb	%al, -16(%r11)
	testb	%r13b, %r13b
	jne	.LBB2_35
# BB#19:                                # %cont_BB16
                                        #   in Loop: Header=BB2_16 Depth=2
	movzbl	(%rcx,%r10), %eax
	cmpl	%r8d, %eax
	jne	.LBB2_21
# BB#20:                                # %if.then
                                        #   in Loop: Header=BB2_16 Depth=2
	movq	%rsp, %r11
	leaq	-16(%r11), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%r11)
	movb	$0, -16(%r11)
	movslq	%r15d, %r15
	movl	%r10d, (%rdx,%r15,4)
	incl	%r15d
	jmp	.LBB2_21
.LBB2_3:
	xorb	%r15b, %r15b
	xorl	%r12d, %r12d
	movb	-45(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_23:                               # %for.body15
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r8b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	$0, (%rsi,%r10,4)
	incq	%r10
.LBB2_4:                                # %for.cond12
                                        # =>This Inner Loop Header: Depth=1
	testb	%r15b, %r15b
	jne	.LBB2_35
# BB#5:                                 # %cont_BB26
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$22, %r10d
	jle	.LBB2_23
# BB#6:
	xorb	%r15b, %r15b
	movl	$1, %r13d
	andb	$1, %r14b
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_24:                               # %for.body24
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rax)
	movzbl	(%rcx,%r12), %r10d
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r8b, -16(%rdx)
	incl	%r10d
	movslq	%r10d, %r10
	movl	(%rsi,%r10,4), %eax
	movb	%r8b, -16(%rdx)
	incl	%eax
	movl	%eax, (%rsi,%r10,4)
	incq	%r12
.LBB2_7:                                # %for.cond21
                                        # =>This Inner Loop Header: Depth=1
	testb	%r15b, %r15b
	jne	.LBB2_35
# BB#8:                                 # %cont_BB33
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	%ebx, %r12d
	jl	.LBB2_24
# BB#9:
	xorb	%r10b, %r10b
	xorl	%edx, %edx
	movb	-45(%rbp), %r14b        # 1-byte Reload
	orb	%r14b, %r14b
	andb	$1, %r14b
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_25:                               # %for.body37
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movl	-4(%rsi,%r13,4), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movl	(%rsi,%r13,4), %ecx
	movb	%r14b, -16(%rax)
	addl	%ebx, %ecx
	movl	%ecx, (%rsi,%r13,4)
	incq	%r13
.LBB2_10:                               # %for.cond34
                                        # =>This Inner Loop Header: Depth=1
	testb	%r10b, %r10b
	jne	.LBB2_35
# BB#11:                                # %cont_BB49
                                        #   in Loop: Header=BB2_10 Depth=1
	cmpl	$22, %r13d
	jle	.LBB2_25
# BB#12:
	xorb	%r10b, %r10b
	movb	-46(%rbp), %r15b        # 1-byte Reload
	andb	$1, %r15b
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_15:                               # %for.body49
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, (%rdi,%rdx,4)
	incq	%rdx
.LBB2_13:                               # %for.cond46
                                        # =>This Inner Loop Header: Depth=1
	testb	%r10b, %r10b
	jne	.LBB2_35
# BB#14:                                # %cont_BB64
                                        #   in Loop: Header=BB2_13 Depth=1
	cmpl	$22, %edx
	jle	.LBB2_15
# BB#26:                                # %for.end54
	movslq	%r9d, %r10
	xorl	%r12d, %r12d
	xorb	%bl, %bl
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_29:                               # %for.body58
                                        #   in Loop: Header=BB2_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movl	4(%rsi,%r10,4), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rax)
	movl	(%rsi,%r10,4), %r11d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rax)
	movb	%r14b, -16(%rax)
	subl	%r11d, %ecx
	leal	-1(%r12,%rcx), %eax
	movl	%eax, (%rdi,%r10,4)
	addl	%r12d, %ecx
	addl	%ecx, %ecx
	incq	%r10
	movl	%ecx, %r12d
.LBB2_27:                               # %for.cond55
                                        # =>This Inner Loop Header: Depth=1
	testb	%bl, %bl
	jne	.LBB2_35
# BB#28:                                # %cont_BB72
                                        #   in Loop: Header=BB2_27 Depth=1
	cmpl	-44(%rbp), %r10d        # 4-byte Folded Reload
	jle	.LBB2_29
# BB#30:                                # %for.end71
	leal	1(%r9), %eax
	movslq	%eax, %rax
	leaq	(%rsi,%rax,4), %r11
	xorb	%bl, %bl
	movb	-46(%rbp), %al          # 1-byte Reload
	orb	-45(%rbp), %al          # 1-byte Folded Reload
	andb	$1, %al
	movb	%al, %r10b
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_33:                               # %for.body76
                                        #   in Loop: Header=BB2_31 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movslq	%r9d, %rax
	movl	(%rdi,%rax,4), %eax
	movq	%rsp, %rdx
	leal	2(%rax,%rax), %eax
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rdx)
	movl	(%r11), %r9d
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	subl	%r9d, %eax
	movl	%eax, (%r11)
	addq	$4, %r11
	movl	%esi, %r9d
.LBB2_31:                               # %for.cond73
                                        # =>This Inner Loop Header: Depth=1
	testb	%bl, %bl
	jne	.LBB2_35
# BB#32:                                # %cont_BB93
                                        #   in Loop: Header=BB2_31 Depth=1
	leal	1(%r9), %esi
	cmpl	-44(%rbp), %esi         # 4-byte Folded Reload
	jle	.LBB2_33
# BB#34:                                # %for.end89
	movb	$0, return_taint2(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.align	16, 0x90
.LBB2_35:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str19, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB2_35
.Ltmp33:
	.size	BZ2_hbCreateDecodeTables, .Ltmp33-BZ2_hbCreateDecodeTables
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
	.globl	param_taint4
param_taint4:
	.byte	0                       # 0x0
	.size	param_taint4, 1

	.type	param_taint5,@object    # @param_taint5
	.globl	param_taint5
param_taint5:
	.byte	0                       # 0x0
	.size	param_taint5, 1

	.type	param_taint6,@object    # @param_taint6
	.globl	param_taint6
param_taint6:
	.byte	0                       # 0x0
	.size	param_taint6, 1

	.type	param_taint7,@object    # @param_taint7
	.globl	param_taint7
param_taint7:
	.byte	0                       # 0x0
	.size	param_taint7, 1

	.type	param_taint8,@object    # @param_taint8
	.globl	param_taint8
param_taint8:
	.byte	0                       # 0x0
	.size	param_taint8, 1

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

	.type	.L.str,@object          # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str, 31

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str18, 31

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str19, 31


	.section	".note.GNU-stack","",@progbits
