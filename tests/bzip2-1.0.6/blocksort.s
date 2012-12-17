	.file	"blocksort.tt.bc"
	.text
	.globl	BZ2_blockSort
	.align	16, 0x90
	.type	BZ2_blockSort,@function
BZ2_blockSort:                          # @BZ2_blockSort
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
	subq	$56, %rsp
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
	movq	%rdi, %r12
	movb	param_taint19(%rip), %r13b
	movb	%r13b, -45(%rbp)
	movq	56(%r12), %r14
	movb	-45(%rbp), %al
	movb	%al, -51(%rbp)          # 1-byte Spill
	movb	%r13b, -46(%rbp)
	movq	64(%r12), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movb	-46(%rbp), %r8b
	movb	%r13b, -47(%rbp)
	movq	40(%r12), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	-47(%rbp), %al
	movb	%al, -57(%rbp)          # 1-byte Spill
	xorb	%al, %al
	movb	%r13b, -48(%rbp)
	testb	%al, %al
	movl	108(%r12), %ecx
	movb	-48(%rbp), %r15b
	movb	%r13b, -49(%rbp)
	movl	656(%r12), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	-49(%rbp), %al
	movb	%al, -58(%rbp)          # 1-byte Spill
	movb	%r13b, -50(%rbp)
	jne	.LBB0_35
# BB#1:                                 # %cont_BB
	cmpl	$9999, %ecx             # imm = 0x270F
	jg	.LBB0_3
# BB#2:                                 # %if.then
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rax)
	movq	24(%r12), %rdi
	movb	-58(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	andb	$1, %r15b
	movb	-57(%rbp), %bl          # 1-byte Reload
	andb	$1, %bl
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rax)
	movq	32(%r12), %rsi
	movb	%r13b, param_taint20(%rip)
	movb	%r13b, param_taint21(%rip)
	movb	%bl, param_taint22(%rip)
	movb	%r15b, param_taint23(%rip)
	movb	%r8b, param_taint24(%rip)
	movq	-72(%rbp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB0_24:                               # %if.end29
	movl	-56(%rbp), %r8d         # 4-byte Reload
	callq	fallbackSort
	.align	16, 0x90
.LBB0_25:                               # %if.end33
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movb	$0, -16(%rax)
	xorl	%eax, %eax
	movl	$-1, 48(%r12)
	xorb	%cl, %cl
	andb	$1, -51(%rbp)           # 1-byte Folded Spill
	movb	-51(%rbp), %bl          # 1-byte Reload
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_36:                               # %for.inc
                                        #   in Loop: Header=BB0_26 Depth=1
	incq	%rax
.LBB0_26:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rdx)
	testb	%cl, %cl
	jne	.LBB0_35
# BB#27:                                # %cont_BB85
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	108(%r12), %edx
	cmpl	%edx, %eax
	jge	.LBB0_31
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	testb	%cl, %cl
	jne	.LBB0_35
# BB#29:                                # %cont_BB92
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	(%r14,%rax,4), %edx
	testl	%edx, %edx
	jne	.LBB0_36
# BB#30:                                # %if.then41
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	%eax, 48(%r12)
.LBB0_31:                               # %for.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_35
# BB#32:                                # %cont_BB100
	movl	48(%r12), %eax
	cmpl	$-1, %eax
	jne	.LBB0_34
# BB#33:                                # %if.then48
	movl	$1003, %edi             # imm = 0x3EB
	callq	BZ2_bz__AssertH__fail
.LBB0_34:                               # %if.end49
	movb	$0, return_taint2(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_3:                                # %if.else
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_35
# BB#4:                                 # %cont_BB26
	movl	88(%r12), %edi
	movb	-50(%rbp), %r9b
	leal	34(%rcx), %edx
	movl	%edx, %eax
	andl	$1, %eax
	movq	%r14, %r11
	testl	%eax, %eax
	je	.LBB0_6
# BB#5:                                 # %if.then5
	incl	%edx
.LBB0_6:                                # %if.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r8b, %r10b
	andb	$1, %r10b
	movb	%r10b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	movq	%r11, %r14
	movl	%ecx, %r11d
	jne	.LBB0_35
# BB#7:                                 # %cont_BB33
	testl	%edi, %edi
	jg	.LBB0_9
# BB#8:                                 # %if.then7
	movl	$1, %edi
	xorb	%r9b, %r9b
.LBB0_9:                                # %if.end8
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_35
# BB#10:                                # %cont_BB37
	movslq	%edx, %rdx
	addq	-80(%rbp), %rdx         # 8-byte Folded Reload
	cmpl	$101, %edi
	jl	.LBB0_12
# BB#11:                                # %if.then10
	movl	$100, %edi
	xorb	%r9b, %r9b
.LBB0_12:                               # %if.end11
	decl	%edi
	movb	%r15b, %sil
	orb	%sil, %r9b
	movslq	%edi, %rax
	imulq	$1431655766, %rax, %r15 # imm = 0x55555556
	movq	%r15, %rdi
	shrq	$63, %rdi
	shrq	$32, %r15
	addl	%edi, %r15d
	andb	$1, %r9b
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r9b, -16(%rax)
	imull	%r11d, %r15d
	movb	-58(%rbp), %dil         # 1-byte Reload
	andb	$1, %dil
	movb	%dil, -58(%rbp)         # 1-byte Spill
	andb	$1, %sil
	movb	%sil, -81(%rbp)         # 1-byte Spill
	movb	-57(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
	andb	$1, %r8b
	movb	-51(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	xorb	%bl, %bl
	andb	$1, %bl
	movl	%r15d, -44(%rbp)
	movb	%al, param_taint25(%rip)
	movb	%r10b, param_taint26(%rip)
	movb	%r8b, param_taint27(%rip)
	movb	%cl, param_taint28(%rip)
	movb	%sil, param_taint29(%rip)
	movb	%dil, param_taint30(%rip)
	movb	%bl, param_taint31(%rip)
	subq	$16, %rsp
	leaq	-44(%rbp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%r11d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	%r11d, %ebx
	callq	mainSort
	addq	$16, %rsp
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_35
# BB#13:                                # %cont_BB46
	cmpl	$3, -56(%rbp)           # 4-byte Folded Reload
	jl	.LBB0_18
# BB#14:                                # %if.then13
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_35
# BB#15:                                # %cont_BB57
	subl	-44(%rbp), %r15d
	cvtsi2ss	%r15d, %xmm0
	movq	stderr(%rip), %rdi
	movl	$1, %eax
	testl	%ebx, %ebx
	je	.LBB0_17
# BB#16:                                # %cond.false
	movl	%ebx, %eax
.LBB0_17:                               # %cond.end
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movb	$1, %al
	callq	fprintf
.LBB0_18:                               # %if.end21
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_35
# BB#19:                                # %cont_BB66
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB0_25
# BB#20:                                # %if.then24
	xorb	%al, %al
	testb	%al, %al
	je	.LBB0_21
	.align	16, 0x90
.LBB0_35:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str54, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB0_35
.LBB0_21:                               # %cont_BB69
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jl	.LBB0_23
# BB#22:                                # %if.then27
	movq	stderr(%rip), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
.LBB0_23:                               # %if.end29
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	24(%r12), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rax)
	movq	32(%r12), %rsi
	movb	%r13b, param_taint20(%rip)
	movb	%r13b, param_taint21(%rip)
	movb	-57(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint22(%rip)
	movb	-81(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint23(%rip)
	movb	-58(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint24(%rip)
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movl	%ebx, %ecx
	jmp	.LBB0_24
.Ltmp11:
	.size	BZ2_blockSort, .Ltmp11-BZ2_blockSort
	.cfi_endproc

	.align	16, 0x90
	.type	fallbackSort,@function
fallbackSort:                           # @fallbackSort
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
	subq	$2120, %rsp             # imm = 0x848
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
	movl	%r8d, -2156(%rbp)       # 4-byte Spill
	movl	%ecx, %r15d
	movq	%rdx, -2104(%rbp)       # 8-byte Spill
	movq	%rsi, -2112(%rbp)       # 8-byte Spill
	movq	%rdi, -2128(%rbp)       # 8-byte Spill
	xorb	%r14b, %r14b
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#1:                                 # %cont_BB
	movb	param_taint21(%rip), %al
	movb	%al, -2141(%rbp)        # 1-byte Spill
	movb	param_taint20(%rip), %al
	movb	%al, -2113(%rbp)        # 1-byte Spill
	movb	param_taint22(%rip), %al
	movb	%al, -2129(%rbp)        # 1-byte Spill
	movb	param_taint23(%rip), %bl
	xorl	%eax, %eax
	cmpl	$4, -2156(%rbp)         # 4-byte Folded Reload
	jl	.LBB1_3
# BB#2:                                 # %if.then
	movq	stderr(%rip), %rdi
	movl	$.L.str3, %esi
	xorb	%al, %al
	callq	fprintf
	xorl	%eax, %eax
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_105:                              # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, %dl
	andb	$1, %dl
	movb	%dl, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, -1072(%rbp,%rax,4)
	incq	%rax
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB1_104
# BB#4:                                 # %cont_BB9
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$256, %eax              # imm = 0x100
	jle	.LBB1_105
# BB#5:
	xorl	%edx, %edx
	xorb	%r8b, %r8b
	xorl	%r9d, %r9d
	movb	-2141(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -2150(%rbp)        # 1-byte Spill
	xorb	%r11b, %r11b
	andb	$1, %r11b
	movb	-2150(%rbp), %cl        # 1-byte Reload
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_106:                              # %for.body4
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%cl, -16(%rax)
	movq	-2112(%rbp), %rax       # 8-byte Reload
	movzbl	(%rax,%rdx), %edi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rsi)
	movl	-1072(%rbp,%rdi,4), %eax
	movb	%r11b, -16(%rsi)
	incl	%eax
	movl	%eax, -1072(%rbp,%rdi,4)
	incq	%rdx
.LBB1_6:                                # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_104
# BB#7:                                 # %cont_BB15
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	%r15d, %edx
	jl	.LBB1_106
# BB#8:
	xorb	%r8b, %r8b
	movl	$1, %edx
	xorb	%al, %al
	andb	$1, %al
	movb	%al, -2149(%rbp)        # 1-byte Spill
	jmp	.LBB1_9
	.align	16, 0x90
.LBB1_107:                              # %for.body15
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r11b, -16(%rax)
	movl	-1072(%rbp,%r9,4), %edi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	-2149(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rsi)
	movb	%r11b, -16(%rsi)
	movl	%edi, -2096(%rbp,%r9,4)
	incq	%r9
.LBB1_9:                                # %for.cond13
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_104
# BB#10:                                # %cont_BB28
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$255, %r9d
	jle	.LBB1_107
# BB#11:
	xorb	%r8b, %r8b
	xorl	%ecx, %ecx
	xorb	%r9b, %r9b
	orb	%r9b, %r9b
	andb	$1, %r9b
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_108:                              # %for.body25
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r11b, -16(%rax)
	movl	-1076(%rbp,%rdx,4), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rdi)
	movl	-1072(%rbp,%rdx,4), %eax
	movb	%r9b, -16(%rdi)
	addl	%esi, %eax
	movl	%eax, -1072(%rbp,%rdx,4)
	incq	%rdx
.LBB1_12:                               # %for.cond23
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_104
# BB#13:                                # %cont_BB39
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$256, %edx              # imm = 0x100
	jle	.LBB1_108
# BB#14:
	xorb	%r8b, %r8b
	andb	$1, -2113(%rbp)         # 1-byte Folded Spill
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_17:                               # %for.body35
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-2150(%rbp), %dl        # 1-byte Reload
	movb	%dl, -16(%rax)
	movq	-2112(%rbp), %rax       # 8-byte Reload
	movzbl	(%rax,%rcx), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r11b, -16(%rax)
	movl	-1072(%rbp,%rsi,4), %edi
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rdx)
	movb	%r11b, -16(%rdx)
	decl	%edi
	movl	%edi, -1072(%rbp,%rsi,4)
	movslq	%edi, %rsi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	-2113(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rdx)
	movb	$0, -16(%rdx)
	movq	-2128(%rbp), %rax       # 8-byte Reload
	movl	%ecx, (%rax,%rsi,4)
	incq	%rcx
.LBB1_15:                               # %for.cond33
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_104
# BB#16:                                # %cont_BB54
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	%r15d, %ecx
	jl	.LBB1_17
# BB#18:                                # %for.end47
	movl	%r15d, -2136(%rbp)      # 4-byte Spill
	movl	%r15d, %ecx
	sarl	$31, %ecx
	shrl	$27, %ecx
	addl	%r15d, %ecx
	sarl	$5, %ecx
	addl	$2, %ecx
	xorl	%r12d, %r12d
	xorb	%r8b, %r8b
	movb	-2129(%rbp), %r15b      # 1-byte Reload
	andb	$1, %r15b
	movq	%r12, %rdi
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_109:                              # %for.body52
                                        #   in Loop: Header=BB1_19 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r15b, -16(%rsi)
	movb	$0, -16(%rsi)
	movq	-2104(%rbp), %rax       # 8-byte Reload
	movl	$0, (%rax,%rdi,4)
	incq	%rdi
.LBB1_19:                               # %for.cond49
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_104
# BB#20:                                # %cont_BB75
                                        #   in Loop: Header=BB1_19 Depth=1
	cmpl	%ecx, %edi
	jl	.LBB1_109
# BB#21:
	xorb	%r8b, %r8b
	xorl	%r10d, %r10d
	orb	-2129(%rbp), %r14b      # 1-byte Folded Reload
	movl	$1, %r9d
	andb	$1, %r14b
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_110:                              # %for.body61
                                        #   in Loop: Header=BB1_22 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rcx)
	movb	-1072(%rbp,%r12,4), %cl
	movl	%r9d, %edi
	shll	%cl, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rcx)
	movl	-1072(%rbp,%r12,4), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r15b, -16(%rcx)
	sarl	$5, %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %eax
	movb	%r14b, -16(%rcx)
	orl	%edi, %eax
	movl	%eax, (%rdx,%rsi,4)
	incq	%r12
.LBB1_22:                               # %for.cond58
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_104
# BB#23:                                # %cont_BB82
                                        #   in Loop: Header=BB1_22 Depth=1
	cmpl	$255, %r12d
	jle	.LBB1_110
# BB#24:
	xorb	%r8b, %r8b
	movl	$1, -2148(%rbp)         # 4-byte Folded Spill
	orb	-2129(%rbp), %bl        # 1-byte Folded Reload
	andb	$1, %bl
	movl	-2136(%rbp), %r9d       # 4-byte Reload
	movq	-2104(%rbp), %rax       # 8-byte Reload
	jmp	.LBB1_25
	.align	16, 0x90
.LBB1_31:                               # %for.body74
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	%r9d, %edx
	sarl	$5, %edx
	movslq	%edx, %rdi
	movl	(%rax,%rdi,4), %edx
	movb	%bl, -16(%rcx)
	movb	%r9b, %cl
	movl	$1, %esi
	shll	%cl, %esi
	orl	%edx, %esi
	leal	1(%r9), %edx
	movl	%esi, (%rax,%rdi,4)
	movb	%dl, %cl
	movl	$1, %edi
	shll	%cl, %edi
	sarl	$5, %edx
	notl	%edi
	movslq	%edx, %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	movl	(%rax,%rcx,4), %esi
	movb	%bl, -16(%rdx)
	andl	%edi, %esi
	movl	%esi, (%rax,%rcx,4)
	addl	$2, %r9d
	incl	%r10d
.LBB1_25:                               # %for.cond71
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_104
# BB#26:                                # %cont_BB103
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	$31, %r10d
	jle	.LBB1_31
# BB#27:
	xorb	%r14b, %r14b
	.align	16, 0x90
.LBB1_28:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
                                        #       Child Loop BB1_69 Depth 3
                                        #       Child Loop BB1_66 Depth 3
                                        #       Child Loop BB1_58 Depth 3
                                        #       Child Loop BB1_53 Depth 3
                                        #       Child Loop BB1_43 Depth 3
                                        #       Child Loop BB1_77 Depth 3
                                        #     Child Loop BB1_33 Depth 2
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#29:                                # %cont_BB135
                                        #   in Loop: Header=BB1_28 Depth=1
	cmpl	$4, -2156(%rbp)         # 4-byte Folded Reload
	jl	.LBB1_30
# BB#32:                                # %if.then101
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str6, %esi
	movl	-2148(%rbp), %edx       # 4-byte Reload
	xorb	%al, %al
	callq	fprintf
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	.LBB1_33
.LBB1_30:                               #   in Loop: Header=BB1_28 Depth=1
	xorl	%eax, %eax
	xorl	%edi, %edi
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_52:                               # %if.end123
                                        #   in Loop: Header=BB1_33 Depth=2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	-2141(%rbp), %dl        # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rsi)
	movb	$0, -16(%rsi)
	movslq	%ecx, %rcx
	movq	-2112(%rbp), %rdx       # 8-byte Reload
	movl	%edi, (%rdx,%rcx,4)
	incq	%rax
.LBB1_33:                               # %for.cond104
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#34:                                # %cont_BB141
                                        #   in Loop: Header=BB1_33 Depth=2
	cmpl	-2136(%rbp), %eax       # 4-byte Folded Reload
	jge	.LBB1_35
# BB#46:                                # %for.body107
                                        #   in Loop: Header=BB1_33 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	%al, %cl
	movl	$1, %esi
	shll	%cl, %esi
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#47:                                # %cont_BB152
                                        #   in Loop: Header=BB1_33 Depth=2
	movl	%eax, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	andl	(%rdx,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB1_49
# BB#48:                                # %if.then114
                                        #   in Loop: Header=BB1_33 Depth=2
	movl	%eax, %edi
.LBB1_49:                               # %if.end115
                                        #   in Loop: Header=BB1_33 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-2113(%rbp), %dl        # 1-byte Reload
	movb	%dl, -16(%rcx)
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#50:                                # %cont_BB161
                                        #   in Loop: Header=BB1_33 Depth=2
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	movl	(%rcx,%rax,4), %ecx
	subl	-2148(%rbp), %ecx       # 4-byte Folded Reload
	testl	%ecx, %ecx
	jns	.LBB1_52
# BB#51:                                # %if.then121
                                        #   in Loop: Header=BB1_33 Depth=2
	addl	-2136(%rbp), %ecx       # 4-byte Folded Reload
	jmp	.LBB1_52
.LBB1_35:                               #   in Loop: Header=BB1_28 Depth=1
	movl	$-1, %ebx
	movl	$0, -2140(%rbp)         # 4-byte Folded Spill
	.align	16, 0x90
.LBB1_36:                               # %while.body130
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_69 Depth 3
                                        #       Child Loop BB1_66 Depth 3
                                        #       Child Loop BB1_58 Depth 3
                                        #       Child Loop BB1_53 Depth 3
                                        #       Child Loop BB1_43 Depth 3
                                        #       Child Loop BB1_77 Depth 3
	incl	%ebx
	xorb	%r12b, %r12b
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	%bl, %cl
	movl	$1, %edx
	shll	%cl, %edx
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#37:                                # %cont_BB181
                                        #   in Loop: Header=BB1_36 Depth=2
	movl	%ebx, %eax
	sarl	$5, %eax
	movslq	%eax, %rax
	movq	-2104(%rbp), %rcx       # 8-byte Reload
	andl	(%rcx,%rax,4), %edx
	xorb	%cl, %cl
	testl	%edx, %edx
	je	.LBB1_39
# BB#38:                                # %land.rhs
                                        #   in Loop: Header=BB1_36 Depth=2
	testb	$31, %bl
	setne	%cl
.LBB1_39:                               # %land.end
                                        #   in Loop: Header=BB1_36 Depth=2
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#40:                                # %cont_BB186
                                        #   in Loop: Header=BB1_36 Depth=2
	cmpb	$1, %cl
	je	.LBB1_36
# BB#41:                                # %while.end
                                        #   in Loop: Header=BB1_36 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	%bl, %cl
	movl	$1, %edx
	shll	%cl, %edx
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#42:                                # %cont_BB198
                                        #   in Loop: Header=BB1_36 Depth=2
	movq	-2104(%rbp), %rcx       # 8-byte Reload
	andl	(%rcx,%rax,4), %edx
	testl	%edx, %edx
	je	.LBB1_56
	jmp	.LBB1_43
	.align	16, 0x90
.LBB1_45:                               # %while.body158
                                        #   in Loop: Header=BB1_43 Depth=3
	addl	$32, %ebx
	xorb	%r12b, %r12b
.LBB1_43:                               # %while.cond152
                                        #   Parent Loop BB1_28 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#44:                                # %cont_BB207
                                        #   in Loop: Header=BB1_43 Depth=3
	movl	%ebx, %eax
	sarl	$5, %eax
	movslq	%eax, %rax
	movq	-2104(%rbp), %rcx       # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	cmpl	$-1, %eax
	jne	.LBB1_53
	jmp	.LBB1_45
	.align	16, 0x90
.LBB1_55:                               # %while.body169
                                        #   in Loop: Header=BB1_53 Depth=3
	incl	%ebx
	xorb	%r12b, %r12b
.LBB1_53:                               # %while.cond161
                                        #   Parent Loop BB1_28 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rax)
	movb	%bl, %cl
	movl	$1, %eax
	shll	%cl, %eax
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#54:                                # %cont_BB220
                                        #   in Loop: Header=BB1_53 Depth=3
	movl	%ebx, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	andl	(%rdx,%rcx,4), %eax
	testl	%eax, %eax
	jne	.LBB1_55
.LBB1_56:                               # %if.end172
                                        #   in Loop: Header=BB1_36 Depth=2
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#57:                                # %cont_BB226
                                        #   in Loop: Header=BB1_36 Depth=2
	leal	-1(%rbx), %edi
	cmpl	-2136(%rbp), %edi       # 4-byte Folded Reload
	movb	%r12b, %al
	jge	.LBB1_83
	jmp	.LBB1_58
	.align	16, 0x90
.LBB1_63:                               # %while.body190
                                        #   in Loop: Header=BB1_58 Depth=3
	incl	%ebx
	xorb	%al, %al
.LBB1_58:                               # %while.cond178
                                        #   Parent Loop BB1_28 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movb	%bl, %cl
	movl	$1, %esi
	shll	%cl, %esi
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#59:                                # %cont_BB238
                                        #   in Loop: Header=BB1_58 Depth=3
	movl	%ebx, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rdx
	movq	-2104(%rbp), %rcx       # 8-byte Reload
	andl	(%rcx,%rdx,4), %esi
	xorb	%cl, %cl
	testl	%esi, %esi
	jne	.LBB1_61
# BB#60:                                # %land.rhs186
                                        #   in Loop: Header=BB1_58 Depth=3
	testb	$31, %bl
	setne	%cl
.LBB1_61:                               # %land.end189
                                        #   in Loop: Header=BB1_58 Depth=3
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#62:                                # %cont_BB243
                                        #   in Loop: Header=BB1_58 Depth=3
	cmpb	$1, %cl
	je	.LBB1_63
# BB#64:                                # %while.end192
                                        #   in Loop: Header=BB1_36 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	movb	%bl, %cl
	movl	$1, %esi
	shll	%cl, %esi
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#65:                                # %cont_BB255
                                        #   in Loop: Header=BB1_36 Depth=2
	movq	-2104(%rbp), %rcx       # 8-byte Reload
	andl	(%rcx,%rdx,4), %esi
	testl	%esi, %esi
	jne	.LBB1_72
	jmp	.LBB1_66
	.align	16, 0x90
.LBB1_68:                               # %while.body207
                                        #   in Loop: Header=BB1_66 Depth=3
	addl	$32, %ebx
	xorb	%al, %al
.LBB1_66:                               # %while.cond201
                                        #   Parent Loop BB1_28 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#67:                                # %cont_BB264
                                        #   in Loop: Header=BB1_66 Depth=3
	movl	%ebx, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	movl	(%rdx,%rcx,4), %ecx
	testl	%ecx, %ecx
	jne	.LBB1_69
	jmp	.LBB1_68
	.align	16, 0x90
.LBB1_71:                               # %while.body218
                                        #   in Loop: Header=BB1_69 Depth=3
	incl	%ebx
	xorb	%al, %al
.LBB1_69:                               # %while.cond210
                                        #   Parent Loop BB1_28 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	%ebx, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	movl	(%rdx,%rcx,4), %ecx
	btl	%ebx, %ecx
	setae	%cl
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#70:                                # %cont_BB278
                                        #   in Loop: Header=BB1_69 Depth=3
	cmpb	$1, %cl
	je	.LBB1_71
.LBB1_72:                               # %if.end221
                                        #   in Loop: Header=BB1_36 Depth=2
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#73:                                # %cont_BB284
                                        #   in Loop: Header=BB1_36 Depth=2
	decl	%ebx
	cmpl	-2136(%rbp), %ebx       # 4-byte Folded Reload
	jge	.LBB1_83
# BB#74:                                # %if.end226
                                        #   in Loop: Header=BB1_36 Depth=2
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#75:                                # %cont_BB287
                                        #   in Loop: Header=BB1_36 Depth=2
	movl	%edi, %edx
	cmpl	%edx, %ebx
	jle	.LBB1_36
# BB#76:                                # %if.then229
                                        #   in Loop: Header=BB1_36 Depth=2
	movb	-2113(%rbp), %cl        # 1-byte Reload
	movb	%cl, param_taint46(%rip)
	movb	-2141(%rbp), %r13b      # 1-byte Reload
	andb	$1, %r13b
	movb	%r13b, param_taint47(%rip)
	movb	%r12b, %cl
	andb	$1, %cl
	movb	%cl, param_taint48(%rip)
	andb	$1, %al
	movb	%al, param_taint49(%rip)
	movq	-2128(%rbp), %rdi       # 8-byte Reload
	movq	-2112(%rbp), %rsi       # 8-byte Reload
	movl	%edx, %r14d
	movl	%ebx, %ecx
	callq	fallbackQSort3
	movl	%ebx, %eax
	subl	%r14d, %eax
	movl	-2140(%rbp), %ecx       # 4-byte Reload
	leal	1(%rax,%rcx), %ecx
	movl	%ecx, -2140(%rbp)       # 4-byte Spill
	movslq	%r14d, %rax
	xorb	%r14b, %r14b
	movl	$-1, %r8d
	jmp	.LBB1_77
	.align	16, 0x90
.LBB1_82:                               # %for.inc251
                                        #   in Loop: Header=BB1_77 Depth=3
	incq	%rax
	xorb	%r12b, %r12b
.LBB1_77:                               # %for.cond233
                                        #   Parent Loop BB1_28 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#78:                                # %cont_BB295
                                        #   in Loop: Header=BB1_77 Depth=3
	cmpl	%ebx, %eax
	jg	.LBB1_36
# BB#79:                                # %for.body236
                                        #   in Loop: Header=BB1_77 Depth=3
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	-2113(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rdx)
	movq	-2128(%rbp), %rdx       # 8-byte Reload
	movl	(%rdx,%rax,4), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	testb	%r14b, %r14b
	movb	%r13b, -16(%rsi)
	jne	.LBB1_104
# BB#80:                                # %cont_BB306
                                        #   in Loop: Header=BB1_77 Depth=3
	movq	-2112(%rbp), %rsi       # 8-byte Reload
	movl	(%rsi,%rdx,4), %r9d
	cmpl	%r9d, %r8d
	je	.LBB1_82
# BB#81:                                # %if.then243
                                        #   in Loop: Header=BB1_77 Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	movl	%eax, %esi
	sarl	$5, %esi
	movslq	%esi, %rsi
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	movl	(%rdx,%rsi,4), %r8d
	orb	-2129(%rbp), %r12b      # 1-byte Folded Reload
	andb	$1, %r12b
	movb	%r12b, -16(%rcx)
	movb	%al, %cl
	movl	$1, %edi
	shll	%cl, %edi
	orl	%r8d, %edi
	movl	%edi, (%rdx,%rsi,4)
	movl	%r9d, %r8d
	jmp	.LBB1_82
.LBB1_83:                               # %while.end255
                                        #   in Loop: Header=BB1_28 Depth=1
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#84:                                # %cont_BB320
                                        #   in Loop: Header=BB1_28 Depth=1
	cmpl	$4, -2156(%rbp)         # 4-byte Folded Reload
	jl	.LBB1_86
# BB#85:                                # %if.then258
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str7, %esi
	movl	-2140(%rbp), %edx       # 4-byte Reload
	xorb	%al, %al
	callq	fprintf
.LBB1_86:                               # %if.end260
                                        #   in Loop: Header=BB1_28 Depth=1
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#87:                                # %cont_BB325
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	-2148(%rbp), %eax       # 4-byte Reload
	addl	%eax, %eax
	movl	%eax, -2148(%rbp)       # 4-byte Spill
	cmpl	-2136(%rbp), %eax       # 4-byte Folded Reload
	jg	.LBB1_90
# BB#88:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_28 Depth=1
	testb	%r14b, %r14b
	jne	.LBB1_104
# BB#89:                                # %cont_BB328
                                        #   in Loop: Header=BB1_28 Depth=1
	cmpl	$0, -2140(%rbp)         # 4-byte Folded Reload
	jne	.LBB1_28
.LBB1_90:                               # %while.end268
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB1_104
# BB#91:                                # %cont_BB331
	xorl	%r8d, %r8d
	cmpl	$4, -2156(%rbp)         # 4-byte Folded Reload
	movl	%r8d, %eax
	jl	.LBB1_93
# BB#92:                                # %if.then271
	movq	stderr(%rip), %rdi
	movl	$.L.str8, %esi
	xorb	%al, %al
	callq	fprintf
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	jmp	.LBB1_93
	.align	16, 0x90
.LBB1_99:                               # %while.end284
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	%rsp, %r9
	leaq	-16(%r9), %rsi
	movq	%rsi, %rsp
	movb	-2149(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%r9)
	movl	(%rdx), %edi
	movslq	%r8d, %r8
	movb	%cl, -16(%r9)
	decl	%edi
	movl	%edi, (%rdx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-2113(%rbp), %dl        # 1-byte Reload
	movb	%dl, -16(%rcx)
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	movl	(%rcx,%r8,4), %edi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	-2150(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rdx)
	movb	$0, -16(%rdx)
	movq	-2112(%rbp), %rdx       # 8-byte Reload
	movb	%al, (%rdx,%rdi)
	incl	%r8d
.LBB1_93:                               # %for.cond274
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_96 Depth 2
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB1_104
# BB#94:                                # %cont_BB337
                                        #   in Loop: Header=BB1_93 Depth=1
	cmpl	-2136(%rbp), %r8d       # 4-byte Folded Reload
	jge	.LBB1_100
# BB#95:                                # %for.body277
                                        #   in Loop: Header=BB1_93 Depth=1
	movslq	%eax, %rcx
	leaq	-2096(%rbp,%rcx,4), %rdx
	xorb	%r9b, %r9b
	jmp	.LBB1_96
	.align	16, 0x90
.LBB1_98:                               # %while.body282
                                        #   in Loop: Header=BB1_96 Depth=2
	addq	$4, %rdx
	incl	%eax
.LBB1_96:                               # %while.cond
                                        #   Parent Loop BB1_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	-2149(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rdi)
	testb	%r9b, %r9b
	jne	.LBB1_104
# BB#97:                                # %cont_BB345
                                        #   in Loop: Header=BB1_96 Depth=2
	movl	(%rdx), %edi
	testl	%edi, %edi
	jne	.LBB1_99
	jmp	.LBB1_98
.LBB1_100:                              # %for.end294
	xorb	%cl, %cl
	testb	%cl, %cl
	je	.LBB1_101
	.align	16, 0x90
.LBB1_104:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str55, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB1_104
.LBB1_101:                              # %cont_BB362
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB1_103
# BB#102:                               # %if.then297
	movl	$1005, %edi             # imm = 0x3ED
	callq	BZ2_bz__AssertH__fail
.LBB1_103:                              # %if.end298
	movb	$0, return_taint3(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp23:
	.size	fallbackSort, .Ltmp23-fallbackSort
	.cfi_endproc

	.align	16, 0x90
	.type	mainSort,@function
mainSort:                               # @mainSort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$3464, %rsp             # imm = 0xD88
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movl	%r9d, -3480(%rbp)       # 4-byte Spill
	movl	%r8d, -3412(%rbp)       # 4-byte Spill
	movq	%rcx, -3384(%rbp)       # 8-byte Spill
	movq	%rdx, -3440(%rbp)       # 8-byte Spill
	movq	%rsi, -3424(%rbp)       # 8-byte Spill
	movq	%rdi, -3400(%rbp)       # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_130
# BB#1:                                 # %cont_BB
	movb	param_taint25(%rip), %al
	movb	%al, -3387(%rbp)        # 1-byte Spill
	movb	param_taint26(%rip), %bl
	movb	param_taint27(%rip), %al
	movb	%al, -3426(%rbp)        # 1-byte Spill
	movb	param_taint28(%rip), %al
	movb	%al, -3473(%rbp)        # 1-byte Spill
	movb	param_taint29(%rip), %al
	movb	%al, -3441(%rbp)        # 1-byte Spill
	movb	param_taint31(%rip), %al
	movb	%al, -3481(%rbp)        # 1-byte Spill
	movl	$65536, %eax            # imm = 0x10000
	cmpl	$4, -3480(%rbp)         # 4-byte Folded Reload
	jl	.LBB2_3
# BB#2:                                 # %if.then
	movq	stderr(%rip), %rdi
	movl	$.L.str2, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$65536, %eax            # imm = 0x10000
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_5:                                # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-3473(%rbp), %dl        # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	-3384(%rbp), %rcx       # 8-byte Reload
	movl	$0, (%rcx,%rax,4)
	decq	%rax
.LBB2_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB2_130
# BB#4:                                 # %cont_BB12
                                        #   in Loop: Header=BB2_3 Depth=1
	testl	%eax, %eax
	jns	.LBB2_5
# BB#6:                                 # %for.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %bl
	movb	%bl, -3425(%rbp)        # 1-byte Spill
	movb	%bl, -16(%rax)
	movl	-3412(%rbp), %eax       # 4-byte Reload
	leal	-4(%rax), %r9d
	movq	-3424(%rbp), %rax       # 8-byte Reload
	movzbl	(%rax), %edx
	shll	$8, %edx
	xorb	%r8b, %r8b
	andb	$1, -3426(%rbp)         # 1-byte Folded Spill
	movb	-3473(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -3386(%rbp)        # 1-byte Spill
	movb	-3426(%rbp), %r15b      # 1-byte Reload
	movq	-3440(%rbp), %r10       # 8-byte Reload
	movb	-3425(%rbp), %r14b      # 1-byte Reload
	movq	-3424(%rbp), %r11       # 8-byte Reload
	movb	-3386(%rbp), %r12b      # 1-byte Reload
	movq	-3384(%rbp), %rax       # 8-byte Reload
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_9:                                # %for.body6
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rdi)
	movb	$0, -16(%rdi)
	movslq	%esi, %rsi
	sarl	$8, %edx
	movw	$0, (%r10,%rsi,2)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rdi)
	movzbl	(%r11,%rsi), %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rsi)
	shll	$8, %edi
	orl	%edx, %edi
	movslq	%edi, %rdx
	movl	(%rax,%rdx,4), %edi
	movb	%r12b, -16(%rsi)
	leal	2(%r9), %esi
	movslq	%esi, %rsi
	incl	%edi
	movl	%edi, (%rax,%rdx,4)
	sarl	$8, %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rdi)
	movb	$0, -16(%rdi)
	movw	$0, (%r10,%rsi,2)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rdi)
	movzbl	(%r11,%rsi), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	shll	$8, %esi
	orl	%edx, %esi
	movslq	%esi, %rsi
	movl	(%rax,%rsi,4), %ebx
	movb	%r12b, -16(%rdi)
	leal	1(%r9), %edx
	movslq	%edx, %rdi
	movslq	%r9d, %rdx
	incl	%ebx
	movl	%ebx, (%rax,%rsi,4)
	sarl	$8, %esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rbx)
	movb	$0, -16(%rbx)
	movw	$0, (%r10,%rdi,2)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rbx)
	movzbl	(%r11,%rdi), %ebx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdi)
	shll	$8, %ebx
	orl	%esi, %ebx
	movslq	%ebx, %rsi
	movl	(%rax,%rsi,4), %ebx
	movb	%r12b, -16(%rdi)
	incl	%ebx
	movl	%ebx, (%rax,%rsi,4)
	sarl	$8, %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdi)
	movb	$0, -16(%rdi)
	movw	$0, (%r10,%rdx,2)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rdi)
	movzbl	(%r11,%rdx), %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdi)
	shll	$8, %edx
	orl	%esi, %edx
	movslq	%edx, %rsi
	movl	(%rax,%rsi,4), %ebx
	movb	%r12b, -16(%rdi)
	incl	%ebx
	movl	%ebx, (%rax,%rsi,4)
	addl	$-4, %r9d
.LBB2_7:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB2_130
# BB#8:                                 # %cont_BB24
                                        #   in Loop: Header=BB2_7 Depth=1
	leal	3(%r9), %esi
	cmpl	$3, %esi
	jge	.LBB2_9
# BB#10:                                # %for.end60
	movslq	%esi, %r9
	xorb	%r8b, %r8b
	movb	-3386(%rbp), %al        # 1-byte Reload
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_13:                               # %for.body64
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	-3426(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rsi)
	movb	$0, -16(%rsi)
	sarl	$8, %edx
	movq	-3440(%rbp), %rcx       # 8-byte Reload
	movw	$0, (%rcx,%r9,2)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	-3425(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rsi)
	movq	-3424(%rbp), %rcx       # 8-byte Reload
	movzbl	(%rcx,%r9), %edi
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rsi)
	shll	$8, %edi
	orl	%edi, %edx
	movslq	%edx, %rdi
	movq	-3384(%rbp), %rcx       # 8-byte Reload
	movl	(%rcx,%rdi,4), %ebx
	movb	%al, -16(%rsi)
	incl	%ebx
	movl	%ebx, (%rcx,%rdi,4)
	decq	%r9
.LBB2_11:                               # %for.cond61
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB2_130
# BB#12:                                # %cont_BB100
                                        #   in Loop: Header=BB2_11 Depth=1
	testl	%r9d, %r9d
	jns	.LBB2_13
# BB#14:                                # %for.end79
	xorl	%eax, %eax
	xorb	%r8b, %r8b
	movb	-3425(%rbp), %bl        # 1-byte Reload
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_17:                               # %for.body83
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	-3424(%rbp), %rcx       # 8-byte Reload
	movb	(%rcx,%rax), %r9b
	movl	-3412(%rbp), %edx       # 4-byte Reload
	leal	(%rdx,%rax), %edx
	movslq	%edx, %rdx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rsi)
	movb	%bl, -16(%rsi)
	movb	%r9b, (%rcx,%rdx)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	-3426(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rsi)
	movb	$0, -16(%rsi)
	movq	-3440(%rbp), %rsi       # 8-byte Reload
	movw	$0, (%rsi,%rdx,2)
	incq	%rax
.LBB2_15:                               # %for.cond80
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB2_130
# BB#16:                                # %cont_BB121
                                        #   in Loop: Header=BB2_15 Depth=1
	cmpl	$33, %eax
	jle	.LBB2_17
# BB#18:                                # %for.end93
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB2_130
# BB#19:                                # %cont_BB135
	movl	$1, %r8d
	cmpl	$4, -3480(%rbp)         # 4-byte Folded Reload
	jl	.LBB2_21
# BB#20:                                # %if.then96
	movq	stderr(%rip), %rdi
	movl	$.L.str3, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %r8d
	jmp	.LBB2_21
	.align	16, 0x90
.LBB2_23:                               # %for.body102
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-3386(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rcx)
	movq	-3384(%rbp), %rbx       # 8-byte Reload
	movl	-4(%rbx,%r8,4), %ecx
	movb	-3473(%rbp), %dl        # 1-byte Reload
	orb	%dl, %dl
	andb	$1, %dl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rsi)
	movl	(%rbx,%r8,4), %edi
	movb	%dl, -16(%rsi)
	addl	%ecx, %edi
	movl	%edi, (%rbx,%r8,4)
	incq	%r8
.LBB2_21:                               # %for.cond99
                                        # =>This Inner Loop Header: Depth=1
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB2_130
# BB#22:                                # %cont_BB140
                                        #   in Loop: Header=BB2_21 Depth=1
	cmpl	$65536, %r8d            # imm = 0x10000
	jle	.LBB2_23
# BB#24:                                # %for.end111
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3425(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movl	-3412(%rbp), %eax       # 4-byte Reload
	leal	-4(%rax), %r9d
	movq	-3424(%rbp), %rax       # 8-byte Reload
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	xorb	%r8b, %r8b
	movb	-3441(%rbp), %r10b      # 1-byte Reload
	movw	%cx, %di
	movb	-3425(%rbp), %r12b      # 1-byte Reload
	movq	-3424(%rbp), %r14       # 8-byte Reload
	movb	-3386(%rbp), %r13b      # 1-byte Reload
	movq	-3400(%rbp), %r15       # 8-byte Reload
	jmp	.LBB2_25
	.align	16, 0x90
.LBB2_27:                               # %for.body120
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movslq	%esi, %rax
	movzbl	(%r14,%rax), %ebx
	movzwl	%di, %edx
	shrl	$8, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	shll	$8, %ebx
	orl	%edx, %ebx
	movq	-3384(%rbp), %rdx       # 8-byte Reload
	movl	(%rdx,%rbx,4), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	andb	$1, %r10b
	movb	-3387(%rbp), %r11b      # 1-byte Reload
	andb	$1, %r11b
	movb	%r13b, -16(%rcx)
	movb	%r13b, -16(%rcx)
	decl	%edi
	movl	%edi, (%rdx,%rbx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	movslq	%edi, %rax
	movl	%esi, (%r15,%rax,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	leal	2(%r9), %esi
	movb	%r12b, -16(%rcx)
	movslq	%esi, %rsi
	movzbl	(%r14,%rsi), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	shrl	$8, %ebx
	shll	$8, %edi
	orl	%ebx, %edi
	movl	(%rdx,%rdi,4), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r13b, -16(%rcx)
	decl	%ebx
	movl	%ebx, (%rdx,%rdi,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	movslq	%ebx, %rcx
	movl	%esi, (%r15,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	leal	1(%r9), %esi
	movb	%r12b, -16(%rcx)
	movslq	%esi, %rsi
	movzbl	(%r14,%rsi), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	shrl	$8, %edi
	shll	$8, %ebx
	orl	%edi, %ebx
	movl	(%rdx,%rbx,4), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r13b, -16(%rcx)
	decl	%edi
	movl	%edi, (%rdx,%rbx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	movslq	%edi, %rcx
	shrl	$8, %ebx
	movl	%esi, (%r15,%rcx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movslq	%r9d, %rsi
	movb	%r12b, -16(%rcx)
	movzbl	(%r14,%rsi), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	shll	$8, %edi
	orl	%ebx, %edi
	movl	(%rdx,%rdi,4), %ecx
	decl	%ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rsp
	movb	%r13b, -16(%rbx)
	movb	%r13b, -16(%rbx)
	movl	%esi, (%rdx,%rdi,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r11b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	movl	%r9d, (%r15,%rsi,4)
	addl	$-4, %r9d
	xorb	%r10b, %r10b
.LBB2_25:                               # %for.cond117
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB2_130
# BB#26:                                # %cont_BB163
                                        #   in Loop: Header=BB2_25 Depth=1
	leal	3(%r9), %esi
	cmpl	$3, %esi
	jge	.LBB2_27
# BB#28:                                # %for.end189
	movslq	%esi, %r11
	xorb	%r8b, %r8b
	xorl	%r9d, %r9d
	andb	$1, -3387(%rbp)         # 1-byte Folded Spill
	movb	-3386(%rbp), %dl        # 1-byte Reload
	jmp	.LBB2_29
	.align	16, 0x90
.LBB2_48:                               # %for.body193
                                        #   in Loop: Header=BB2_29 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	-3425(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rsi)
	movzwl	%di, %esi
	movq	-3424(%rbp), %rax       # 8-byte Reload
	movzbl	(%rax,%r11), %edi
	shrl	$8, %esi
	andb	$1, %r10b
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%dl, -16(%rbx)
	shll	$8, %edi
	orl	%esi, %edi
	movq	-3384(%rbp), %rax       # 8-byte Reload
	movl	(%rax,%rdi,4), %esi
	decl	%esi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movslq	%esi, %rsi
	movq	%rcx, %rsp
	movb	%dl, -16(%rbx)
	movb	%dl, -16(%rbx)
	movl	%esi, (%rax,%rdi,4)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	-3387(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rbx)
	movb	%r10b, -16(%rbx)
	movq	-3400(%rbp), %rax       # 8-byte Reload
	movl	%r11d, (%rax,%rsi,4)
	decq	%r11
	xorb	%r10b, %r10b
.LBB2_29:                               # %for.cond190
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB2_130
# BB#30:                                # %cont_BB251
                                        #   in Loop: Header=BB2_29 Depth=1
	testl	%r11d, %r11d
	jns	.LBB2_48
# BB#31:
	xorb	%dl, %dl
	movl	$1, %r14d
	xorb	%al, %al
	andb	$1, %al
	movb	%al, -3457(%rbp)        # 1-byte Spill
	xorb	%al, %al
	andb	$1, %al
	movb	%al, -3385(%rbp)        # 1-byte Spill
	jmp	.LBB2_32
	.align	16, 0x90
.LBB2_49:                               # %for.body215
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3457(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movb	$0, -1328(%rbp,%r9)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3385(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movl	%r9d, -1072(%rbp,%r9,4)
	incq	%r9
.LBB2_32:                               # %for.cond212
                                        # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	jne	.LBB2_130
# BB#33:                                # %cont_BB275
                                        #   in Loop: Header=BB2_32 Depth=1
	cmpl	$255, %r9d
	jle	.LBB2_49
# BB#34:
	xorb	%al, %al
	.align	16, 0x90
.LBB2_35:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%r14,%r14,2), %r14d
	testb	%al, %al
	jne	.LBB2_130
# BB#36:                                # %cont_BB286
                                        #   in Loop: Header=BB2_35 Depth=1
	cmpl	$257, %r14d             # imm = 0x101
	jl	.LBB2_35
# BB#37:
	xorb	%r11b, %r11b
	movl	$0, -3488(%rbp)         # 4-byte Folded Spill
	movb	-3385(%rbp), %r9b       # 1-byte Reload
	movb	-3386(%rbp), %r8b       # 1-byte Reload
	.align	16, 0x90
.LBB2_38:                               # %do.body226
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #       Child Loop BB2_42 Depth 3
	movslq	%r14d, %rax
	imulq	$1431655766, %rax, %r14 # imm = 0x55555556
	movq	%r14, %rax
	shrq	$63, %rax
	shrq	$32, %r14
	addl	%eax, %r14d
	movl	$0, -3404(%rbp)         # 4-byte Folded Spill
	movl	%r14d, %eax
	jmp	.LBB2_39
	.align	16, 0x90
.LBB2_47:                               # %zero
                                        #   in Loop: Header=BB2_39 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-3385(%rbp), %dl        # 1-byte Reload
	movb	%dl, -16(%rax)
	andb	$1, %r10b
	movb	%r10b, -16(%rax)
	movslq	%ecx, %rax
	movl	%r12d, -1072(%rbp,%rax,4)
	incl	-3404(%rbp)             # 4-byte Folded Spill
	movl	-3408(%rbp), %eax       # 4-byte Reload
	incl	%eax
.LBB2_39:                               # %for.cond227
                                        #   Parent Loop BB2_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_42 Depth 3
	testb	%r11b, %r11b
	jne	.LBB2_130
# BB#40:                                # %cont_BB292
                                        #   in Loop: Header=BB2_39 Depth=2
	movl	%eax, %edx
	cmpl	$255, %edx
	jg	.LBB2_51
# BB#41:                                # %for.body230
                                        #   in Loop: Header=BB2_39 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3385(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movslq	%edx, %rcx
	movl	%edx, -3408(%rbp)       # 4-byte Spill
	movl	-1072(%rbp,%rcx,4), %r12d
	movb	-16(%rax), %r10b
	movl	-3404(%rbp), %r13d      # 4-byte Reload
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_50:                               # %if.end267
                                        #   in Loop: Header=BB2_42 Depth=3
	subl	%r14d, %r13d
.LBB2_42:                               # %while.cond
                                        #   Parent Loop BB2_38 Depth=1
                                        #     Parent Loop BB2_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r9b, -16(%rax)
	movslq	%r13d, %rsi
	movl	-1072(%rbp,%rsi,4), %eax
	leal	1(%r12), %ecx
	shll	$8, %ecx
	movslq	%ecx, %r15
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r8b, -16(%rdx)
	incl	%eax
	shll	$8, %eax
	movslq	%eax, %rax
	movq	-3384(%rbp), %rcx       # 8-byte Reload
	movl	(%rcx,%rax,4), %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r9b, -16(%rax)
	movl	-1072(%rbp,%rsi,4), %eax
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r8b, -16(%rdx)
	shll	$8, %eax
	movslq	%eax, %rax
	movl	(%rcx,%rax,4), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r8b, -16(%rdx)
	movl	(%rcx,%r15,4), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rcx)
	testb	%r11b, %r11b
	jne	.LBB2_130
# BB#43:                                # %cont_BB334
                                        #   in Loop: Header=BB2_42 Depth=3
	leal	(%r14,%r13), %ecx
	movl	%r12d, %edx
	shll	$8, %edx
	movslq	%edx, %rdx
	subl	%eax, %ebx
	movq	-3384(%rbp), %rax       # 8-byte Reload
	subl	(%rax,%rdx,4), %edi
	cmpl	%edi, %ebx
	jbe	.LBB2_47
# BB#44:                                # %while.body
                                        #   in Loop: Header=BB2_42 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-3385(%rbp), %bl        # 1-byte Reload
	movb	%bl, -16(%rax)
	movl	-1072(%rbp,%rsi,4), %eax
	movslq	%ecx, %rcx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	testb	%r11b, %r11b
	movb	%bl, -16(%rsi)
	movb	%bl, -16(%rsi)
	movl	%eax, -1072(%rbp,%rcx,4)
	jne	.LBB2_130
# BB#45:                                # %cont_BB346
                                        #   in Loop: Header=BB2_42 Depth=3
	leal	-1(%r14), %eax
	cmpl	%eax, %r13d
	jg	.LBB2_50
# BB#46:                                #   in Loop: Header=BB2_39 Depth=2
	movl	%r13d, %ecx
	jmp	.LBB2_47
.LBB2_51:                               # %do.cond273
                                        #   in Loop: Header=BB2_38 Depth=1
	testb	%r11b, %r11b
	jne	.LBB2_130
# BB#52:                                # %cont_BB353
                                        #   in Loop: Header=BB2_38 Depth=1
	cmpl	$1, %r14d
	jne	.LBB2_38
# BB#53:
	xorb	%r13b, %r13b
	andb	$1, -3481(%rbp)         # 1-byte Folded Spill
	xorl	%eax, %eax
	movl	%eax, -3448(%rbp)       # 4-byte Spill
	jmp	.LBB2_54
	.align	16, 0x90
.LBB2_125:                              # %for.inc506
                                        #   in Loop: Header=BB2_54 Depth=1
	incl	-3488(%rbp)             # 4-byte Folded Spill
.LBB2_54:                               # %for.cond277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_116 Depth 2
                                        #     Child Loop BB2_112 Depth 2
                                        #     Child Loop BB2_106 Depth 2
                                        #     Child Loop BB2_90 Depth 2
                                        #     Child Loop BB2_80 Depth 2
                                        #     Child Loop BB2_76 Depth 2
                                        #     Child Loop BB2_57 Depth 2
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#55:                                # %cont_BB358
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-3488(%rbp), %edx       # 4-byte Reload
	cmpl	$255, %edx
	jg	.LBB2_126
# BB#56:                                # %for.body280
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3385(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movslq	%edx, %rax
	movl	-1072(%rbp,%rax,4), %eax
	movl	%eax, -3408(%rbp)       # 4-byte Spill
	movl	$0, -3404(%rbp)         # 4-byte Folded Spill
	movl	%eax, %ecx
	shll	$8, %ecx
	movl	%ecx, -3464(%rbp)       # 4-byte Spill
	movslq	%eax, %rax
	movq	%rax, -3456(%rbp)       # 8-byte Spill
	jmp	.LBB2_57
	.align	16, 0x90
.LBB2_72:                               # %if.end325
                                        #   in Loop: Header=BB2_57 Depth=2
	incl	-3404(%rbp)             # 4-byte Folded Spill
.LBB2_57:                               # %for.cond283
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#58:                                # %cont_BB367
                                        #   in Loop: Header=BB2_57 Depth=2
	cmpl	$255, -3404(%rbp)       # 4-byte Folded Reload
	jg	.LBB2_73
# BB#59:                                # %for.body286
                                        #   in Loop: Header=BB2_57 Depth=2
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#60:                                # %cont_BB370
                                        #   in Loop: Header=BB2_57 Depth=2
	movl	-3404(%rbp), %eax       # 4-byte Reload
	cmpl	%eax, -3408(%rbp)       # 4-byte Folded Reload
	je	.LBB2_72
# BB#61:                                # %if.then289
                                        #   in Loop: Header=BB2_57 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3386(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#62:                                # %cont_BB380
                                        #   in Loop: Header=BB2_57 Depth=2
	movl	-3464(%rbp), %eax       # 4-byte Reload
	movl	-3404(%rbp), %ecx       # 4-byte Reload
	leal	(%rax,%rcx), %eax
	movslq	%eax, %rsi
	movq	-3384(%rbp), %rdx       # 8-byte Reload
	movl	(%rdx,%rsi,4), %eax
	movl	$2097152, %ecx          # imm = 0x200000
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.LBB2_71
# BB#63:                                # %if.then294
                                        #   in Loop: Header=BB2_57 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3386(%rbp), %bl        # 1-byte Reload
	movb	%bl, -16(%rax)
	movl	(%rdx,%rsi,4), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#64:                                # %cont_BB395
                                        #   in Loop: Header=BB2_57 Depth=2
	movl	-3464(%rbp), %eax       # 4-byte Reload
	movl	-3404(%rbp), %ecx       # 4-byte Reload
	leal	1(%rax,%rcx), %eax
	andl	$-2097153, %r12d        # imm = 0xFFFFFFFFFFDFFFFF
	movslq	%eax, %rax
	movl	(%rdx,%rax,4), %r14d
	movl	$-2097153, %eax         # imm = 0xFFFFFFFFFFDFFFFF
	andl	%eax, %r14d
	decl	%r14d
	cmpl	%r12d, %r14d
	jle	.LBB2_71
# BB#65:                                # %if.then305
                                        #   in Loop: Header=BB2_57 Depth=2
	movq	%rdx, %r15
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#66:                                # %cont_BB398
                                        #   in Loop: Header=BB2_57 Depth=2
	movq	%rsi, -3472(%rbp)       # 8-byte Spill
	movb	-3473(%rbp), %al        # 1-byte Reload
	movb	%al, %bl
	movb	%al, %r13b
	cmpl	$4, -3480(%rbp)         # 4-byte Folded Reload
	jl	.LBB2_68
# BB#67:                                # %if.then308
                                        #   in Loop: Header=BB2_57 Depth=2
	movl	%r14d, %r9d
	subl	%r12d, %r9d
	incl	%r9d
	movq	stderr(%rip), %rdi
	movl	$.L.str4, %esi
	movl	-3408(%rbp), %edx       # 4-byte Reload
	movl	-3404(%rbp), %ecx       # 4-byte Reload
	movl	-3448(%rbp), %r8d       # 4-byte Reload
	xorb	%al, %al
	callq	fprintf
.LBB2_68:                               # %if.end312
                                        #   in Loop: Header=BB2_57 Depth=2
	movb	-3387(%rbp), %al        # 1-byte Reload
	movb	%al, param_taint32(%rip)
	movb	-3425(%rbp), %al        # 1-byte Reload
	movb	%al, param_taint33(%rip)
	movb	-3426(%rbp), %al        # 1-byte Reload
	movb	%al, param_taint34(%rip)
	movb	-3441(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, param_taint35(%rip)
	andb	$1, %r13b
	movb	%r13b, param_taint36(%rip)
	andb	$1, %bl
	movb	%bl, param_taint37(%rip)
	movb	$0, param_taint38(%rip)
	movb	-3481(%rbp), %al        # 1-byte Reload
	movb	%al, param_taint39(%rip)
	subq	$16, %rsp
	movq	16(%rbp), %rax
	movq	%rax, 8(%rsp)
	movl	$2, (%rsp)
	movq	-3400(%rbp), %rdi       # 8-byte Reload
	movq	-3424(%rbp), %rsi       # 8-byte Reload
	movq	-3440(%rbp), %rdx       # 8-byte Reload
	movl	-3412(%rbp), %ecx       # 4-byte Reload
	movl	%r12d, %r8d
	movl	%r14d, %r9d
	callq	mainQSort3
	addq	$16, %rsp
	xorb	%r13b, %r13b
	testb	%r13b, %r13b
	movq	-3472(%rbp), %rsi       # 8-byte Reload
	jne	.LBB2_130
# BB#69:                                # %cont_BB408
                                        #   in Loop: Header=BB2_57 Depth=2
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.LBB2_129
# BB#70:                                #   in Loop: Header=BB2_57 Depth=2
	subl	%r12d, %r14d
	movl	-3448(%rbp), %eax       # 4-byte Reload
	leal	1(%r14,%rax), %eax
	movl	%eax, -3448(%rbp)       # 4-byte Spill
	movq	%r15, %rdx
.LBB2_71:                               # %if.end321
                                        #   in Loop: Header=BB2_57 Depth=2
	movq	%rdx, -3384(%rbp)       # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3386(%rbp), %bl        # 1-byte Reload
	movb	%bl, -16(%rax)
	movl	(%rdx,%rsi,4), %ecx
	movb	%bl, -16(%rax)
	orl	$2097152, %ecx          # imm = 0x200000
	movl	%ecx, (%rdx,%rsi,4)
	jmp	.LBB2_72
.LBB2_73:                               # %for.end328
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3457(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#74:                                # %cont_BB424
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	-3456(%rbp), %rax       # 8-byte Reload
	movb	-1328(%rbp,%rax), %cl
	xorl	%r10d, %r10d
	testb	%cl, %cl
	movl	-3408(%rbp), %r8d       # 4-byte Reload
	je	.LBB2_76
# BB#75:                                # %if.then332
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	$1006, %edi             # imm = 0x3EE
	callq	BZ2_bz__AssertH__fail
	xorl	%r10d, %r10d
	movl	-3408(%rbp), %r8d       # 4-byte Reload
	jmp	.LBB2_76
	.align	16, 0x90
.LBB2_78:                               # %for.body337
                                        #   in Loop: Header=BB2_76 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-3386(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rcx)
	movslq	%r8d, %rcx
	movq	-3384(%rbp), %r11       # 8-byte Reload
	movl	(%r11,%rcx,4), %esi
	leal	1(%r8), %edi
	andl	$-2097153, %esi         # imm = 0xFFFFFFFFFFDFFFFF
	xorb	%bl, %bl
	andb	$1, %bl
	xorb	%dl, %dl
	andb	$1, %dl
	movq	%rsp, %rcx
	movslq	%edi, %r9
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rcx)
	movb	%al, -16(%rcx)
	movl	%esi, -2352(%rbp,%r10,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rcx)
	movl	(%r11,%r9,4), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%dl, -16(%rcx)
	movb	%al, -16(%rcx)
	andl	$-2097153, %esi         # imm = 0xFFFFFFFFFFDFFFFF
	decl	%esi
	movl	%esi, -3376(%rbp,%r10,4)
	addl	$256, %r8d              # imm = 0x100
	incq	%r10
.LBB2_76:                               # %for.cond334
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#77:                                # %cont_BB428
                                        #   in Loop: Header=BB2_76 Depth=2
	cmpl	$255, %r10d
	jle	.LBB2_78
# BB#79:                                # %for.end356
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3386(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movslq	-3464(%rbp), %r14       # 4-byte Folded Reload
	movq	-3384(%rbp), %rax       # 8-byte Reload
	movslq	(%rax,%r14,4), %r8
	andq	$-2097153, %r8          # imm = 0xFFFFFFFFFFDFFFFF
	jmp	.LBB2_80
	.align	16, 0x90
.LBB2_88:                               # %for.inc387
                                        #   in Loop: Header=BB2_80 Depth=2
	incq	%r8
.LBB2_80:                               # %for.cond361
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	xorb	%r9b, %r9b
	andb	$1, %r9b
	movb	%r9b, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#81:                                # %cont_BB463
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	-3456(%rbp), %rax       # 8-byte Reload
	movl	-2352(%rbp,%rax,4), %eax
	cmpl	%eax, %r8d
	jge	.LBB2_89
# BB#82:                                # %for.body366
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	-3387(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rsi)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#83:                                # %cont_BB471
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	-3400(%rbp), %rax       # 8-byte Reload
	movl	(%rax,%r8,4), %edx
	decl	%edx
	movb	-16(%rsi), %bl
	testl	%edx, %edx
	jns	.LBB2_85
# BB#84:                                # %if.then372
                                        #   in Loop: Header=BB2_80 Depth=2
	addl	-3412(%rbp), %edx       # 4-byte Folded Reload
	orb	-3441(%rbp), %bl        # 1-byte Folded Reload
.LBB2_85:                               # %if.end374
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	-3425(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movslq	%edx, %rax
	movq	-3424(%rbp), %rsi       # 8-byte Reload
	movzbl	(%rsi,%rax), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	testb	%r13b, %r13b
	movb	-3457(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	jne	.LBB2_130
# BB#86:                                # %cont_BB484
                                        #   in Loop: Header=BB2_80 Depth=2
	movb	-1328(%rbp,%rsi), %al
	testb	%al, %al
	jne	.LBB2_88
# BB#87:                                # %if.then380
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r9b, -16(%rax)
	movslq	-2352(%rbp,%rsi,4), %rdi
	andb	$1, %bl
	movb	%r9b, -16(%rax)
	leal	1(%rdi), %eax
	movl	%eax, -2352(%rbp,%rsi,4)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	-3387(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	%bl, -16(%rax)
	movq	-3400(%rbp), %rax       # 8-byte Reload
	movl	%edx, (%rax,%rdi,4)
	jmp	.LBB2_88
.LBB2_89:                               # %for.end389
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3386(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movl	-3408(%rbp), %eax       # 4-byte Reload
	leal	1(%rax), %eax
	shll	$8, %eax
	movslq	%eax, %r12
	movq	-3384(%rbp), %rax       # 8-byte Reload
	movl	(%rax,%r12,4), %eax
	movl	$-2097153, %ecx         # imm = 0xFFFFFFFFFFDFFFFF
	andl	%ecx, %eax
	decl	%eax
	movslq	%eax, %r8
	jmp	.LBB2_90
	.align	16, 0x90
.LBB2_98:                               # %for.inc422
                                        #   in Loop: Header=BB2_90 Depth=2
	decq	%r8
.LBB2_90:                               # %for.cond396
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	andb	$1, %cl
	movb	%cl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#91:                                # %cont_BB508
                                        #   in Loop: Header=BB2_90 Depth=2
	movq	-3456(%rbp), %rax       # 8-byte Reload
	movl	-3376(%rbp,%rax,4), %eax
	cmpl	%eax, %r8d
	jle	.LBB2_99
# BB#92:                                # %for.body401
                                        #   in Loop: Header=BB2_90 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	-3387(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rdx)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#93:                                # %cont_BB516
                                        #   in Loop: Header=BB2_90 Depth=2
	movq	-3400(%rbp), %rax       # 8-byte Reload
	movl	(%rax,%r8,4), %esi
	decl	%esi
	movb	-16(%rdx), %bl
	testl	%esi, %esi
	jns	.LBB2_95
# BB#94:                                # %if.then407
                                        #   in Loop: Header=BB2_90 Depth=2
	addl	-3412(%rbp), %esi       # 4-byte Folded Reload
	orb	-3441(%rbp), %bl        # 1-byte Folded Reload
.LBB2_95:                               # %if.end409
                                        #   in Loop: Header=BB2_90 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-3425(%rbp), %dl        # 1-byte Reload
	movb	%dl, -16(%rax)
	movslq	%esi, %rax
	movq	-3424(%rbp), %rdx       # 8-byte Reload
	movzbl	(%rdx,%rax), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%r13b, %r13b
	movb	-3457(%rbp), %dl        # 1-byte Reload
	movb	%dl, -16(%rax)
	jne	.LBB2_130
# BB#96:                                # %cont_BB529
                                        #   in Loop: Header=BB2_90 Depth=2
	movb	-1328(%rbp,%rdi), %al
	testb	%al, %al
	jne	.LBB2_98
# BB#97:                                # %if.then415
                                        #   in Loop: Header=BB2_90 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	movslq	-3376(%rbp,%rdi,4), %rdx
	andb	$1, %bl
	movb	%cl, -16(%rax)
	leal	-1(%rdx), %eax
	movl	%eax, -3376(%rbp,%rdi,4)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3387(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	%bl, -16(%rax)
	movq	-3400(%rbp), %rax       # 8-byte Reload
	movl	%esi, (%rax,%rdx,4)
	jmp	.LBB2_98
.LBB2_99:                               # %for.end424
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r9b, -16(%rax)
	movq	-3456(%rbp), %rax       # 8-byte Reload
	movl	-2352(%rbp,%rax,4), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%r13b, %r13b
	movb	%cl, -16(%rax)
	jne	.LBB2_130
# BB#100:                               # %cont_BB549
                                        #   in Loop: Header=BB2_54 Depth=1
	decl	%esi
	movq	-3456(%rbp), %rax       # 8-byte Reload
	movl	-3376(%rbp,%rax,4), %eax
	movl	$-1, %edx
	cmpl	%eax, %esi
	je	.LBB2_106
# BB#101:                               # %lor.lhs.false
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r9b, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#102:                               # %cont_BB556
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	-3456(%rbp), %rax       # 8-byte Reload
	movl	-2352(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.LBB2_105
# BB#103:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%cl, -16(%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#104:                               # %cont_BB564
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-3412(%rbp), %eax       # 4-byte Reload
	leal	-1(%rax), %eax
	movq	-3456(%rbp), %rcx       # 8-byte Reload
	movl	-3376(%rbp,%rcx,4), %ecx
	movl	$-1, %edx
	cmpl	%eax, %ecx
	je	.LBB2_106
.LBB2_105:                              # %if.then441
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	$1007, %edi             # imm = 0x3EF
	callq	BZ2_bz__AssertH__fail
	movl	$-1, %edx
	jmp	.LBB2_106
	.align	16, 0x90
.LBB2_108:                              # %for.body446
                                        #   in Loop: Header=BB2_106 Depth=2
	movb	-3386(%rbp), %bl        # 1-byte Reload
	movb	%bl, -16(%rax)
	movl	-3408(%rbp), %esi       # 4-byte Reload
	movslq	%esi, %rcx
	addl	$256, %esi              # imm = 0x100
	movl	%esi, -3408(%rbp)       # 4-byte Spill
	movq	-3384(%rbp), %rdi       # 8-byte Reload
	movl	(%rdi,%rcx,4), %esi
	movb	%bl, -16(%rax)
	orl	$2097152, %esi          # imm = 0x200000
	movl	%esi, (%rdi,%rcx,4)
.LBB2_106:                              # %for.cond443
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#107:                               # %cont_BB568
                                        #   in Loop: Header=BB2_106 Depth=2
	incl	%edx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	cmpl	$255, %edx
	jle	.LBB2_108
# BB#109:                               # %for.end454
                                        #   in Loop: Header=BB2_54 Depth=1
	movb	-3457(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	$0, -16(%rax)
	movq	-3456(%rbp), %rax       # 8-byte Reload
	movb	$1, -1328(%rbp,%rax)
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#110:                               # %cont_BB581
                                        #   in Loop: Header=BB2_54 Depth=1
	cmpl	$254, -3488(%rbp)       # 4-byte Folded Reload
	jg	.LBB2_125
# BB#111:                               # %if.then459
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-3386(%rbp), %bl        # 1-byte Reload
	movb	%bl, -16(%rax)
	movq	-3384(%rbp), %rsi       # 8-byte Reload
	movl	(%rsi,%r14,4), %r8d
	movl	$-2097153, %edi         # imm = 0xFFFFFFFFFFDFFFFF
	andl	%edi, %r8d
	movb	-16(%rax), %r14b
	xorl	%r10d, %r10d
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	(%rsi,%r12,4), %r11d
	andl	%edi, %r11d
	orb	-3473(%rbp), %r14b      # 1-byte Folded Reload
	movl	%r11d, %r9d
	subl	%r8d, %r9d
	jmp	.LBB2_112
	.align	16, 0x90
.LBB2_114:                              # %while.body474
                                        #   in Loop: Header=BB2_112 Depth=2
	incl	%r10d
.LBB2_112:                              # %while.cond470
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%r10b, %cl
	movl	%r9d, %edx
	sarl	%cl, %edx
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#113:                               # %cont_BB600
                                        #   in Loop: Header=BB2_112 Depth=2
	cmpl	$65535, %edx            # imm = 0xFFFF
	jge	.LBB2_114
# BB#115:                               # %while.end476
                                        #   in Loop: Header=BB2_54 Depth=1
	negl	%r8d
	decl	%r11d
	jmp	.LBB2_116
	.align	16, 0x90
.LBB2_121:                              # %for.inc496
                                        #   in Loop: Header=BB2_116 Depth=2
	decl	%r11d
	xorb	%r14b, %r14b
.LBB2_116:                              # %for.cond478
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#117:                               # %cont_BB606
                                        #   in Loop: Header=BB2_116 Depth=2
	leal	(%r8,%r11), %edx
	testl	%edx, %edx
	js	.LBB2_122
# BB#118:                               # %for.body481
                                        #   in Loop: Header=BB2_116 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	-3387(%rbp), %bl        # 1-byte Reload
	movb	%bl, -16(%rcx)
	movb	%r10b, %cl
	sarl	%cl, %edx
	movslq	%r11d, %rcx
	movq	-3400(%rbp), %rsi       # 8-byte Reload
	movslq	(%rsi,%rcx,4), %rcx
	movb	%r14b, %bl
	andb	$1, %bl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	testb	%r13b, %r13b
	movb	-3426(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rsi)
	movb	%bl, -16(%rsi)
	movq	-3440(%rbp), %rsi       # 8-byte Reload
	movw	%dx, (%rsi,%rcx,2)
	jne	.LBB2_130
# BB#119:                               # %cont_BB618
                                        #   in Loop: Header=BB2_116 Depth=2
	cmpl	$33, %ecx
	jg	.LBB2_121
# BB#120:                               # %if.then491
                                        #   in Loop: Header=BB2_116 Depth=2
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movb	-3426(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rbx)
	andb	$1, %r14b
	movb	%r14b, -16(%rbx)
	addl	-3412(%rbp), %ecx       # 4-byte Folded Reload
	movslq	%ecx, %rax
	movq	-3440(%rbp), %rcx       # 8-byte Reload
	movw	%dx, (%rcx,%rax,2)
	jmp	.LBB2_121
.LBB2_122:                              # %for.end498
                                        #   in Loop: Header=BB2_54 Depth=1
	decl	%r9d
	movb	%r10b, %cl
	sarl	%cl, %r9d
	testb	%r13b, %r13b
	jne	.LBB2_130
# BB#123:                               # %cont_BB627
                                        #   in Loop: Header=BB2_54 Depth=1
	cmpl	$65536, %r9d            # imm = 0x10000
	jl	.LBB2_125
# BB#124:                               # %if.then503
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	$1002, %edi             # imm = 0x3EA
	callq	BZ2_bz__AssertH__fail
	jmp	.LBB2_125
.LBB2_126:                              # %for.end508
	xorb	%al, %al
	testb	%al, %al
	je	.LBB2_127
	.align	16, 0x90
.LBB2_130:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str56, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB2_130
.LBB2_127:                              # %cont_BB631
	cmpl	$4, -3480(%rbp)         # 4-byte Folded Reload
	jl	.LBB2_129
# BB#128:                               # %if.then511
	movl	-3412(%rbp), %edx       # 4-byte Reload
	movl	%edx, %r8d
	movl	-3448(%rbp), %ecx       # 4-byte Reload
	subl	%ecx, %r8d
	movq	stderr(%rip), %rdi
	movl	$.L.str5, %esi
	xorb	%al, %al
	callq	fprintf
.LBB2_129:                              # %if.end514
	movb	$0, return_taint4(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp35:
	.size	mainSort, .Ltmp35-mainSort
	.cfi_endproc

	.align	16, 0x90
	.type	mainQSort3,@function
mainQSort3:                             # @mainQSort3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1400, %rsp             # imm = 0x578
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
	movl	%ecx, -1412(%rbp)       # 4-byte Spill
	movq	%rdx, -1424(%rbp)       # 8-byte Spill
	movq	%rsi, -1304(%rbp)       # 8-byte Spill
	movq	%rdi, -1344(%rbp)       # 8-byte Spill
	movb	param_taint32(%rip), %al
	movb	%al, -1395(%rbp)        # 1-byte Spill
	movb	param_taint33(%rip), %al
	movb	%al, -1396(%rbp)        # 1-byte Spill
	movb	param_taint34(%rip), %bl
	movb	param_taint35(%rip), %al
	movb	param_taint39(%rip), %cl
	movb	param_taint38(%rip), %sil
	movb	param_taint37(%rip), %dil
	movb	param_taint36(%rip), %dl
	movb	$0, -1285(%rbp)
	movb	%dl, -1285(%rbp)
	movl	%r8d, -448(%rbp)
	movb	$0, -1286(%rbp)
	movb	%dil, -1286(%rbp)
	movl	$1, %r14d
	xorb	%r13b, %r13b
	movl	%r9d, -848(%rbp)
	movl	16(%rbp), %edx
	movb	$0, -1287(%rbp)
	movb	%sil, -1287(%rbp)
	movl	%edx, -1248(%rbp)
	andb	$1, %bl
	movb	%bl, -1425(%rbp)        # 1-byte Spill
	andb	$1, %al
	movb	%al, -1426(%rbp)        # 1-byte Spill
	andb	$1, %cl
	movb	%cl, -1427(%rbp)        # 1-byte Spill
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_63:                               # %if.end271
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1260(%rbp), %edx
	movq	-1384(%rbp), %r10       # 8-byte Reload
	leal	3(%r10), %r14d
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	-1394(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rdi)
	movb	%r15b, -16(%rdi)
	movl	%edx, -448(%rbp,%r10,4)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1272(%rbp), %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	-1369(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movl	%edx, -848(%rbp,%r10,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1284(%rbp), %edx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	leal	2(%r10), %ecx
	leal	1(%r10), %esi
	movslq	%esi, %rdi
	movslq	%ecx, %r11
	movb	-1393(%rbp), %r9b       # 1-byte Reload
	movb	%r9b, -16(%rbx)
	movb	%r8b, -16(%rbx)
	movl	%edx, -1248(%rbp,%r10,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1256(%rbp), %edx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%al, %sil
	movb	%sil, -16(%rbx)
	movb	%r15b, -16(%rbx)
	movl	%edx, -448(%rbp,%rdi,4)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1268(%rbp), %edx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	-1369(%rbp), %al        # 1-byte Reload
	movb	%al, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movl	%edx, -848(%rbp,%rdi,4)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1280(%rbp), %edx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r9b, -16(%rbx)
	movb	%r8b, -16(%rbx)
	movl	%edx, -1248(%rbp,%rdi,4)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1252(%rbp), %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%sil, -16(%rdi)
	movb	%r15b, -16(%rdi)
	movl	%edx, -448(%rbp,%r11,4)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1264(%rbp), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%al, -16(%rsi)
	movb	%r12b, -16(%rsi)
	movl	%edx, -848(%rbp,%r11,4)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movl	-1276(%rbp), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r9b, -16(%rdx)
	movb	%r8b, -16(%rdx)
	movl	%eax, -1248(%rbp,%r11,4)
	.align	16, 0x90
.LBB3_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
                                        #       Child Loop BB3_25 Depth 3
                                        #         Child Loop BB3_26 Depth 4
                                        #       Child Loop BB3_15 Depth 3
                                        #         Child Loop BB3_16 Depth 4
                                        #     Child Loop BB3_51 Depth 2
                                        #     Child Loop BB3_44 Depth 2
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB3_1 Depth=1
	testl	%r14d, %r14d
	jle	.LBB3_12
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#4:                                 # %cont_BB21
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$98, %r14d
	jl	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1001, %edi             # imm = 0x3E9
	callq	BZ2_bz__AssertH__fail
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	andb	$1, %cl
	movb	%cl, -1394(%rbp)        # 1-byte Spill
	movb	%cl, -16(%rax)
	decl	%r14d
	movslq	%r14d, %rsi
	movq	%rsi, -1384(%rbp)       # 8-byte Spill
	movl	-448(%rbp,%rsi,4), %r8d
	xorb	%bl, %bl
	andb	$1, %bl
	movb	%bl, -1369(%rbp)        # 1-byte Spill
	xorb	%dl, %dl
	andb	$1, %dl
	movb	%dl, -1393(%rbp)        # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	-848(%rbp,%rsi,4), %r9d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r13b, %r13b
	movb	%dl, -16(%rax)
	jne	.LBB3_64
# BB#7:                                 # %cont_BB36
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	movq	-1384(%rbp), %rdx       # 8-byte Reload
	movl	-1248(%rbp,%rdx,4), %edx
	movb	-16(%rax), %al
	movb	%al, -1385(%rbp)        # 1-byte Spill
	cmpl	$20, %ecx
	jl	.LBB3_10
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_1 Depth=1
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#9:                                 # %cont_BB39
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$15, %edx
	jl	.LBB3_13
.LBB3_10:                               # %if.then14
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	-1395(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, param_taint(%rip)
	movb	-1396(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, param_taint9(%rip)
	movb	-1425(%rbp), %al        # 1-byte Reload
	movb	%al, param_taint10(%rip)
	movb	-1426(%rbp), %al        # 1-byte Reload
	movb	%al, param_taint11(%rip)
	xorb	%al, %al
	andb	$1, %al
	movb	%al, param_taint12(%rip)
	movb	-1385(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	xorb	%cl, %cl
	andb	$1, %cl
	movb	%cl, param_taint13(%rip)
	movb	%al, param_taint14(%rip)
	movb	-1427(%rbp), %al        # 1-byte Reload
	movb	%al, param_taint15(%rip)
	subq	$16, %rsp
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movl	%edx, (%rsp)
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	-1304(%rbp), %rsi       # 8-byte Reload
	movq	-1424(%rbp), %rdx       # 8-byte Reload
	movl	-1412(%rbp), %ecx       # 4-byte Reload
                                        # kill: R8D<def> R8D<kill> R8<kill>
	callq	mainSimpleSort
	addq	$16, %rsp
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#11:                                # %cont_BB43
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.LBB3_1
	jmp	.LBB3_12
.LBB3_13:                               # %if.end18
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%r8, -1368(%rbp)        # 8-byte Spill
	movslq	%r8d, %rsi
	movq	%rsi, -1408(%rbp)       # 8-byte Spill
	movl	%r9d, %r14d
	movl	%r14d, -1392(%rbp)      # 4-byte Spill
	movslq	%r14d, %rax
	movq	%rsp, %rcx
	movl	%edx, %r9d
	movl	%r9d, -1292(%rbp)       # 4-byte Spill
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-1395(%rbp), %r12b      # 1-byte Reload
	andb	$1, %r12b
	movb	%r12b, -16(%rcx)
	movl	%eax, %ecx
	addl	%esi, %ecx
	sarl	%ecx
	movq	-1344(%rbp), %r8        # 8-byte Reload
	movl	(%r8,%rsi,4), %edx
	movb	-1396(%rbp), %r15b      # 1-byte Reload
	andb	$1, %r15b
	movb	%r15b, -1353(%rbp)      # 1-byte Spill
	addl	%r9d, %edx
	movq	%rsp, %rsi
	movslq	%ecx, %rcx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r15b, -16(%rsi)
	movq	-1304(%rbp), %rbx       # 8-byte Reload
	movzbl	(%rbx,%rdx), %edi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	(%r8,%rax,4), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rdx)
	addl	%r9d, %eax
	movzbl	(%rbx,%rax), %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%r8,%rcx,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	addl	%r9d, %eax
	movzbl	(%rbx,%rax), %edx
	movb	%r15b, param_taint16(%rip)
	movb	%r15b, param_taint17(%rip)
	movb	%r15b, param_taint18(%rip)
	callq	mmed3
	leal	1(%r14), %ecx
	movl	%ecx, -1360(%rbp)       # 4-byte Spill
	movzbl	%al, %eax
	movl	%eax, -1308(%rbp)       # 4-byte Spill
	movb	$0, -1313(%rbp)         # 1-byte Folded Spill
	movl	%r14d, -1336(%rbp)      # 4-byte Spill
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	movl	%ecx, %eax
	movl	%r14d, %r9d
	xorb	%r10b, %r10b
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	movl	%ecx, -1312(%rbp)       # 4-byte Spill
	jmp	.LBB3_14
	.align	16, 0x90
.LBB3_36:                               # %if.end105
                                        #   in Loop: Header=BB3_14 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	leal	-1(%rbx,%r8), %r9d
	movl	(%rsi), %eax
	movl	-1312(%rbp), %ecx       # 4-byte Reload
	leal	1(%rcx,%rdi), %ecx
	movl	%ecx, -1312(%rbp)       # 4-byte Spill
	movb	$0, -1313(%rbp)         # 1-byte Folded Spill
	movslq	%ebx, %rcx
	movq	-1344(%rbp), %rdx       # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movl	(%rcx,%r8,4), %edi
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movl	%edi, (%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	movl	%eax, (%rcx,%r8,4)
	xorb	%r10b, %r10b
	movl	-1332(%rbp), %eax       # 4-byte Reload
.LBB3_14:                               # %while.body35
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_25 Depth 3
                                        #         Child Loop BB3_26 Depth 4
                                        #       Child Loop BB3_15 Depth 3
                                        #         Child Loop BB3_16 Depth 4
	movb	%r15b, %r14b
	movl	%eax, -1332(%rbp)       # 4-byte Spill
	negl	%eax
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	movb	%r10b, %r11b
	movq	-1344(%rbp), %r8        # 8-byte Reload
	movl	-1312(%rbp), %edx       # 4-byte Reload
	jmp	.LBB3_15
	.align	16, 0x90
.LBB3_20:                               # %if.then51
                                        #   in Loop: Header=BB3_15 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%rsi), %r11d
	movl	-1312(%rbp), %edx       # 4-byte Reload
	leal	1(%rdx,%rdi), %edx
	decl	-1348(%rbp)             # 4-byte Folded Spill
	xorb	%r10b, %r10b
	movl	-1332(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rdi
	incl	%eax
	movl	%eax, -1332(%rbp)       # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%r8,%rdi,4), %eax
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movl	%eax, (%rsi)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, -16(%rax)
	movl	%r11d, (%r8,%rdi,4)
	xorb	%r11b, %r11b
.LBB3_15:                               # %while.body37.outer
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_16 Depth 4
	movl	%edx, -1312(%rbp)       # 4-byte Spill
	movslq	%edx, %rax
	leaq	(%r8,%rax,4), %rsi
	movl	%edx, %eax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	xorl	%edi, %edi
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_23:                               # %if.end66
                                        #   in Loop: Header=BB3_16 Depth=4
	incq	%rdi
	addq	$4, %rsi
	xorb	%r10b, %r10b
	xorb	%r11b, %r11b
.LBB3_16:                               # %while.body37
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        #       Parent Loop BB3_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#17:                                # %cont_BB83
                                        #   in Loop: Header=BB3_16 Depth=4
	movl	-1312(%rbp), %eax       # 4-byte Reload
	leal	(%rax,%rdi), %eax
	cmpl	%r9d, %eax
	jg	.LBB3_24
# BB#18:                                # %if.end41
                                        #   in Loop: Header=BB3_16 Depth=4
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%rsi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r14b, -16(%rcx)
	addl	-1292(%rbp), %eax       # 4-byte Folded Reload
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#19:                                # %cont_BB97
                                        #   in Loop: Header=BB3_16 Depth=4
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	subl	-1308(%rbp), %eax       # 4-byte Folded Reload
	testl	%eax, %eax
	je	.LBB3_20
# BB#21:                                # %if.end62
                                        #   in Loop: Header=BB3_16 Depth=4
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#22:                                # %cont_BB114
                                        #   in Loop: Header=BB3_16 Depth=4
	testl	%eax, %eax
	jle	.LBB3_23
.LBB3_24:                               # %while.end
                                        #   in Loop: Header=BB3_14 Depth=2
	movl	-1360(%rbp), %eax       # 4-byte Reload
	subl	-1336(%rbp), %eax       # 4-byte Folded Reload
	movl	%eax, -1352(%rbp)       # 4-byte Spill
	addq	%rdi, -1328(%rbp)       # 8-byte Folded Spill
	movb	-1313(%rbp), %cl        # 1-byte Reload
	movq	%r8, %r13
	movl	%r9d, %r15d
	jmp	.LBB3_25
	.align	16, 0x90
.LBB3_30:                               # %if.then83
                                        #   in Loop: Header=BB3_25 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	%ebx, %rax
	movq	-1344(%rbp), %r13       # 8-byte Reload
	leaq	(%r13,%rax,4), %rdx
	movl	(%rdx,%r8,4), %r14d
	leal	-1(%rax,%r8), %r15d
	incl	-1352(%rbp)             # 4-byte Folded Spill
	movb	$0, -1313(%rbp)         # 1-byte Folded Spill
	movl	-1336(%rbp), %ecx       # 4-byte Reload
	movslq	%ecx, %rax
	decl	%ecx
	movl	%ecx, -1336(%rbp)       # 4-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rcx)
	movl	(%r13,%rax,4), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %r9
	movq	%r9, %rsp
	movb	%r12b, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movl	%ecx, (%rdx,%r8,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movl	%r14d, (%r13,%rax,4)
	xorb	%cl, %cl
.LBB3_25:                               # %while.body69.outer
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_26 Depth 4
	movslq	%r15d, %rax
	movl	%r15d, %ebx
	leaq	(%r13,%rax,4), %r14
	xorl	%r8d, %r8d
	xorb	%r13b, %r13b
	movb	-1353(%rbp), %r15b      # 1-byte Reload
	jmp	.LBB3_26
	.align	16, 0x90
.LBB3_33:                               # %if.end99
                                        #   in Loop: Header=BB3_26 Depth=4
	decq	%r8
	movb	$0, -1313(%rbp)         # 1-byte Folded Spill
	xorb	%cl, %cl
.LBB3_26:                               # %while.body69
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        #       Parent Loop BB3_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	%cl, %r9b
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#27:                                # %cont_BB120
                                        #   in Loop: Header=BB3_26 Depth=4
	leal	(%rbx,%r8), %eax
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB3_34
# BB#28:                                # %if.end73
                                        #   in Loop: Header=BB3_26 Depth=4
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%r14,%r8,4), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	addl	-1292(%rbp), %eax       # 4-byte Folded Reload
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#29:                                # %cont_BB134
                                        #   in Loop: Header=BB3_26 Depth=4
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	subl	-1308(%rbp), %eax       # 4-byte Folded Reload
	testl	%eax, %eax
	je	.LBB3_30
# BB#31:                                # %if.end95
                                        #   in Loop: Header=BB3_26 Depth=4
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#32:                                # %cont_BB151
                                        #   in Loop: Header=BB3_26 Depth=4
	testl	%eax, %eax
	jns	.LBB3_33
.LBB3_34:                               # %while.end101
                                        #   in Loop: Header=BB3_14 Depth=2
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#35:                                # %cont_BB155
                                        #   in Loop: Header=BB3_14 Depth=2
	leal	(%rbx,%r8), %eax
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB3_36
# BB#37:                                # %while.end117
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%ebx, -1328(%rbp)       # 4-byte Spill
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#38:                                # %cont_BB172
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1332(%rbp), %eax       # 4-byte Reload
	cmpl	%eax, -1336(%rbp)       # 4-byte Folded Reload
	jge	.LBB3_40
# BB#39:                                # %if.then120
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-1394(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	xorb	%cl, %cl
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movq	-1384(%rbp), %rdx       # 8-byte Reload
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movl	%eax, -448(%rbp,%rdx,4)
	leal	1(%rdx), %r14d
	xorb	%bl, %bl
	andb	$1, %bl
	movl	-1292(%rbp), %esi       # 4-byte Reload
	incl	%esi
	movb	-1385(%rbp), %dil       # 1-byte Reload
	andb	$1, %dil
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-1369(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	%bl, -16(%rax)
	movl	-1392(%rbp), %eax       # 4-byte Reload
	movl	%eax, -848(%rbp,%rdx,4)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-1393(%rbp), %cl        # 1-byte Reload
	movb	%cl, -16(%rax)
	movb	%dil, -16(%rax)
	movl	%esi, -1248(%rbp,%rdx,4)
	jmp	.LBB3_1
.LBB3_40:                               # %if.end129
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%eax, %ecx
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#41:                                # %cont_BB185
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	-1348(%rbp), %ecx       # 4-byte Reload
	movl	-1312(%rbp), %r15d      # 4-byte Reload
	addl	%r15d, %ecx
	movl	%edi, %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jl	.LBB3_43
# BB#42:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	leal	(%rcx,%rdi), %edx
.LBB3_43:                               # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%ecx, -1348(%rbp)       # 4-byte Spill
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	movq	-1408(%rbp), %rax       # 8-byte Reload
	leaq	(%rcx,%rax,4), %rbx
	subl	%edx, %r15d
	movl	%edx, %r14d
	movl	%edi, %eax
	addl	%r15d, %eax
	movslq	%eax, %rax
	leaq	(%rcx,%rax,4), %r15
	jmp	.LBB3_44
	.align	16, 0x90
.LBB3_46:                               # %while.body140
                                        #   in Loop: Header=BB3_44 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%rbx), %eax
	movl	%eax, -1308(%rbp)       # 4-byte Spill
	decl	%r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movl	%eax, (%rbx)
	leaq	4(%rbx), %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, -16(%rax)
	movl	-1308(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%r15)
	leaq	4(%r15), %r15
.LBB3_44:                               # %while.cond137
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#45:                                # %cont_BB195
                                        #   in Loop: Header=BB3_44 Depth=2
	testl	%r14d, %r14d
	jg	.LBB3_46
# BB#47:                                # %while.end153
                                        #   in Loop: Header=BB3_1 Depth=1
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#48:                                # %cont_BB215
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1392(%rbp), %r14d      # 4-byte Reload
	movl	-1336(%rbp), %ecx       # 4-byte Reload
	subl	%ecx, %r14d
	subl	-1328(%rbp), %ecx       # 4-byte Folded Reload
	movl	%ecx, %eax
	subl	%r8d, %eax
	cmpl	%eax, %r14d
	jl	.LBB3_50
# BB#49:                                # %cond.false160
                                        #   in Loop: Header=BB3_1 Depth=1
	subl	%r8d, %ecx
	movl	%ecx, %r14d
.LBB3_50:                               # %cond.end162
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1360(%rbp), %eax       # 4-byte Reload
	subl	%r14d, %eax
	movslq	%eax, %rax
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	leaq	(%rcx,%rax,4), %rbx
	jmp	.LBB3_51
	.align	16, 0x90
.LBB3_53:                               # %while.body172
                                        #   in Loop: Header=BB3_51 Depth=2
	movb	%r12b, -16(%rax)
	movl	(%rsi), %r15d
	decl	%r14d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	(%rbx), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movl	%eax, (%rsi)
	leaq	4(%rsi), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, -16(%rax)
	movl	%r15d, (%rbx)
	leaq	4(%rbx), %rbx
.LBB3_51:                               # %while.cond169
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#52:                                # %cont_BB226
                                        #   in Loop: Header=BB3_51 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testl	%r14d, %r14d
	jg	.LBB3_53
# BB#54:                                # %while.end185
                                        #   in Loop: Header=BB3_1 Depth=1
	xorb	%r15b, %r15b
	andb	$1, %r15b
	movb	%r15b, -16(%rax)
	xorb	%cl, %cl
	orb	%cl, %r11b
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movl	-1328(%rbp), %r14d      # 4-byte Reload
	addl	-1352(%rbp), %r14d      # 4-byte Folded Reload
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movl	-1348(%rbp), %ecx       # 4-byte Reload
	leal	(%rax,%rcx), %esi
	orb	%r10b, %r11b
	addl	%eax, %ecx
	movl	%eax, -1260(%rbp)
	movq	%rsp, %rdx
	leal	-1(%rdi,%rcx), %r10d
	andb	$1, %r11b
	xorb	%r12b, %r12b
	andb	$1, %r12b
	movb	-1313(%rbp), %al        # 1-byte Reload
	orb	%r9b, %al
	addl	%edi, %esi
	movl	%esi, %r9d
	leal	(%r14,%r8), %edi
	leal	-1(%r8,%r14), %ecx
	movl	%ecx, -1308(%rbp)       # 4-byte Spill
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	-1385(%rbp), %r14b      # 1-byte Reload
	andb	$1, %r14b
	xorb	%r8b, %r8b
	andb	$1, %r8b
	movb	%r12b, -16(%rdx)
	movb	%r11b, -16(%rdx)
	movl	%r10d, -1272(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rdx)
	movb	%r14b, -16(%rdx)
	movl	-1292(%rbp), %esi       # 4-byte Reload
	movl	%esi, -1284(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	xorb	%bl, %bl
	orb	%bl, %al
	andb	$1, %al
	movb	%r15b, -16(%rdx)
	movb	%al, -16(%rdx)
	movl	%edi, -1256(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	andb	$1, %bl
	movb	%r12b, -16(%rdx)
	movb	%bl, -16(%rdx)
	movl	-1392(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, -1268(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rdx)
	movb	%r14b, -16(%rdx)
	movl	%esi, -1280(%rbp)
	incl	%esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdx)
	movb	%r11b, -16(%rdx)
	movl	%r9d, -1252(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdx)
	movb	%al, -16(%rdx)
	movl	-1308(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1264(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rdx)
	movb	%r14b, -16(%rdx)
	movl	%esi, -1276(%rbp)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdx)
	movl	-1272(%rbp), %edx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdi)
	movl	-1260(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rbx)
	movl	-1268(%rbp), %ebx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#55:                                # %cont_BB276
                                        #   in Loop: Header=BB3_1 Depth=1
	subl	%edi, %edx
	subl	-1256(%rbp), %ebx
	cmpl	%ebx, %edx
	jge	.LBB3_57
# BB#56:                                # %if.then212
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1260(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1256(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rbx)
	movb	%r15b, -16(%rbx)
	movl	%edi, -1260(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdi)
	movb	%r15b, -16(%rdi)
	movl	%edx, -1256(%rbp)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1272(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1268(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movl	%edi, -1272(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movl	%edx, -1268(%rbp)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1284(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1280(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rbx)
	movb	%r8b, -16(%rbx)
	movl	%edi, -1284(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rdi)
	movb	%r8b, -16(%rdi)
	movl	%edx, -1280(%rbp)
.LBB3_57:                               # %if.end225
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1268(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1256(%rbp), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1264(%rbp), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#58:                                # %cont_BB317
                                        #   in Loop: Header=BB3_1 Depth=1
	subl	%edi, %edx
	subl	-1252(%rbp), %ebx
	cmpl	%ebx, %edx
	jge	.LBB3_60
# BB#59:                                # %if.then234
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1256(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1252(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rbx)
	movb	%r15b, -16(%rbx)
	movl	%edi, -1256(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdi)
	movb	%r15b, -16(%rdi)
	movl	%edx, -1252(%rbp)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1268(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1264(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movl	%edi, -1268(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movl	%edx, -1264(%rbp)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1280(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1276(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rbx)
	movb	%r8b, -16(%rbx)
	movl	%edi, -1280(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rdi)
	movb	%r8b, -16(%rdi)
	movl	%edx, -1276(%rbp)
.LBB3_60:                               # %if.end248
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1272(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1260(%rbp), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1268(%rbp), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	testb	%r13b, %r13b
	jne	.LBB3_64
# BB#61:                                # %cont_BB358
                                        #   in Loop: Header=BB3_1 Depth=1
	subl	%edi, %edx
	subl	-1256(%rbp), %ebx
	cmpl	%ebx, %edx
	jge	.LBB3_63
# BB#62:                                # %if.then257
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1260(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r15b, -16(%rcx)
	movl	-1256(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rbx)
	movb	%r15b, -16(%rbx)
	movl	%edi, -1260(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r15b, -16(%rdi)
	movb	%r15b, -16(%rdi)
	movl	%edx, -1256(%rbp)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1272(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	-1268(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movl	%edi, -1272(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movl	%edx, -1268(%rbp)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1284(%rbp), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r8b, -16(%rcx)
	movl	-1280(%rbp), %edi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rbx)
	movb	%r8b, -16(%rbx)
	movl	%edi, -1284(%rbp)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rdi)
	movb	%r8b, -16(%rdi)
	movl	%edx, -1280(%rbp)
	jmp	.LBB3_63
	.align	16, 0x90
.LBB3_64:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str57, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB3_64
.LBB3_12:                               # %while.end302
	movb	$0, return_taint5(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp47:
	.size	mainQSort3, .Ltmp47-mainQSort3
	.cfi_endproc

	.align	16, 0x90
	.type	mainSimpleSort,@function
mainSimpleSort:                         # @mainSimpleSort
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
	subq	$88, %rsp
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
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB4_42
# BB#1:                                 # %cont_BB
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	-44(%rbp), %eax         # 4-byte Folded Reload
	incl	%eax
	cmpl	$2, %eax
	jl	.LBB4_41
# BB#2:
	movb	param_taint(%rip), %cl
	movb	%cl, -98(%rbp)          # 1-byte Spill
	movb	param_taint9(%rip), %cl
	movb	%cl, -99(%rbp)          # 1-byte Spill
	movb	param_taint10(%rip), %cl
	movb	%cl, -100(%rbp)         # 1-byte Spill
	movb	param_taint11(%rip), %cl
	movb	%cl, -101(%rbp)         # 1-byte Spill
	movb	param_taint14(%rip), %cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
	movb	param_taint15(%rip), %cl
	movb	%cl, -102(%rbp)         # 1-byte Spill
	xorl	%ebx, %ebx
	xorb	%cl, %cl
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_5:                                # %while.body
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%rbx
.LBB4_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	$0, -16(%rdx)
	testb	%cl, %cl
	jne	.LBB4_42
# BB#4:                                 # %cont_BB12
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	incs(,%rbx,4), %edx
	cmpl	%eax, %edx
	jl	.LBB4_5
# BB#6:                                 # %while.end
	decl	%ebx
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	xorb	%r10b, %r10b
	movb	-98(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_40:                               # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	decl	%eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB4_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_21 Depth 3
                                        #       Child Loop BB4_13 Depth 3
                                        #       Child Loop BB4_31 Depth 3
	testb	%r10b, %r10b
	jne	.LBB4_42
# BB#8:                                 # %cont_BB18
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	testl	%eax, %eax
	js	.LBB4_41
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	%eax, %rax
	movl	incs(,%rax,4), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %eax         # 4-byte Reload
	leal	(%rax,%rcx), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_39:                               # %if.end95
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	incl	%eax
	addl	$3, -88(%rbp)           # 4-byte Folded Spill
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB4_10:                               # %while.body7
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_21 Depth 3
                                        #       Child Loop BB4_13 Depth 3
                                        #       Child Loop BB4_31 Depth 3
	testb	%r10b, %r10b
	jne	.LBB4_42
# BB#11:                                # %cont_BB27
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	-112(%rbp), %eax        # 4-byte Folded Reload
	jg	.LBB4_40
# BB#12:                                # %if.end10
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movslq	-84(%rbp), %rcx         # 4-byte Folded Reload
	movl	(%rdi,%rcx,4), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -96(%rbp)          # 1-byte Spill
	movl	-88(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB4_13
	.align	16, 0x90
.LBB4_26:                               # %if.end30
                                        #   in Loop: Header=BB4_13 Depth=3
	subl	%ebx, %r9d
.LBB4_13:                               # %while.cond13
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movslq	%r9d, %r15
	movq	%rdi, %r12
	movl	(%r12,%r15,4), %edi
	movb	-96(%rbp), %r11b        # 1-byte Reload
	movb	-73(%rbp), %cl          # 1-byte Reload
	orb	%cl, %r11b
	movb	-98(%rbp), %r13b        # 1-byte Reload
	orb	%cl, %r13b
	andb	$1, %r13b
	movb	%r13b, param_taint40(%rip)
	andb	$1, %r11b
	movl	%r9d, %ebx
	movb	-100(%rbp), %r9b        # 1-byte Reload
	andb	$1, %r9b
	movb	%r9b, -74(%rbp)         # 1-byte Spill
	movb	-99(%rbp), %dl          # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -75(%rbp)          # 1-byte Spill
	movl	16(%rbp), %ecx
	movl	%ecx, %r10d
	movl	-92(%rbp), %eax         # 4-byte Reload
	leal	(%rax,%r10), %esi
	movb	-102(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -76(%rbp)          # 1-byte Spill
	movb	-101(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -77(%rbp)          # 1-byte Spill
	movb	%r11b, param_taint41(%rip)
	movb	%dl, param_taint42(%rip)
	movb	%r9b, param_taint43(%rip)
	movb	%al, param_taint44(%rip)
	movb	%cl, param_taint45(%rip)
	addl	%r10d, %edi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movb	%r8b, %r14b
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movq	24(%rbp), %r9
	callq	mainGtU
	movl	%ebx, %r9d
	movb	%r14b, %r8b
	movq	%r12, %rdi
	xorb	%r10b, %r10b
	testb	%r10b, %r10b
	movl	-48(%rbp), %ebx         # 4-byte Reload
	jne	.LBB4_42
# BB#14:                                # %cont_BB42
                                        #   in Loop: Header=BB4_13 Depth=3
	leal	(%rbx,%r9), %ecx
	testb	%al, %al
	je	.LBB4_18
# BB#15:                                # %while.body19
                                        #   in Loop: Header=BB4_13 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rax)
	movl	(%rdi,%r15,4), %eax
	movslq	%ecx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r10b, %r10b
	movb	%r8b, -16(%rdx)
	movb	%r8b, -16(%rdx)
	movl	%eax, (%rdi,%rcx,4)
	jne	.LBB4_42
# BB#16:                                # %cont_BB55
                                        #   in Loop: Header=BB4_13 Depth=3
	movl	-44(%rbp), %eax         # 4-byte Reload
	leal	-1(%rax,%rbx), %eax
	cmpl	%eax, %r9d
	jg	.LBB4_26
# BB#17:                                #   in Loop: Header=BB4_10 Depth=2
	movl	%r9d, %ecx
.LBB4_18:                               # %while.end31
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rax)
	movb	-96(%rbp), %dl          # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rax)
	movslq	%ecx, %rax
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rdi,%rax,4)
	testb	%r10b, %r10b
	jne	.LBB4_42
# BB#19:                                # %cont_BB62
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-84(%rbp), %eax         # 4-byte Reload
	leal	1(%rax), %edx
	cmpl	-112(%rbp), %edx        # 4-byte Folded Reload
	jg	.LBB4_40
# BB#20:                                # %if.end37
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movslq	%edx, %rcx
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	(%rdi,%rcx,4), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -97(%rbp)          # 1-byte Spill
	movl	$1, %r9d
	jmp	.LBB4_21
	.align	16, 0x90
.LBB4_25:                               # %if.end59
                                        #   in Loop: Header=BB4_21 Depth=3
	subl	%ebx, %r9d
.LBB4_21:                               # %while.cond40
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movl	-88(%rbp), %eax         # 4-byte Reload
	leal	(%rax,%r9), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movslq	%eax, %r12
	movq	%rdi, %rbx
	movl	(%rbx,%r12,4), %edi
	movb	-97(%rbp), %al          # 1-byte Reload
	orb	-73(%rbp), %al          # 1-byte Folded Reload
	movb	%r13b, param_taint40(%rip)
	andb	$1, %al
	movl	16(%rbp), %ecx
	movl	-96(%rbp), %edx         # 4-byte Reload
	leal	(%rdx,%rcx), %esi
	movb	%al, param_taint41(%rip)
	movb	-75(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint42(%rip)
	movb	-74(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint43(%rip)
	movb	-77(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint44(%rip)
	movb	-76(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint45(%rip)
	addl	%ecx, %edi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movb	%r8b, %r15b
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movb	%r13b, %r14b
	movl	%r9d, %r13d
	movq	24(%rbp), %r9
	callq	mainGtU
	movl	%r13d, %r9d
	movb	%r14b, %r13b
	movb	%r15b, %r8b
	movq	%rbx, %rdi
	xorb	%r10b, %r10b
	testb	%r10b, %r10b
	movl	-48(%rbp), %ebx         # 4-byte Reload
	jne	.LBB4_42
# BB#22:                                # %cont_BB78
                                        #   in Loop: Header=BB4_21 Depth=3
	movl	-84(%rbp), %ecx         # 4-byte Reload
	leal	(%rcx,%r9), %ecx
	testb	%al, %al
	je	.LBB4_27
# BB#23:                                # %while.body48
                                        #   in Loop: Header=BB4_21 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rax)
	movl	(%rdi,%r12,4), %eax
	movslq	%ecx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r10b, %r10b
	movb	%r8b, -16(%rdx)
	movb	%r8b, -16(%rdx)
	movl	%eax, (%rdi,%rcx,4)
	jne	.LBB4_42
# BB#24:                                # %cont_BB91
                                        #   in Loop: Header=BB4_21 Depth=3
	movl	-44(%rbp), %eax         # 4-byte Reload
	leal	-1(%rax,%rbx), %eax
	movl	-92(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB4_28
	jmp	.LBB4_25
.LBB4_27:                               # %while.end60.loopexit
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	%ecx, %edx
.LBB4_28:                               # %while.end60
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movb	-97(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movslq	%edx, %rax
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rdi,%rax,4)
	testb	%r10b, %r10b
	jne	.LBB4_42
# BB#29:                                # %cont_BB98
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-108(%rbp), %edx        # 4-byte Reload
	incl	%edx
	cmpl	-112(%rbp), %edx        # 4-byte Folded Reload
	jg	.LBB4_40
# BB#30:                                # %if.end66
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movslq	%edx, %rcx
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	(%rdi,%rcx,4), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -97(%rbp)          # 1-byte Spill
	movl	$2, %ebx
	jmp	.LBB4_31
	.align	16, 0x90
.LBB4_35:                               # %if.end88
                                        #   in Loop: Header=BB4_31 Depth=3
	subl	%r9d, %ebx
.LBB4_31:                               # %while.cond69
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movl	-88(%rbp), %eax         # 4-byte Reload
	leal	(%rax,%rbx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movslq	%eax, %r12
	movq	%rdi, %r14
	movl	(%r14,%r12,4), %edi
	movb	-97(%rbp), %al          # 1-byte Reload
	orb	-73(%rbp), %al          # 1-byte Folded Reload
	movb	%r13b, param_taint40(%rip)
	andb	$1, %al
	movl	16(%rbp), %ecx
	movl	-96(%rbp), %edx         # 4-byte Reload
	leal	(%rdx,%rcx), %esi
	movb	%al, param_taint41(%rip)
	movb	-75(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint42(%rip)
	movb	-74(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint43(%rip)
	movb	-77(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint44(%rip)
	movb	-76(%rbp), %al          # 1-byte Reload
	movb	%al, param_taint45(%rip)
	addl	%ecx, %edi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movb	%r8b, %r15b
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movq	24(%rbp), %r9
	callq	mainGtU
	movb	%r15b, %r8b
	movq	%r14, %rdi
	xorb	%r10b, %r10b
	testb	%r10b, %r10b
	movl	-48(%rbp), %r9d         # 4-byte Reload
	jne	.LBB4_42
# BB#32:                                # %cont_BB114
                                        #   in Loop: Header=BB4_31 Depth=3
	movl	-84(%rbp), %ecx         # 4-byte Reload
	leal	(%rcx,%rbx), %ecx
	testb	%al, %al
	je	.LBB4_36
# BB#33:                                # %while.body77
                                        #   in Loop: Header=BB4_31 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r8b, -16(%rax)
	movl	(%rdi,%r12,4), %eax
	movslq	%ecx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r10b, %r10b
	movb	%r8b, -16(%rdx)
	movb	%r8b, -16(%rdx)
	movl	%eax, (%rdi,%rcx,4)
	jne	.LBB4_42
# BB#34:                                # %cont_BB127
                                        #   in Loop: Header=BB4_31 Depth=3
	movl	-44(%rbp), %eax         # 4-byte Reload
	leal	-1(%rax,%r9), %eax
	movl	-92(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB4_37
	jmp	.LBB4_35
.LBB4_36:                               # %while.end89.loopexit
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	%ecx, %edx
.LBB4_37:                               # %while.end89
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r8b, -16(%rax)
	movb	-97(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movslq	%edx, %rax
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rdi,%rax,4)
	testb	%r10b, %r10b
	jne	.LBB4_42
# BB#38:                                # %cont_BB135
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.LBB4_39
.LBB4_41:                               # %for.end
	movb	$0, return_taint(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.align	16, 0x90
.LBB4_42:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str58, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB4_42
.Ltmp59:
	.size	mainSimpleSort, .Ltmp59-mainSimpleSort
	.cfi_endproc

	.align	16, 0x90
	.type	mmed3,@function
mmed3:                                  # @mmed3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 16
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB5_10
# BB#1:                                 # %cont_BB
	movb	param_taint16(%rip), %r10b
	movb	param_taint17(%rip), %r9b
	movb	param_taint18(%rip), %r8b
	cmpl	%esi, %edi
	jle	.LBB5_2
# BB#3:                                 # %if.then
	movb	%r10b, %al
	movb	%dil, %r11b
	jmp	.LBB5_4
.LBB5_2:
	movb	%r9b, %al
	movb	%sil, %r11b
	movb	%r10b, %r9b
	movb	%dil, %sil
.LBB5_4:                                # %if.end
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB5_10
# BB#5:                                 # %cont_BB9
	movzbl	%dl, %r10d
	movzbl	%r11b, %edi
	cmpl	%r10d, %edi
	jle	.LBB5_9
# BB#6:                                 # %if.then7
	xorb	%al, %al
	testb	%al, %al
	je	.LBB5_7
	.align	16, 0x90
.LBB5_10:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str59, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB5_10
.LBB5_7:                                # %cont_BB14
	movzbl	%sil, %eax
	cmpl	%r10d, %eax
	movb	%r8b, %al
	movb	%dl, %r11b
	jle	.LBB5_9
# BB#8:                                 # %if.then12
	movb	%r9b, %al
	movb	%sil, %r11b
.LBB5_9:                                # %if.end14
	andb	$1, %al
	movb	%al, return_taint1(%rip)
	movzbl	%r11b, %eax
	popq	%rdx
	ret
.Ltmp62:
	.size	mmed3, .Ltmp62-mmed3
	.cfi_endproc

	.align	16, 0x90
	.type	mainGtU,@function
mainGtU:                                # @mainGtU
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
	movq	%r9, -56(%rbp)          # 8-byte Spill
                                        # kill: ESI<def> ESI<kill> RSI<def>
                                        # kill: EDI<def> EDI<kill> RDI<def>
	movb	param_taint43(%rip), %r9b
	movb	param_taint42(%rip), %r14b
	movb	%r14b, -41(%rbp)
	movl	%edi, %eax
	movzbl	(%rdx,%rax), %r11d
	movb	%r14b, -42(%rbp)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB6_73
# BB#1:                                 # %cont_BB
	movl	%esi, %eax
	movzbl	(%rdx,%rax), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#4:                                 # %if.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#5:                                 # %cont_BB31
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#6:                                 # %if.end25
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#7:                                 # %cont_BB51
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#8:                                 # %if.end42
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#9:                                 # %cont_BB71
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#10:                                # %if.end59
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#11:                                # %cont_BB91
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#12:                                # %if.end76
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#13:                                # %cont_BB111
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#14:                                # %if.end93
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#15:                                # %cont_BB131
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#16:                                # %if.end110
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#17:                                # %cont_BB151
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#18:                                # %if.end127
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#19:                                # %cont_BB171
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#20:                                # %if.end144
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#21:                                # %cont_BB191
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#22:                                # %if.end161
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#23:                                # %cont_BB211
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#24:                                # %if.end178
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r11d
	xorb	%r10b, %r10b
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rbx)
	jne	.LBB6_73
# BB#25:                                # %cont_BB231
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r11d
	jne	.LBB6_2
# BB#26:                                # %if.end195
	leal	8(%r8), %r11d
	incl	%esi
	incl	%edi
	xorb	%r10b, %r10b
	.align	16, 0x90
.LBB6_27:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	movl	%edi, %r13d
	movzbl	(%rdx,%r13), %r15d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#28:                                # %cont_BB254
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %r12d
	movzbl	(%rdx,%r12), %eax
	cmpl	%eax, %r15d
	jne	.LBB6_29
# BB#30:                                # %if.end212
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r9b, %r15b
	andb	$1, %r15b
	movb	%r15b, -16(%rax)
	movzwl	(%rcx,%r13,2), %r13d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#31:                                # %cont_BB272
                                        #   in Loop: Header=BB6_27 Depth=1
	movzwl	(%rcx,%r12,2), %eax
	cmpl	%eax, %r13d
	jne	.LBB6_32
# BB#34:                                # %if.end227
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#35:                                # %cont_BB292
                                        #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_36
# BB#37:                                # %if.end244
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rax)
	movl	%edi, %eax
	movzwl	(%rcx,%rax,2), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#38:                                # %cont_BB310
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %eax
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_39
# BB#40:                                # %if.end259
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#41:                                # %cont_BB330
                                        #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_36
# BB#42:                                # %if.end276
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rax)
	movl	%edi, %eax
	movzwl	(%rcx,%rax,2), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#43:                                # %cont_BB348
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %eax
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_39
# BB#44:                                # %if.end291
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#45:                                # %cont_BB368
                                        #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_36
# BB#46:                                # %if.end308
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rax)
	movl	%edi, %eax
	movzwl	(%rcx,%rax,2), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#47:                                # %cont_BB386
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %eax
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_39
# BB#48:                                # %if.end323
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#49:                                # %cont_BB406
                                        #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_36
# BB#50:                                # %if.end340
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rax)
	movl	%edi, %eax
	movzwl	(%rcx,%rax,2), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#51:                                # %cont_BB424
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %eax
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_39
# BB#52:                                # %if.end355
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#53:                                # %cont_BB444
                                        #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_36
# BB#54:                                # %if.end372
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rax)
	movl	%edi, %eax
	movzwl	(%rcx,%rax,2), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#55:                                # %cont_BB462
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %eax
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_39
# BB#56:                                # %if.end387
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#57:                                # %cont_BB482
                                        #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_36
# BB#58:                                # %if.end404
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rax)
	movl	%edi, %eax
	movzwl	(%rcx,%rax,2), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#59:                                # %cont_BB500
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %eax
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_39
# BB#60:                                # %if.end419
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r14b, -16(%rax)
	incl	%esi
	incl	%edi
	movzbl	(%rdx,%rdi), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r14b, -16(%rax)
	jne	.LBB6_73
# BB#61:                                # %cont_BB520
                                        #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%rdx,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_36
# BB#62:                                # %if.end436
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rax)
	movl	%edi, %eax
	movzwl	(%rcx,%rax,2), %r12d
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	testb	%r10b, %r10b
	movb	%r15b, -16(%rax)
	jne	.LBB6_73
# BB#63:                                # %cont_BB538
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	%esi, %eax
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %r12d
	jne	.LBB6_39
# BB#64:                                # %if.end451
                                        #   in Loop: Header=BB6_27 Depth=1
	testb	%r10b, %r10b
	jne	.LBB6_73
# BB#65:                                # %cont_BB548
                                        #   in Loop: Header=BB6_27 Depth=1
	incl	%edi
	cmpl	%r8d, %edi
	jb	.LBB6_67
# BB#66:                                # %if.then456
                                        #   in Loop: Header=BB6_27 Depth=1
	subl	%r8d, %edi
.LBB6_67:                               # %if.end457
                                        #   in Loop: Header=BB6_27 Depth=1
	testb	%r10b, %r10b
	jne	.LBB6_73
# BB#68:                                # %cont_BB553
                                        #   in Loop: Header=BB6_27 Depth=1
	incl	%esi
	cmpl	%r8d, %esi
	jb	.LBB6_70
# BB#69:                                # %if.then460
                                        #   in Loop: Header=BB6_27 Depth=1
	subl	%r8d, %esi
.LBB6_70:                               # %if.end462
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	(%r12), %eax
	movq	%rsp, %r15
	leaq	-16(%r15), %rbx
	movq	%rbx, %rsp
	movb	$0, -16(%r15)
	addl	$-8, %r11d
	decl	%eax
	movl	%eax, (%r12)
	testb	%r10b, %r10b
	jne	.LBB6_73
# BB#71:                                # %cont_BB562
                                        #   in Loop: Header=BB6_27 Depth=1
	xorb	%al, %al
	testl	%r11d, %r11d
	movb	$0, %r15b
	jns	.LBB6_27
	jmp	.LBB6_72
	.align	16, 0x90
.LBB6_73:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str60, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB6_73
.LBB6_2:                                # %if.then
	orb	%r14b, %r14b
	cmpl	%eax, %r11d
	.align	16, 0x90
.LBB6_3:                                # %if.then
	setg	%r15b
	movb	%r14b, %al
	.align	16, 0x90
.LBB6_72:                               # %return
	andb	$1, %al
	movb	%al, return_taint6(%rip)
	movzbl	%r15b, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB6_29:                               # %if.then206
	orb	%r14b, %r14b
	cmpl	%eax, %r15d
	jmp	.LBB6_3
.LBB6_32:                               # %if.then221
	orb	%r9b, %r9b
	cmpl	%eax, %r13d
	jmp	.LBB6_33
.LBB6_36:                               # %if.then238
	orb	%r14b, %r14b
	cmpl	%eax, %r12d
	jmp	.LBB6_3
.LBB6_39:                               # %if.then253
	orb	%r9b, %r9b
	cmpl	%eax, %r12d
.LBB6_33:                               # %if.then221
	setg	%r15b
	movb	%r9b, %al
	jmp	.LBB6_72
.Ltmp74:
	.size	mainGtU, .Ltmp74-mainGtU
	.cfi_endproc

	.align	16, 0x90
	.type	fallbackQSort3,@function
fallbackQSort3:                         # @fallbackQSort3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$936, %rsp              # imm = 0x3A8
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movb	param_taint46(%rip), %al
	movb	%al, -851(%rbp)         # 1-byte Spill
	movb	param_taint47(%rip), %al
	movb	%al, -865(%rbp)         # 1-byte Spill
	movb	param_taint49(%rip), %al
	movb	param_taint48(%rip), %bl
	movb	$0, -849(%rbp)
	movb	%bl, -849(%rbp)
	movl	%edx, -448(%rbp)
	movb	$0, -850(%rbp)
	movb	%al, -850(%rbp)
	xorl	%eax, %eax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	movl	$1, %r8d
	movl	%ecx, -848(%rbp)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_63:                               # %if.else180
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	%r11b, -16(%rcx)
	andb	$1, %al
	movb	%al, -16(%rcx)
	movslq	%esi, %rcx
	leaq	-448(%rbp,%rcx,4), %rsi
	movq	-944(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -4(%rsi,%rdx,4)
	leal	1(%rcx,%rdx), %r8d
	xorb	%bl, %bl
	andb	$1, %bl
	movq	%rsp, %rdi
	leaq	-848(%rbp,%rcx,4), %r9
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	andb	$1, %cl
	andb	$1, %r10b
	movb	%r14b, -16(%rdi)
	movb	%bl, -16(%rdi)
	movl	-932(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%r9,%rdx,4)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r11b, -16(%rdi)
	movb	%cl, -16(%rdi)
	movl	%r15d, (%rsi,%rdx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r14b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	movl	%r13d, (%r9,%rdx,4)
	.align	16, 0x90
.LBB7_1:                                # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_57 Depth 2
                                        #     Child Loop BB7_50 Depth 2
                                        #     Child Loop BB7_2 Depth 2
                                        #       Child Loop BB7_20 Depth 3
                                        #         Child Loop BB7_31 Depth 4
                                        #           Child Loop BB7_32 Depth 5
                                        #         Child Loop BB7_21 Depth 4
                                        #           Child Loop BB7_22 Depth 5
                                        #       Child Loop BB7_3 Depth 3
	xorb	%dl, %dl
	jmp	.LBB7_2
	.align	16, 0x90
.LBB7_45:                               # %if.then106
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r8d
.LBB7_2:                                # %while.cond.outer
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_20 Depth 3
                                        #         Child Loop BB7_31 Depth 4
                                        #           Child Loop BB7_32 Depth 5
                                        #         Child Loop BB7_21 Depth 4
                                        #           Child Loop BB7_22 Depth 5
                                        #       Child Loop BB7_3 Depth 3
	movl	%r8d, -972(%rbp)        # 4-byte Spill
	movl	%r8d, %r15d
	movslq	%r8d, %rax
	leaq	-448(%rbp,%rax,4), %r12
	leaq	-848(%rbp,%rax,4), %r14
	xorl	%ebx, %ebx
	jmp	.LBB7_3
	.align	16, 0x90
.LBB7_10:                               # %if.then9
                                        #   in Loop: Header=BB7_3 Depth=3
	movb	-851(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, param_taint50(%rip)
	movb	-865(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, param_taint51(%rip)
	xorb	%al, %al
	andb	$1, %al
	movb	%al, param_taint52(%rip)
	xorb	%al, %al
	andb	$1, %al
	movb	%al, param_taint53(%rip)
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	-864(%rbp), %rsi        # 8-byte Reload
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	callq	fallbackSimpleSort
	xorb	%dl, %dl
	decq	%rbx
.LBB7_3:                                # %while.cond
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%dl, %dl
	jne	.LBB7_65
# BB#4:                                 # %cont_BB
                                        #   in Loop: Header=BB7_3 Depth=3
	leaq	(%r15,%rbx), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB7_64
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=3
	testb	%dl, %dl
	jne	.LBB7_65
# BB#6:                                 # %cont_BB12
                                        #   in Loop: Header=BB7_3 Depth=3
	movq	-920(%rbp), %rax        # 8-byte Reload
	cmpl	$99, %eax
	jl	.LBB7_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB7_3 Depth=3
	movl	$1004, %edi             # imm = 0x3EC
	callq	BZ2_bz__AssertH__fail
.LBB7_8:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=3
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	xorb	%cl, %cl
	andb	$1, %cl
	movb	%cl, -922(%rbp)         # 1-byte Spill
	movb	%cl, -16(%rax)
	movl	-4(%r12,%rbx,4), %edi
	xorb	%dl, %dl
	andb	$1, %dl
	movb	%dl, -921(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%dl, -16(%rax)
	xorb	%sil, %sil
	testb	%sil, %sil
	jne	.LBB7_65
# BB#9:                                 # %cont_BB23
                                        #   in Loop: Header=BB7_3 Depth=3
	movl	-4(%r14,%rbx,4), %ecx
	movl	%ecx, %eax
	movq	%rdi, %rdx
	subl	%edx, %eax
	cmpl	$9, %eax
	jle	.LBB7_10
# BB#11:                                # %if.end10
                                        #   in Loop: Header=BB7_2 Depth=2
	movl	%ecx, %edi
	movq	%rbx, -944(%rbp)        # 8-byte Spill
	movq	-968(%rbp), %rax        # 8-byte Reload
	imull	$7621, %eax, %eax       # imm = 0x1DC5
	incl	%eax
	andl	$32767, %eax            # imm = 0x7FFF
	testb	%sil, %sil
	jne	.LBB7_65
# BB#12:                                # %cont_BB30
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	%rdx, %rbx
	movslq	%ebx, %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	addq	%rcx, -920(%rbp)        # 8-byte Folded Spill
	movq	%rax, %rdx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	movl	$2863311531, %ecx       # imm = 0xAAAAAAAB
	imulq	%rcx, %rax
	shrq	$33, %rax
	leal	(%rax,%rax,2), %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.LBB7_14
# BB#13:                                # %if.then13
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-851(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	movq	-912(%rbp), %r14        # 8-byte Reload
	movl	(%r14,%rsi,4), %eax
	movq	%rsi, -960(%rbp)        # 8-byte Spill
	jmp	.LBB7_19
.LBB7_14:                               # %if.else
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	%rsi, -960(%rbp)        # 8-byte Spill
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB7_65
# BB#15:                                # %cont_BB41
                                        #   in Loop: Header=BB7_2 Depth=2
	cmpl	$1, %eax
	jne	.LBB7_17
# BB#16:                                # %if.then19
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-851(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	leal	(%rbx,%rdi), %eax
	sarl	%eax
	movslq	%eax, %rax
	jmp	.LBB7_18
.LBB7_17:                               # %if.else25
                                        #   in Loop: Header=BB7_2 Depth=2
	movslq	%edi, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-851(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rcx)
.LBB7_18:                               # %if.else25
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	-912(%rbp), %r14        # 8-byte Reload
	movl	(%r14,%rax,4), %eax
.LBB7_19:                               # %if.else25
                                        #   in Loop: Header=BB7_2 Depth=2
	movb	-865(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%cl, -16(%rdx)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %r10d
	movq	%rbx, -952(%rbp)        # 8-byte Spill
	movl	%edi, -932(%rbp)        # 4-byte Spill
	leal	1(%rdi), %eax
	movl	%eax, -928(%rbp)        # 4-byte Spill
	movb	$0, -866(%rbp)          # 1-byte Folded Spill
	movl	%edi, -892(%rbp)        # 4-byte Spill
	xorb	%cl, %cl
	movl	%ebx, %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
	movl	%edi, %r15d
	movl	%ebx, %r11d
	jmp	.LBB7_20
	.align	16, 0x90
.LBB7_42:                               # %if.end92
                                        #   in Loop: Header=BB7_20 Depth=3
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	-851(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rcx)
	leal	-1(%r15,%rsi), %r8d
	movl	(%r13), %r9d
	leal	1(%r11,%r12), %r11d
	movb	$0, -866(%rbp)          # 1-byte Folded Spill
	movslq	%r15d, %rcx
	movq	-912(%rbp), %r14        # 8-byte Reload
	leaq	(%r14,%rcx,4), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movl	(%rcx,%rsi,4), %edi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%al, -16(%rdx)
	movb	%al, -16(%rdx)
	movl	%edi, (%r13)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movb	%al, -16(%rdx)
	movl	%r9d, (%rcx,%rsi,4)
	xorb	%cl, %cl
	movl	%r8d, %r15d
.LBB7_20:                               # %while.body33
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_31 Depth 4
                                        #           Child Loop BB7_32 Depth 5
                                        #         Child Loop BB7_21 Depth 4
                                        #           Child Loop BB7_22 Depth 5
	movb	%cl, -867(%rbp)         # 1-byte Spill
	movl	-896(%rbp), %eax        # 4-byte Reload
                                        # kill: EAX<def> EAX<kill> RAX<def>
	negl	%eax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	movb	%cl, %al
	xorb	%dl, %dl
	jmp	.LBB7_21
	.align	16, 0x90
.LBB7_26:                               # %if.then45
                                        #   in Loop: Header=BB7_21 Depth=4
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movl	(%r13), %eax
	leal	1(%r11,%r12), %r11d
	movq	-880(%rbp), %rcx        # 8-byte Reload
	decl	%ecx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	movb	$0, -867(%rbp)          # 1-byte Folded Spill
	movl	-896(%rbp), %edx        # 4-byte Reload
	movslq	%edx, %rcx
	incl	%edx
	movl	%edx, -896(%rbp)        # 4-byte Spill
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movq	%rdi, %r14
	movl	(%r14,%rcx,4), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rdi)
	movb	%bl, -16(%rdi)
	movl	%esi, (%r13)
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%bl, -16(%rdx)
	movb	%bl, -16(%rdx)
	xorb	%dl, %dl
	movl	%eax, (%r14,%rcx,4)
	xorb	%al, %al
.LBB7_21:                               # %while.body35.outer
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_2 Depth=2
                                        #       Parent Loop BB7_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_22 Depth 5
	movb	%al, -868(%rbp)         # 1-byte Spill
	movslq	%r11d, %rax
	leaq	(%r14,%rax,4), %r13
	movq	%r14, %rdi
	movl	%r11d, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB7_22
	.align	16, 0x90
.LBB7_29:                               # %if.end59
                                        #   in Loop: Header=BB7_22 Depth=5
	incq	%r12
	addq	$4, %r13
	movb	$0, -867(%rbp)          # 1-byte Folded Spill
	movb	$0, -868(%rbp)          # 1-byte Folded Spill
.LBB7_22:                               # %while.body35
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_2 Depth=2
                                        #       Parent Loop BB7_20 Depth=3
                                        #         Parent Loop BB7_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	testb	%dl, %dl
	jne	.LBB7_65
# BB#23:                                # %cont_BB70
                                        #   in Loop: Header=BB7_22 Depth=5
	leal	(%r11,%r12), %eax
	cmpl	%r15d, %eax
	jg	.LBB7_30
# BB#24:                                # %if.end38
                                        #   in Loop: Header=BB7_22 Depth=5
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-851(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	%bl, -16(%rax)
	movl	(%r13), %eax
	movb	-865(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%cl, -16(%rdx)
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB7_65
# BB#25:                                # %cont_BB82
                                        #   in Loop: Header=BB7_22 Depth=5
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	subl	%r10d, %eax
	testl	%eax, %eax
	je	.LBB7_26
# BB#27:                                # %if.end56
                                        #   in Loop: Header=BB7_22 Depth=5
	testb	%dl, %dl
	jne	.LBB7_65
# BB#28:                                # %cont_BB99
                                        #   in Loop: Header=BB7_22 Depth=5
	testl	%eax, %eax
	jle	.LBB7_29
.LBB7_30:                               # %while.end
                                        #   in Loop: Header=BB7_20 Depth=3
	movl	%r11d, -900(%rbp)       # 4-byte Spill
	movl	-928(%rbp), %eax        # 4-byte Reload
                                        # kill: EAX<def> EAX<kill> RAX<def>
	subl	-892(%rbp), %eax        # 4-byte Folded Reload
	movq	%rax, -888(%rbp)        # 8-byte Spill
	addq	%r12, %r14
	movb	-866(%rbp), %r9b        # 1-byte Reload
	movq	%rdi, %r11
	movq	%r11, -912(%rbp)        # 8-byte Spill
	jmp	.LBB7_31
	.align	16, 0x90
.LBB7_36:                               # %if.then72
                                        #   in Loop: Header=BB7_31 Depth=4
	movl	%r11d, -900(%rbp)       # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movslq	%r15d, %rax
	movq	-912(%rbp), %r11        # 8-byte Reload
	leaq	(%r11,%rax,4), %r9
	movl	(%r9,%rsi,4), %r8d
	leal	-1(%rax,%rsi), %r15d
	movq	-888(%rbp), %rax        # 8-byte Reload
	incl	%eax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	movb	$0, -866(%rbp)          # 1-byte Folded Spill
	movl	-892(%rbp), %ecx        # 4-byte Reload
	movslq	%ecx, %rax
	decl	%ecx
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	(%r11,%rax,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%bl, -16(%rdx)
	movb	%bl, -16(%rdx)
	movl	%ecx, (%r9,%rsi,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	xorb	%dl, %dl
	movb	%bl, -16(%rcx)
	movb	%bl, -16(%rcx)
	movl	%r8d, (%r11,%rax,4)
	xorb	%r9b, %r9b
.LBB7_31:                               # %while.body62.outer
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_2 Depth=2
                                        #       Parent Loop BB7_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_32 Depth 5
	movslq	%r15d, %rax
	leaq	(%r11,%rax,4), %r8
	xorl	%esi, %esi
	movl	-900(%rbp), %r11d       # 4-byte Reload
	jmp	.LBB7_32
	.align	16, 0x90
.LBB7_39:                               # %if.end87
                                        #   in Loop: Header=BB7_32 Depth=5
	decq	%rsi
	movb	$0, -866(%rbp)          # 1-byte Folded Spill
	xorb	%r9b, %r9b
.LBB7_32:                               # %while.body62
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_2 Depth=2
                                        #       Parent Loop BB7_20 Depth=3
                                        #         Parent Loop BB7_31 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	testb	%dl, %dl
	jne	.LBB7_65
# BB#33:                                # %cont_BB105
                                        #   in Loop: Header=BB7_32 Depth=5
	leal	(%r15,%rsi), %eax
	cmpl	%eax, %r14d
	jg	.LBB7_40
# BB#34:                                # %if.end65
                                        #   in Loop: Header=BB7_32 Depth=5
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-851(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	%bl, -16(%rax)
	movl	(%r8,%rsi,4), %eax
	movb	-865(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%cl, -16(%rdx)
	xorb	%dl, %dl
	testb	%dl, %dl
	jne	.LBB7_65
# BB#35:                                # %cont_BB117
                                        #   in Loop: Header=BB7_32 Depth=5
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	subl	%r10d, %eax
	testl	%eax, %eax
	je	.LBB7_36
# BB#37:                                # %if.end84
                                        #   in Loop: Header=BB7_32 Depth=5
	testb	%dl, %dl
	jne	.LBB7_65
# BB#38:                                # %cont_BB134
                                        #   in Loop: Header=BB7_32 Depth=5
	testl	%eax, %eax
	jns	.LBB7_39
.LBB7_40:                               # %while.end89
                                        #   in Loop: Header=BB7_20 Depth=3
	testb	%dl, %dl
	jne	.LBB7_65
# BB#41:                                # %cont_BB138
                                        #   in Loop: Header=BB7_20 Depth=3
	leal	(%r15,%rsi), %eax
	cmpl	%eax, %r14d
	jle	.LBB7_42
# BB#43:                                # %while.end104
                                        #   in Loop: Header=BB7_2 Depth=2
	testb	%dl, %dl
	jne	.LBB7_65
# BB#44:                                # %cont_BB155
                                        #   in Loop: Header=BB7_2 Depth=2
	movl	-896(%rbp), %eax        # 4-byte Reload
	cmpl	%eax, -892(%rbp)        # 4-byte Folded Reload
	jl	.LBB7_45
# BB#46:                                # %if.end107
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	%eax, %ecx
	testb	%dl, %dl
	jne	.LBB7_65
# BB#47:                                # %cont_BB160
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	%ecx, %edi
	subl	%eax, %edi
	movq	-880(%rbp), %rcx        # 8-byte Reload
	addl	%r11d, %ecx
	movl	%r12d, %eax
	addl	%ecx, %eax
	cmpl	%eax, %edi
	jl	.LBB7_49
# BB#48:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	leal	(%rcx,%r12), %edi
.LBB7_49:                               # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	movq	-912(%rbp), %rcx        # 8-byte Reload
	movq	-960(%rbp), %rax        # 8-byte Reload
	leaq	(%rcx,%rax,4), %r8
	subl	%edi, %r11d
	movl	%edi, %r14d
	movl	%r12d, %eax
	addl	%r11d, %eax
	movslq	%eax, %rax
	leaq	(%rcx,%rax,4), %rbx
	movq	%rcx, %r11
	jmp	.LBB7_50
	.align	16, 0x90
.LBB7_52:                               # %while.body116
                                        #   in Loop: Header=BB7_50 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	-851(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rcx)
	movl	(%r8), %r10d
	decl	%r14d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movl	(%rbx), %ecx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movb	%al, -16(%rdx)
	movl	%ecx, (%r8)
	leaq	4(%r8), %r8
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	xorb	%dl, %dl
	movb	%al, -16(%rcx)
	movb	%al, -16(%rcx)
	movl	%r10d, (%rbx)
	leaq	4(%rbx), %rbx
.LBB7_50:                               # %while.cond114
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dl, %dl
	jne	.LBB7_65
# BB#51:                                # %cont_BB170
                                        #   in Loop: Header=BB7_50 Depth=2
	testl	%r14d, %r14d
	jg	.LBB7_52
# BB#53:                                # %while.end129
                                        #   in Loop: Header=BB7_1 Depth=1
	testb	%dl, %dl
	jne	.LBB7_65
# BB#54:                                # %cont_BB190
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-932(%rbp), %edi        # 4-byte Reload
	movl	%edi, %r10d
	movl	-892(%rbp), %ecx        # 4-byte Reload
	subl	%ecx, %r10d
	movl	%ecx, %eax
	movl	%ecx, %r14d
	subl	%r15d, %eax
	movl	%eax, %ecx
	subl	%esi, %ecx
	cmpl	%ecx, %r10d
	jl	.LBB7_56
# BB#55:                                # %cond.false135
                                        #   in Loop: Header=BB7_1 Depth=1
	subl	%esi, %eax
	movl	%eax, %r10d
.LBB7_56:                               # %cond.end137
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%r11, -912(%rbp)        # 8-byte Spill
	movl	$1, %eax
	subl	%r10d, %eax
	addl	%edi, %eax
	movslq	%eax, %rax
	leaq	(%r11,%rax,4), %rbx
	jmp	.LBB7_57
	.align	16, 0x90
.LBB7_59:                               # %while.body146
                                        #   in Loop: Header=BB7_57 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	-851(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rcx)
	movl	(%r13), %r8d
	decl	%r10d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rcx)
	movl	(%rbx), %ecx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%al, -16(%rdx)
	movb	%al, -16(%rdx)
	movl	%ecx, (%r13)
	leaq	4(%r13), %r13
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	xorb	%dl, %dl
	movb	%al, -16(%rcx)
	movb	%al, -16(%rcx)
	movl	%r8d, (%rbx)
	leaq	4(%rbx), %rbx
.LBB7_57:                               # %while.cond144
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dl, %dl
	jne	.LBB7_65
# BB#58:                                # %cont_BB201
                                        #   in Loop: Header=BB7_57 Depth=2
	testl	%r10d, %r10d
	jg	.LBB7_59
# BB#60:                                # %while.end159
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-888(%rbp), %rax        # 8-byte Reload
	addl	%r15d, %eax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	testb	%dl, %dl
	jne	.LBB7_65
# BB#61:                                # %cont_BB227
                                        #   in Loop: Header=BB7_1 Depth=1
	subl	%r15d, %r14d
	movb	-868(%rbp), %r10b       # 1-byte Reload
	orb	%dl, %r10b
	movb	-866(%rbp), %al         # 1-byte Reload
	orb	%r9b, %al
	orb	%dl, %al
	orb	-867(%rbp), %r10b       # 1-byte Folded Reload
	movq	-880(%rbp), %rcx        # 8-byte Reload
	leal	-1(%r12,%rcx), %edx
	movq	-888(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	subl	%esi, %r14d
	movq	-952(%rbp), %r15        # 8-byte Reload
	leaq	(%r15,%rcx), %r13
	addq	%r12, %r13
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	addq	%rcx, %r13
	decl	%r14d
	cmpl	%r14d, %edx
	movl	-972(%rbp), %esi        # 4-byte Reload
	movb	-921(%rbp), %r14b       # 1-byte Reload
	movb	-922(%rbp), %r11b       # 1-byte Reload
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	jle	.LBB7_63
# BB#62:                                # %if.then169
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	%r11b, -16(%rcx)
	xorb	%dl, %dl
	andb	$1, %dl
	movb	%dl, -16(%rcx)
	movslq	%esi, %rdx
	leaq	-448(%rbp,%rdx,4), %r12
	movq	-944(%rbp), %rbx        # 8-byte Reload
	movl	%r15d, -4(%r12,%rbx,4)
	leal	1(%rdx,%rbx), %r8d
	andb	$1, %r10b
	movq	%rsp, %rsi
	movb	%al, %cl
	movq	%rdi, %r15
	leaq	-848(%rbp,%rdx,4), %r9
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	andb	$1, %cl
	xorb	%dl, %dl
	andb	$1, %dl
	movb	%r14b, -16(%rsi)
	movb	%r10b, -16(%rsi)
	movl	%r13d, -4(%r9,%rbx,4)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r11b, -16(%rax)
	movb	%cl, -16(%rax)
	movl	%r15d, (%r12,%rbx,4)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r14b, -16(%rax)
	movb	%dl, -16(%rax)
	movl	-932(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%r9,%rbx,4)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_65:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str61, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB7_65
.LBB7_64:                               # %while.end192
	movb	$0, return_taint7(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp86:
	.size	fallbackQSort3, .Ltmp86-fallbackQSort3
	.cfi_endproc

	.align	16, 0x90
	.type	fallbackSimpleSort,@function
fallbackSimpleSort:                     # @fallbackSimpleSort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp93:
	.cfi_offset %rbx, -56
.Ltmp94:
	.cfi_offset %r12, -48
.Ltmp95:
	.cfi_offset %r13, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
	movl	%edx, -48(%rbp)         # 4-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_27
# BB#1:                                 # %cont_BB
	cmpl	%ecx, -48(%rbp)         # 4-byte Folded Reload
	je	.LBB8_26
# BB#2:                                 # %if.end
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB8_27
# BB#3:                                 # %cont_BB7
	movb	param_taint50(%rip), %r11b
	movb	param_taint51(%rip), %al
	movb	%al, -41(%rbp)          # 1-byte Spill
	movl	%ecx, %eax
	subl	-48(%rbp), %eax         # 4-byte Folded Reload
	cmpl	$4, %eax
	jl	.LBB8_15
# BB#4:                                 # %if.then3
	leal	-4(%rcx), %eax
	xorb	%r10b, %r10b
	movb	%r11b, %r15b
	andb	$1, %r15b
	movb	-41(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB8_5
	.align	16, 0x90
.LBB8_14:                               # %for.end
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r15b, -16(%rdx)
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -16(%rdx)
	addl	$-4, %r13d
	movslq	%r13d, %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%edx, (%rdi,%rax,4)
	movl	-56(%rbp), %eax         # 4-byte Reload
	decl	%eax
	decl	-52(%rbp)               # 4-byte Folded Spill
.LBB8_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
	testb	%r10b, %r10b
	jne	.LBB8_27
# BB#6:                                 # %cont_BB11
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	-48(%rbp), %eax         # 4-byte Folded Reload
	jl	.LBB8_15
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	movslq	-52(%rbp), %r13         # 4-byte Folded Reload
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rdx)
	movslq	%eax, %rbx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movslq	(%rdi,%rbx,4), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	-16(%rdx), %dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r8b, -16(%rdx)
	movl	(%rsi,%rax,4), %r14d
	jmp	.LBB8_8
	.align	16, 0x90
.LBB8_13:                               # %for.body15
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r15b, -16(%rdx)
	movl	(%rdi,%r13,4), %edx
	leal	-4(%r13), %eax
	movslq	%eax, %r12
	movq	%rsp, %r9
	leaq	-16(%r9), %rax
	movq	%rax, %rsp
	movb	%r15b, -16(%r9)
	movb	%r15b, -16(%r9)
	movl	%edx, (%rdi,%r12,4)
	addq	$4, %r13
.LBB8_8:                                # %for.cond8
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r10b, %r10b
	jne	.LBB8_27
# BB#9:                                 # %cont_BB20
                                        #   in Loop: Header=BB8_8 Depth=2
	xorb	%dl, %dl
	cmpl	%ecx, %r13d
	jg	.LBB8_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r15b, -16(%rdx)
	movl	(%rdi,%r13,4), %edx
	leaq	-16(%rbx), %rax
	movq	%rax, %rsp
	movb	%r8b, -16(%rbx)
	cmpl	(%rsi,%rdx,4), %r14d
	seta	%dl
.LBB8_11:                               # %land.end
                                        #   in Loop: Header=BB8_8 Depth=2
	testb	%r10b, %r10b
	jne	.LBB8_27
# BB#12:                                # %cont_BB32
                                        #   in Loop: Header=BB8_8 Depth=2
	cmpb	$1, %dl
	jne	.LBB8_14
	jmp	.LBB8_13
.LBB8_15:                               # %if.end27
	leal	-1(%rcx), %r9d
	xorb	%r10b, %r10b
	andb	$1, %r11b
	andb	$1, -41(%rbp)           # 1-byte Folded Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB8_16
	.align	16, 0x90
.LBB8_25:                               # %for.end53
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r11b, -16(%rax)
	andb	$1, %r12b
	movb	%r12b, -16(%rax)
	decl	%r8d
	movslq	%r8d, %rax
	movl	%r15d, (%rdi,%rax,4)
	decl	%r9d
	decl	-52(%rbp)               # 4-byte Folded Spill
.LBB8_16:                               # %for.cond29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_19 Depth 2
	testb	%r10b, %r10b
	jne	.LBB8_27
# BB#17:                                # %cont_BB49
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	-48(%rbp), %r9d         # 4-byte Folded Reload
	jl	.LBB8_26
# BB#18:                                # %for.body31
                                        #   in Loop: Header=BB8_16 Depth=1
	movslq	-52(%rbp), %r8          # 4-byte Folded Reload
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r11b, -16(%rax)
	movslq	%r9d, %rdx
	movslq	(%rdi,%rdx,4), %r15
	movb	-16(%rax), %r12b
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-41(%rbp), %dl          # 1-byte Reload
	movb	%dl, -16(%rax)
	movl	(%rsi,%r15,4), %r13d
	jmp	.LBB8_19
	.align	16, 0x90
.LBB8_24:                               # %for.body46
                                        #   in Loop: Header=BB8_19 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r11b, -16(%rax)
	movl	(%rdi,%r8,4), %eax
	leal	-1(%r8), %edx
	movslq	%edx, %rdx
	movq	%rsp, %r14
	leaq	-16(%r14), %rbx
	movq	%rbx, %rsp
	movb	%r11b, -16(%r14)
	movb	%r11b, -16(%r14)
	movl	%eax, (%rdi,%rdx,4)
	incq	%r8
.LBB8_19:                               # %for.cond37
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r10b, %r10b
	jne	.LBB8_27
# BB#20:                                # %cont_BB62
                                        #   in Loop: Header=BB8_19 Depth=2
	xorb	%al, %al
	cmpl	%ecx, %r8d
	jg	.LBB8_22
# BB#21:                                # %land.rhs39
                                        #   in Loop: Header=BB8_19 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r11b, -16(%rax)
	movl	(%rdi,%r8,4), %eax
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	-41(%rbp), %bl          # 1-byte Reload
	movb	%bl, -16(%rdx)
	cmpl	(%rsi,%rax,4), %r13d
	seta	%al
.LBB8_22:                               # %land.end45
                                        #   in Loop: Header=BB8_19 Depth=2
	testb	%r10b, %r10b
	jne	.LBB8_27
# BB#23:                                # %cont_BB74
                                        #   in Loop: Header=BB8_19 Depth=2
	cmpb	$1, %al
	jne	.LBB8_25
	jmp	.LBB8_24
	.align	16, 0x90
.LBB8_27:                               # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str62, %edi
	xorb	%al, %al
	callq	printf
	callq	exit
	jmp	.LBB8_27
.LBB8_26:                               # %for.end59
	movb	$0, return_taint8(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp98:
	.size	fallbackSimpleSort, .Ltmp98-fallbackSimpleSort
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "      %d work, %d block, ratio %5.2f\n"
	.size	.L.str, 38

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "    too repetitive; using fallback sorting algorithm\n"
	.size	.L.str1, 54

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "        main sort initialise ...\n"
	.size	.L.str2, 34

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "        bucket sorting ...\n"
	.size	.L.str3, 28

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "        qsort [0x%x, 0x%x]   done %d   this %d\n"
	.size	.L.str4, 48

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "        %d pointers, %d sorted, %d scanned\n"
	.size	.L.str5, 44

	.type	incs,@object            # @incs
	.data
	.align	16
incs:
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	13                      # 0xd
	.long	40                      # 0x28
	.long	121                     # 0x79
	.long	364                     # 0x16c
	.long	1093                    # 0x445
	.long	3280                    # 0xcd0
	.long	9841                    # 0x2671
	.long	29524                   # 0x7354
	.long	88573                   # 0x159fd
	.long	265720                  # 0x40df8
	.long	797161                  # 0xc29e9
	.long	2391484                 # 0x247dbc
	.size	incs, 56

	.type	.L.str6,@object         # @.str6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str6:
	.asciz	 "        depth %6d has "
	.size	.L.str6, 23

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "%6d unresolved strings\n"
	.size	.L.str7, 24

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "        reconstructing block ...\n"
	.size	.L.str8, 34

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

	.type	param_taint22,@object   # @param_taint22
	.globl	param_taint22
param_taint22:
	.byte	0                       # 0x0
	.size	param_taint22, 1

	.type	param_taint23,@object   # @param_taint23
	.globl	param_taint23
param_taint23:
	.byte	0                       # 0x0
	.size	param_taint23, 1

	.type	param_taint24,@object   # @param_taint24
	.globl	param_taint24
param_taint24:
	.byte	0                       # 0x0
	.size	param_taint24, 1

	.type	param_taint25,@object   # @param_taint25
	.globl	param_taint25
param_taint25:
	.byte	0                       # 0x0
	.size	param_taint25, 1

	.type	param_taint26,@object   # @param_taint26
	.globl	param_taint26
param_taint26:
	.byte	0                       # 0x0
	.size	param_taint26, 1

	.type	param_taint27,@object   # @param_taint27
	.globl	param_taint27
param_taint27:
	.byte	0                       # 0x0
	.size	param_taint27, 1

	.type	param_taint28,@object   # @param_taint28
	.globl	param_taint28
param_taint28:
	.byte	0                       # 0x0
	.size	param_taint28, 1

	.type	param_taint29,@object   # @param_taint29
	.globl	param_taint29
param_taint29:
	.byte	0                       # 0x0
	.size	param_taint29, 1

	.type	param_taint30,@object   # @param_taint30
	.globl	param_taint30
param_taint30:
	.byte	0                       # 0x0
	.size	param_taint30, 1

	.type	param_taint31,@object   # @param_taint31
	.globl	param_taint31
param_taint31:
	.byte	0                       # 0x0
	.size	param_taint31, 1

	.type	param_taint32,@object   # @param_taint32
	.globl	param_taint32
param_taint32:
	.byte	0                       # 0x0
	.size	param_taint32, 1

	.type	param_taint33,@object   # @param_taint33
	.globl	param_taint33
param_taint33:
	.byte	0                       # 0x0
	.size	param_taint33, 1

	.type	param_taint34,@object   # @param_taint34
	.globl	param_taint34
param_taint34:
	.byte	0                       # 0x0
	.size	param_taint34, 1

	.type	param_taint35,@object   # @param_taint35
	.globl	param_taint35
param_taint35:
	.byte	0                       # 0x0
	.size	param_taint35, 1

	.type	param_taint36,@object   # @param_taint36
	.globl	param_taint36
param_taint36:
	.byte	0                       # 0x0
	.size	param_taint36, 1

	.type	param_taint37,@object   # @param_taint37
	.globl	param_taint37
param_taint37:
	.byte	0                       # 0x0
	.size	param_taint37, 1

	.type	param_taint38,@object   # @param_taint38
	.globl	param_taint38
param_taint38:
	.byte	0                       # 0x0
	.size	param_taint38, 1

	.type	param_taint39,@object   # @param_taint39
	.globl	param_taint39
param_taint39:
	.byte	0                       # 0x0
	.size	param_taint39, 1

	.type	param_taint40,@object   # @param_taint40
	.globl	param_taint40
param_taint40:
	.byte	0                       # 0x0
	.size	param_taint40, 1

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

	.type	.L.str54,@object        # @.str54
	.section	.rodata,"a",@progbits
.L.str54:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str54, 31

	.type	.L.str55,@object        # @.str55
.L.str55:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str55, 31

	.type	.L.str56,@object        # @.str56
.L.str56:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str56, 31

	.type	.L.str57,@object        # @.str57
.L.str57:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str57, 31

	.type	.L.str58,@object        # @.str58
.L.str58:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str58, 31

	.type	.L.str59,@object        # @.str59
.L.str59:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str59, 31

	.type	.L.str60,@object        # @.str60
.L.str60:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str60, 31

	.type	.L.str61,@object        # @.str61
.L.str61:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str61, 31

	.type	.L.str62,@object        # @.str62
.L.str62:
	.asciz	 "Warning: tainted data in use!\n"
	.size	.L.str62, 31


	.section	".note.GNU-stack","",@progbits
