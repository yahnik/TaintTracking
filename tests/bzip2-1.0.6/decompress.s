	.file	"decompress.tt.bc"
	.text
	.globl	BZ2_decompress
	.align	16, 0x90
	.type	BZ2_decompress,@function
BZ2_decompress:                         # @BZ2_decompress
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
	subq	$200, %rsp
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
	movb	param_taint(%rip), %r12b
	movb	%r12b, -47(%rbp)
	movq	(%rdi), %r14
	movb	-47(%rbp), %r10b
	movb	%r12b, -48(%rbp)
	xorb	%r13b, %r13b
	testb	%r13b, %r13b
	jne	.LBB0_736
# BB#1:                                 # %cont_BB
	movq	%rdi, %r15
	movl	8(%r15), %eax
	cmpl	$10, %eax
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64036(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64040(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64044(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64048(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64052(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64056(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64060(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64064(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64068(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64072(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64076(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64080(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64084(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64088(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64092(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64096(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64100(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64104(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64108(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64112(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 64116(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 64120(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 64128(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	$0, 64136(%r15)
.LBB0_3:                                # %if.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64036(%r15), %r9d
	movb	-16(%rax), %al
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64040(%r15), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -81(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64044(%r15), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -143(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64048(%r15), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -91(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64052(%r15), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -90(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64056(%r15), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -89(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64060(%r15), %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -170(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64064(%r15), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -161(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64068(%r15), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -144(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64072(%r15), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -162(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64076(%r15), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -169(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64080(%r15), %r8d
	movb	-16(%rax), %al
	movb	%al, -98(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64084(%r15), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -97(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64088(%r15), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -178(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64092(%r15), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -139(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64096(%r15), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -229(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64100(%r15), %ebx
	movb	-16(%rax), %al
	movb	%al, -137(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64104(%r15), %esi
	movb	-16(%rax), %al
	movb	%al, -154(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64108(%r15), %edx
	movb	-16(%rax), %al
	movb	%al, -177(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64112(%r15), %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movb	-16(%rax), %al
	movb	%al, -153(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64116(%r15), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movb	-16(%rax), %al
	movb	%al, -138(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	64120(%r15), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movb	-16(%rax), %al
	movb	%al, -142(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	64128(%r15), %rdi
	movb	-16(%rax), %al
	movb	%al, -141(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	64136(%r15), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movb	-16(%rax), %al
	movb	%al, -140(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	8(%r15), %eax
	addl	$-10, %eax
	cmpl	$40, %eax
	jbe	.LBB0_4
# BB#731:                               # %sw.default
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movl	%ebx, -72(%rbp)         # 4-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movl	%edx, -208(%rbp)        # 4-byte Spill
	movl	$4001, %edi             # imm = 0xFA1
	callq	BZ2_bz__AssertH__fail
	movl	$4002, %edi             # imm = 0xFA2
	callq	BZ2_bz__AssertH__fail
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_732:                              # %sw.epilog
	movq	-56(%rbp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB0_733:                              # %sw.epilog
	movb	%cl, %r14b
	.align	16, 0x90
.LBB0_734:                              # %save_state_and_return
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	andb	$1, %r14b
	movb	%r14b, -16(%rcx)
	movb	-81(%rbp), %bl          # 1-byte Reload
	andb	$1, %bl
	movb	-143(%rbp), %r10b       # 1-byte Reload
	andb	$1, %r10b
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, 64036(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-91(%rbp), %r9b         # 1-byte Reload
	andb	$1, %r9b
	movb	-90(%rbp), %dil         # 1-byte Reload
	andb	$1, %dil
	movb	%r12b, -16(%rcx)
	movb	%bl, -16(%rcx)
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 64040(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-89(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movb	-170(%rbp), %sil        # 1-byte Reload
	andb	$1, %sil
	movb	%r12b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 64044(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r9b, -16(%rcx)
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 64048(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%dil, -16(%rcx)
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 64052(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r8b, -16(%rcx)
	movl	-128(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64056(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-161(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	-144(%rbp), %r10b       # 1-byte Reload
	andb	$1, %r10b
	movb	%r12b, -16(%rcx)
	movb	%sil, -16(%rcx)
	movl	-224(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64060(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-162(%rbp), %dil        # 1-byte Reload
	andb	$1, %dil
	movb	-169(%rbp), %sil        # 1-byte Reload
	andb	$1, %sil
	movb	-98(%rbp), %r9b         # 1-byte Reload
	andb	$1, %r9b
	movb	-97(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movb	%r12b, -16(%rcx)
	movb	%bl, -16(%rcx)
	movl	-160(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64064(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r10b, -16(%rcx)
	movl	-168(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64068(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%dil, -16(%rcx)
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64072(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-178(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	%r12b, -16(%rcx)
	movb	%sil, -16(%rcx)
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64076(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-139(%rbp), %dil        # 1-byte Reload
	andb	$1, %dil
	movb	%r12b, -16(%rcx)
	movb	%r9b, -16(%rcx)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, 64080(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-229(%rbp), %sil        # 1-byte Reload
	andb	$1, %sil
	movb	%r12b, -16(%rcx)
	movb	%r8b, -16(%rcx)
	movl	-80(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 64084(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%bl, -16(%rcx)
	movl	-176(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64088(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-137(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	-154(%rbp), %r9b        # 1-byte Reload
	andb	$1, %r9b
	movb	%r12b, -16(%rcx)
	movb	%dil, -16(%rcx)
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64092(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-177(%rbp), %r8b        # 1-byte Reload
	andb	$1, %r8b
	movb	-153(%rbp), %dil        # 1-byte Reload
	andb	$1, %dil
	movb	%r12b, -16(%rcx)
	movb	%sil, -16(%rcx)
	movl	-228(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64096(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%bl, -16(%rcx)
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 64100(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r9b, -16(%rcx)
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64104(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-138(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movb	-142(%rbp), %r9b        # 1-byte Reload
	andb	$1, %r9b
	movb	%r12b, -16(%rcx)
	movb	%r8b, -16(%rcx)
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64108(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	-141(%rbp), %r8b        # 1-byte Reload
	andb	$1, %r8b
	movb	-140(%rbp), %sil        # 1-byte Reload
	andb	$1, %sil
	movb	%r12b, -16(%rcx)
	movb	%dil, -16(%rcx)
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, 64112(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%bl, -16(%rcx)
	movl	-204(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 64116(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r9b, -16(%rcx)
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 64120(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r8b, -16(%rcx)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 64128(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%sil, -16(%rcx)
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 64136(%r15)
	.align	16, 0x90
.LBB0_735:                              # %return
	movb	$0, return_taint(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_4:                                # %if.end
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movl	%ebx, -72(%rbp)         # 4-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movl	%edx, -208(%rbp)        # 4-byte Spill
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_5:                                # %sw.bb
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$10, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_38:                               # %if.then53
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#7:                                 # %cont_BB109
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_8
# BB#33:                                # %if.end33
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#34:                                # %cont_BB132
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#36:                                # %if.end38
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#37:                                # %cont_BB180
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_6
	jmp	.LBB0_38
.LBB0_8:                                # %if.then29
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#9:                                 # %cont_BB191
	movzbl	%al, %ecx
	movl	$-5, %eax
	cmpl	$66, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_10:                               # %sw.bb62
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$11, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_43:                               # %if.then107
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_11:                               # %while.body64
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#12:                                # %cont_BB198
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_13
# BB#39:                                # %if.end78
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#40:                                # %cont_BB221
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#41:                                # %if.end84
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#42:                                # %cont_BB269
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_11
	jmp	.LBB0_43
.LBB0_13:                               # %if.then68
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#14:                                # %cont_BB280
	movzbl	%al, %ecx
	movl	$-5, %eax
	cmpl	$90, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_15:                               # %sw.bb118
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$12, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_48:                               # %if.then163
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_16:                               # %while.body120
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#17:                                # %cont_BB287
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_18
# BB#44:                                # %if.end134
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#45:                                # %cont_BB310
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#46:                                # %if.end140
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#47:                                # %cont_BB358
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_16
	jmp	.LBB0_48
.LBB0_18:                               # %if.then124
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#19:                                # %cont_BB369
	movzbl	%al, %ecx
	movl	$-5, %eax
	cmpl	$104, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_20:                               # %sw.bb174
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$13, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_53:                               # %if.then218
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_21:                               # %while.body176
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#22:                                # %cont_BB376
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	%r15, %rbx
	movl	36(%rbx), %eax
	cmpl	$8, %eax
	jge	.LBB0_23
# BB#49:                                # %if.end189
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#50:                                # %cont_BB399
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#51:                                # %if.end195
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#52:                                # %cont_BB447
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_21
	jmp	.LBB0_53
.LBB0_23:                               # %if.then180
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rbx), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rbx), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%rbx), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%rbx)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movzbl	%dl, %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%al, -16(%rdx)
	movl	%ecx, 40(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#24:                                # %cont_BB460
	movq	%rbx, %r15
	movl	40(%r15), %ecx
	movl	$-5, %eax
	cmpl	$49, %ecx
	jl	.LBB0_732
# BB#25:                                # %lor.lhs.false
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#26:                                # %cont_BB466
	movl	40(%r15), %ecx
	movl	$-5, %eax
	cmpl	$57, %ecx
	jg	.LBB0_732
# BB#27:                                # %if.end231
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movl	40(%r15), %edx
	xorb	%al, %al
	movb	%r12b, -16(%rcx)
	addl	$-48, %edx
	movl	%edx, 40(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#28:                                # %cont_BB476
	movb	44(%r15), %al
	testb	%al, %al
	je	.LBB0_54
# BB#29:                                # %if.then234
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r10b, %bl
	andb	$1, %bl
	movb	%bl, -16(%rax)
	movq	56(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	40(%r15), %ecx
	imull	$100000, %ecx, %esi     # imm = 0x186A0
	addl	%esi, %esi
	movl	$1, %edx
	callq	*%rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movq	%rax, 3160(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%bl, -16(%rax)
	movq	56(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	40(%r15), %ecx
	imull	$100000, %ecx, %esi     # imm = 0x186A0
	sarl	%esi
	movl	$1, %edx
	callq	*%rax
	xorb	%cl, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	$0, -16(%rdx)
	movq	%rax, 3168(%r15)
	movq	%r15, %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%cl, %cl
	movb	%r12b, -16(%rax)
	jne	.LBB0_736
# BB#30:                                # %cont_BB513
	movq	%rbx, %r15
	movq	3160(%r15), %rcx
	movl	$-3, %eax
	testq	%rcx, %rcx
	je	.LBB0_732
# BB#31:                                # %lor.lhs.false252
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#32:                                # %cont_BB519
	movq	3168(%r15), %rcx
	jmp	.LBB0_56
.LBB0_54:                               # %if.else
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	andb	$1, %r10b
	movb	%r10b, -16(%rax)
	movq	56(%r14), %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r10b, -16(%rcx)
	movq	72(%r14), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	40(%r15), %ecx
	imull	$100000, %ecx, %esi     # imm = 0x186A0
	shll	$2, %esi
	movl	$1, %edx
	callq	*%rax
	xorb	%cl, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	$0, -16(%rdx)
	movq	%rax, 3152(%r15)
	movq	%r15, %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%cl, %cl
	movb	%r12b, -16(%rax)
	jne	.LBB0_736
# BB#55:                                # %cont_BB540
	movq	%rbx, %r15
	movq	3152(%r15), %rcx
.LBB0_56:                               # %cont_BB540
	movl	$-3, %eax
	testq	%rcx, %rcx
	je	.LBB0_732
.LBB0_57:                               # %sw.bb272
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$14, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_58
	.align	16, 0x90
.LBB0_94:                               # %if.then317
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_58:                               # %while.body274
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#59:                                # %cont_BB547
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_60
# BB#90:                                # %if.end288
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#91:                                # %cont_BB570
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#92:                                # %if.end294
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#93:                                # %cont_BB618
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_58
	jmp	.LBB0_94
.LBB0_60:                               # %if.then278
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#61:                                # %cont_BB629
	movzbl	%al, %ecx
	cmpl	$23, %ecx
	movq	%rdi, %r15
	jne	.LBB0_62
.LBB0_644:                              # %sw.bb3012
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$42, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_645
	.align	16, 0x90
.LBB0_690:                              # %if.then3059
                                        #   in Loop: Header=BB0_645 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_645:                              # %while.body3015
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#646:                               # %cont_BB4825
                                        #   in Loop: Header=BB0_645 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_647
# BB#686:                               # %if.end3030
                                        #   in Loop: Header=BB0_645 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#687:                               # %cont_BB4848
                                        #   in Loop: Header=BB0_645 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#688:                               # %if.end3036
                                        #   in Loop: Header=BB0_645 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#689:                               # %cont_BB4896
                                        #   in Loop: Header=BB0_645 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_645
	jmp	.LBB0_690
.LBB0_647:                              # %if.then3019
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#648:                               # %cont_BB4907
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$114, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_649:                              # %sw.bb3070
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$43, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_650
	.align	16, 0x90
.LBB0_695:                              # %if.then3117
                                        #   in Loop: Header=BB0_650 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_650:                              # %while.body3073
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#651:                               # %cont_BB4914
                                        #   in Loop: Header=BB0_650 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_652
# BB#691:                               # %if.end3088
                                        #   in Loop: Header=BB0_650 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#692:                               # %cont_BB4937
                                        #   in Loop: Header=BB0_650 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#693:                               # %if.end3094
                                        #   in Loop: Header=BB0_650 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#694:                               # %cont_BB4985
                                        #   in Loop: Header=BB0_650 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_650
	jmp	.LBB0_695
.LBB0_652:                              # %if.then3077
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#653:                               # %cont_BB4996
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$69, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_654:                              # %sw.bb3128
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$44, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_655
	.align	16, 0x90
.LBB0_700:                              # %if.then3175
                                        #   in Loop: Header=BB0_655 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_655:                              # %while.body3131
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#656:                               # %cont_BB5003
                                        #   in Loop: Header=BB0_655 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_657
# BB#696:                               # %if.end3146
                                        #   in Loop: Header=BB0_655 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#697:                               # %cont_BB5026
                                        #   in Loop: Header=BB0_655 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#698:                               # %if.end3152
                                        #   in Loop: Header=BB0_655 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#699:                               # %cont_BB5074
                                        #   in Loop: Header=BB0_655 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_655
	jmp	.LBB0_700
.LBB0_657:                              # %if.then3135
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#658:                               # %cont_BB5085
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$56, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_659:                              # %sw.bb3186
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$45, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_660
	.align	16, 0x90
.LBB0_705:                              # %if.then3233
                                        #   in Loop: Header=BB0_660 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_660:                              # %while.body3189
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#661:                               # %cont_BB5092
                                        #   in Loop: Header=BB0_660 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_662
# BB#701:                               # %if.end3204
                                        #   in Loop: Header=BB0_660 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#702:                               # %cont_BB5115
                                        #   in Loop: Header=BB0_660 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#703:                               # %if.end3210
                                        #   in Loop: Header=BB0_660 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#704:                               # %cont_BB5163
                                        #   in Loop: Header=BB0_660 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_660
	jmp	.LBB0_705
.LBB0_662:                              # %if.then3193
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#663:                               # %cont_BB5174
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$80, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_664:                              # %sw.bb3244
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$46, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_665
	.align	16, 0x90
.LBB0_710:                              # %if.then3291
                                        #   in Loop: Header=BB0_665 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_665:                              # %while.body3247
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#666:                               # %cont_BB5181
                                        #   in Loop: Header=BB0_665 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_667
# BB#706:                               # %if.end3262
                                        #   in Loop: Header=BB0_665 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#707:                               # %cont_BB5204
                                        #   in Loop: Header=BB0_665 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#708:                               # %if.end3268
                                        #   in Loop: Header=BB0_665 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#709:                               # %cont_BB5252
                                        #   in Loop: Header=BB0_665 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_665
	jmp	.LBB0_710
.LBB0_667:                              # %if.then3251
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
	movq	%rdi, %r15
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#668:                               # %cont_BB5263
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$144, %ecx
	jne	.LBB0_732
# BB#669:                               # %if.end3301
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 3180(%r15)
.LBB0_670:                              # %sw.bb3302
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$47, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_671
	.align	16, 0x90
.LBB0_715:                              # %if.then3349
                                        #   in Loop: Header=BB0_671 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_671:                              # %while.body3305
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#672:                               # %cont_BB5271
                                        #   in Loop: Header=BB0_671 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_673
# BB#711:                               # %if.end3320
                                        #   in Loop: Header=BB0_671 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#712:                               # %cont_BB5294
                                        #   in Loop: Header=BB0_671 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#713:                               # %if.end3326
                                        #   in Loop: Header=BB0_671 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#714:                               # %cont_BB5342
                                        #   in Loop: Header=BB0_671 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_671
	jmp	.LBB0_715
.LBB0_673:                              # %if.then3309
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	3180(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 3180(%r15)
.LBB0_674:                              # %sw.bb3360
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$48, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_675
	.align	16, 0x90
.LBB0_720:                              # %if.then3407
                                        #   in Loop: Header=BB0_675 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_675:                              # %while.body3363
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#676:                               # %cont_BB5363
                                        #   in Loop: Header=BB0_675 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_677
# BB#716:                               # %if.end3378
                                        #   in Loop: Header=BB0_675 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#717:                               # %cont_BB5386
                                        #   in Loop: Header=BB0_675 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#718:                               # %if.end3384
                                        #   in Loop: Header=BB0_675 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#719:                               # %cont_BB5434
                                        #   in Loop: Header=BB0_675 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_675
	jmp	.LBB0_720
.LBB0_677:                              # %if.then3367
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	3180(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 3180(%r15)
.LBB0_678:                              # %sw.bb3418
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$49, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_679
	.align	16, 0x90
.LBB0_725:                              # %if.then3465
                                        #   in Loop: Header=BB0_679 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_679:                              # %while.body3421
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#680:                               # %cont_BB5455
                                        #   in Loop: Header=BB0_679 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_681
# BB#721:                               # %if.end3436
                                        #   in Loop: Header=BB0_679 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#722:                               # %cont_BB5478
                                        #   in Loop: Header=BB0_679 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#723:                               # %if.end3442
                                        #   in Loop: Header=BB0_679 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#724:                               # %cont_BB5526
                                        #   in Loop: Header=BB0_679 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_679
	jmp	.LBB0_725
.LBB0_681:                              # %if.then3425
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	3180(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 3180(%r15)
.LBB0_682:                              # %sw.bb3476
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$50, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_683
	.align	16, 0x90
.LBB0_730:                              # %if.then3523
                                        #   in Loop: Header=BB0_683 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_683:                              # %while.body3479
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#684:                               # %cont_BB5547
                                        #   in Loop: Header=BB0_683 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_685
# BB#726:                               # %if.end3494
                                        #   in Loop: Header=BB0_683 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#727:                               # %cont_BB5570
                                        #   in Loop: Header=BB0_683 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#728:                               # %if.end3500
                                        #   in Loop: Header=BB0_683 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#729:                               # %cont_BB5618
                                        #   in Loop: Header=BB0_683 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_683
	jmp	.LBB0_730
.LBB0_685:                              # %if.then3483
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %esi
	movb	%r12b, %dl
	orb	%dl, %dl
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%r15), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rax)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %esi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	3180(%r15), %ecx
	movl	$4, %eax
	orb	%r12b, %dl
	movzbl	%sil, %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%dl, -16(%rdi)
	shll	$8, %ecx
	orl	%esi, %ecx
	movl	%ecx, 3180(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$1, 8(%r15)
	jmp	.LBB0_732
.LBB0_62:                               # %if.end327
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#63:                                # %cont_BB633
	movl	$-4, %eax
	cmpl	$49, %ecx
	jne	.LBB0_732
.LBB0_64:                               # %sw.bb333
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$15, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_99:                               # %if.then378
                                        #   in Loop: Header=BB0_65 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_65:                               # %while.body335
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#66:                                # %cont_BB640
                                        #   in Loop: Header=BB0_65 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_67
# BB#95:                                # %if.end349
                                        #   in Loop: Header=BB0_65 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#96:                                # %cont_BB663
                                        #   in Loop: Header=BB0_65 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#97:                                # %if.end355
                                        #   in Loop: Header=BB0_65 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#98:                                # %cont_BB711
                                        #   in Loop: Header=BB0_65 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_65
	jmp	.LBB0_99
.LBB0_67:                               # %if.then339
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#68:                                # %cont_BB722
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$65, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_69:                               # %sw.bb389
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$16, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_70
	.align	16, 0x90
.LBB0_104:                              # %if.then434
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_70:                               # %while.body391
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#71:                                # %cont_BB729
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_72
# BB#100:                               # %if.end405
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#101:                               # %cont_BB752
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#102:                               # %if.end411
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#103:                               # %cont_BB800
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_70
	jmp	.LBB0_104
.LBB0_72:                               # %if.then395
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#73:                                # %cont_BB811
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$89, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_74:                               # %sw.bb445
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$17, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_109:                              # %if.then490
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_75:                               # %while.body447
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#76:                                # %cont_BB818
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_77
# BB#105:                               # %if.end461
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#106:                               # %cont_BB841
                                        #   in Loop: Header=BB0_75 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#107:                               # %if.end467
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#108:                               # %cont_BB889
                                        #   in Loop: Header=BB0_75 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_75
	jmp	.LBB0_109
.LBB0_77:                               # %if.then451
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#78:                                # %cont_BB900
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$38, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_79:                               # %sw.bb501
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$18, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_114:                              # %if.then546
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_80:                               # %while.body503
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#81:                                # %cont_BB907
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_82
# BB#110:                               # %if.end517
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#111:                               # %cont_BB930
                                        #   in Loop: Header=BB0_80 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#112:                               # %if.end523
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#113:                               # %cont_BB978
                                        #   in Loop: Header=BB0_80 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_80
	jmp	.LBB0_114
.LBB0_82:                               # %if.then507
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#83:                                # %cont_BB989
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$83, %ecx
	movq	%rdi, %r15
	jne	.LBB0_732
.LBB0_84:                               # %sw.bb557
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$19, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_85
	.align	16, 0x90
.LBB0_119:                              # %if.then602
                                        #   in Loop: Header=BB0_85 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_85:                               # %while.body559
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#86:                                # %cont_BB996
                                        #   in Loop: Header=BB0_85 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	cmpl	$8, %eax
	jge	.LBB0_87
# BB#115:                               # %if.end573
                                        #   in Loop: Header=BB0_85 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#116:                               # %cont_BB1019
                                        #   in Loop: Header=BB0_85 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#117:                               # %if.end579
                                        #   in Loop: Header=BB0_85 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#118:                               # %cont_BB1067
                                        #   in Loop: Header=BB0_85 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_85
	jmp	.LBB0_119
.LBB0_87:                               # %if.then563
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	addl	$-8, %ecx
	movb	%r12b, -16(%rdx)
	addl	$-8, %esi
	movl	%esi, 36(%rdi)
	movq	%rdi, %rdx
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#88:                                # %cont_BB1078
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$89, %ecx
	jne	.LBB0_89
# BB#120:                               # %if.end612
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rdx, %rsi
	movl	48(%rsi), %edx
	xorb	%al, %al
	movb	%r12b, -16(%rcx)
	incl	%edx
	movl	%edx, 48(%rsi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#121:                               # %cont_BB1088
	movq	%rsi, %r15
	movl	52(%r15), %eax
	cmpl	$2, %eax
	jl	.LBB0_123
# BB#122:                               # %if.then616
	movq	stderr(%rip), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	48(%r15), %edx
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
.LBB0_123:                              # %if.end619
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 3176(%r15)
.LBB0_124:                              # %sw.bb620
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$20, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_125
	.align	16, 0x90
.LBB0_164:                              # %if.then665
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_125:                              # %while.body622
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#126:                               # %cont_BB1100
                                        #   in Loop: Header=BB0_125 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_127
# BB#160:                               # %if.end636
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#161:                               # %cont_BB1123
                                        #   in Loop: Header=BB0_125 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#162:                               # %if.end642
                                        #   in Loop: Header=BB0_125 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#163:                               # %cont_BB1171
                                        #   in Loop: Header=BB0_125 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_125
	jmp	.LBB0_164
.LBB0_127:                              # %if.then626
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	3176(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 3176(%r15)
.LBB0_128:                              # %sw.bb676
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$21, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_129
	.align	16, 0x90
.LBB0_169:                              # %if.then721
                                        #   in Loop: Header=BB0_129 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_129:                              # %while.body678
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#130:                               # %cont_BB1192
                                        #   in Loop: Header=BB0_129 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_131
# BB#165:                               # %if.end692
                                        #   in Loop: Header=BB0_129 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#166:                               # %cont_BB1215
                                        #   in Loop: Header=BB0_129 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#167:                               # %if.end698
                                        #   in Loop: Header=BB0_129 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#168:                               # %cont_BB1263
                                        #   in Loop: Header=BB0_129 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_129
	jmp	.LBB0_169
.LBB0_131:                              # %if.then682
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	3176(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 3176(%r15)
.LBB0_132:                              # %sw.bb732
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$22, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_174:                              # %if.then777
                                        #   in Loop: Header=BB0_133 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_133:                              # %while.body734
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#134:                               # %cont_BB1284
                                        #   in Loop: Header=BB0_133 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_135
# BB#170:                               # %if.end748
                                        #   in Loop: Header=BB0_133 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#171:                               # %cont_BB1307
                                        #   in Loop: Header=BB0_133 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#172:                               # %if.end754
                                        #   in Loop: Header=BB0_133 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#173:                               # %cont_BB1355
                                        #   in Loop: Header=BB0_133 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_133
	jmp	.LBB0_174
.LBB0_135:                              # %if.then738
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	3176(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 3176(%r15)
.LBB0_136:                              # %sw.bb788
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$23, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_137
	.align	16, 0x90
.LBB0_179:                              # %if.then833
                                        #   in Loop: Header=BB0_137 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_137:                              # %while.body790
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#138:                               # %cont_BB1376
                                        #   in Loop: Header=BB0_137 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_139
# BB#175:                               # %if.end804
                                        #   in Loop: Header=BB0_137 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#176:                               # %cont_BB1399
                                        #   in Loop: Header=BB0_137 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#177:                               # %if.end810
                                        #   in Loop: Header=BB0_137 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#178:                               # %cont_BB1447
                                        #   in Loop: Header=BB0_137 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_137
	jmp	.LBB0_179
.LBB0_139:                              # %if.then794
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	3176(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 3176(%r15)
.LBB0_140:                              # %sw.bb844
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$24, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_141
	.align	16, 0x90
.LBB0_184:                              # %if.then889
                                        #   in Loop: Header=BB0_141 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_141:                              # %while.body846
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#142:                               # %cont_BB1468
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	36(%r15), %eax
	testl	%eax, %eax
	jg	.LBB0_143
# BB#180:                               # %if.end860
                                        #   in Loop: Header=BB0_141 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#181:                               # %cont_BB1492
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#182:                               # %if.end866
                                        #   in Loop: Header=BB0_141 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#183:                               # %cont_BB1540
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_141
	jmp	.LBB0_184
.LBB0_143:                              # %if.then850
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %eax
	movb	%r12b, %dl
	orb	%dl, %dl
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	decl	%ecx
	movb	%r12b, -16(%rsi)
	decl	%edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	andl	$1, %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movb	%dl, -16(%rcx)
	movb	%al, 20(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 56(%r15)
.LBB0_144:                              # %sw.bb895
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$25, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_145
	.align	16, 0x90
.LBB0_189:                              # %if.then940
                                        #   in Loop: Header=BB0_145 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_145:                              # %while.body897
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#146:                               # %cont_BB1555
                                        #   in Loop: Header=BB0_145 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_147
# BB#185:                               # %if.end911
                                        #   in Loop: Header=BB0_145 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#186:                               # %cont_BB1578
                                        #   in Loop: Header=BB0_145 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#187:                               # %if.end917
                                        #   in Loop: Header=BB0_145 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#188:                               # %cont_BB1626
                                        #   in Loop: Header=BB0_145 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_145
	jmp	.LBB0_189
.LBB0_147:                              # %if.then901
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	56(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 56(%r15)
.LBB0_148:                              # %sw.bb951
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$26, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_149
	.align	16, 0x90
.LBB0_194:                              # %if.then996
                                        #   in Loop: Header=BB0_149 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_149:                              # %while.body953
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#150:                               # %cont_BB1647
                                        #   in Loop: Header=BB0_149 Depth=1
	movl	36(%r15), %eax
	cmpl	$8, %eax
	jge	.LBB0_151
# BB#190:                               # %if.end967
                                        #   in Loop: Header=BB0_149 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#191:                               # %cont_BB1670
                                        #   in Loop: Header=BB0_149 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_732
# BB#192:                               # %if.end973
                                        #   in Loop: Header=BB0_149 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r15, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#193:                               # %cont_BB1718
                                        #   in Loop: Header=BB0_149 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_149
	jmp	.LBB0_194
.LBB0_151:                              # %if.then957
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r15), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r15), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r15)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	56(%r15), %ecx
	orb	%r12b, %al
	movzbl	%dl, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%al, -16(%rsi)
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, 56(%r15)
.LBB0_152:                              # %sw.bb1007
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$27, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_153
	.align	16, 0x90
.LBB0_200:                              # %if.then1052
                                        #   in Loop: Header=BB0_153 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_153:                              # %while.body1009
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#154:                               # %cont_BB1739
                                        #   in Loop: Header=BB0_153 Depth=1
	movq	%r15, %r9
	movl	36(%r9), %eax
	cmpl	$8, %eax
	jge	.LBB0_155
# BB#195:                               # %if.end1023
                                        #   in Loop: Header=BB0_153 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r9), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#196:                               # %cont_BB1762
                                        #   in Loop: Header=BB0_153 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_197
# BB#198:                               # %if.end1029
                                        #   in Loop: Header=BB0_153 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%r9, %rcx
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#199:                               # %cont_BB1810
                                        #   in Loop: Header=BB0_153 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_153
	jmp	.LBB0_200
.LBB0_155:                              # %if.then1013
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%r9), %edx
	movb	%r12b, %al
	orb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%r9), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%r9), %edi
	addl	$-8, %ecx
	movb	%r12b, -16(%rsi)
	addl	$-8, %edi
	movl	%edi, 36(%r9)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	orb	%r12b, %al
	movl	56(%r9), %esi
	movzbl	%dl, %edx
	xorb	%cl, %cl
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%al, -16(%rdi)
	shll	$8, %esi
	orl	%edx, %esi
	movl	%esi, 56(%r9)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	testb	%cl, %cl
	movb	%r12b, -16(%rax)
	jne	.LBB0_736
# BB#156:                               # %cont_BB1830
	movq	%r9, %r15
	movl	56(%r15), %ecx
	movl	$-4, %eax
	testl	%ecx, %ecx
	js	.LBB0_732
# BB#157:                               # %if.end1067
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	56(%r15), %edx
	xorb	%al, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	testb	%al, %al
	jne	.LBB0_736
# BB#158:                               # %cont_BB1841
	imull	$100000, 40(%r15), %esi # imm = 0x186A0
	orl	$10, %esi
	xorl	%ecx, %ecx
	movl	$-4, %eax
	cmpl	%esi, %edx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jle	.LBB0_202
# BB#159:
	movb	%dl, %r14b
	jmp	.LBB0_734
.LBB0_197:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	%cl, %r14b
	movq	%r9, %r15
	jmp	.LBB0_734
.LBB0_89:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	%cl, %r14b
	movq	%rdx, %r15
	jmp	.LBB0_734
	.align	16, 0x90
.LBB0_35:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movb	%dl, %r14b
	movq	%rcx, %r15
	jmp	.LBB0_734
	.align	16, 0x90
.LBB0_201:                              # %if.else1133
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	%eax, %rcx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movb	$0, 3452(%r15,%rcx)
	incl	%ecx
	.align	16, 0x90
.LBB0_202:                              # %for.cond
	xorb	%al, %al
	testb	%al, %al
	movb	$0, %al
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB0_736
# BB#203:                               # %cont_BB1844
	cmpl	$15, %ecx
                                        # kill: ECX<def> ECX<kill> RCX<kill> RCX<def>
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jg	.LBB0_215
.LBB0_204:                              # %sw.bb1078
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$28, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_205
	.align	16, 0x90
.LBB0_214:                              # %if.then1123
                                        #   in Loop: Header=BB0_205 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_205:                              # %while.body1080
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#206:                               # %cont_BB1852
                                        #   in Loop: Header=BB0_205 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB0_207
# BB#210:                               # %if.end1094
                                        #   in Loop: Header=BB0_205 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#211:                               # %cont_BB1875
                                        #   in Loop: Header=BB0_205 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#212:                               # %if.end1100
                                        #   in Loop: Header=BB0_205 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#213:                               # %cont_BB1923
                                        #   in Loop: Header=BB0_205 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_205
	jmp	.LBB0_214
.LBB0_207:                              # %if.then1084
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	decl	%ecx
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 36(%rdi)
	movq	%rdi, %r15
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	andl	$1, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#208:                               # %cont_BB1934
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB0_201
# BB#209:                               # %if.then1132
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	%esi, %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movb	$1, 3452(%r15,%rax)
	incl	%esi
	movl	%esi, %ecx
	jmp	.LBB0_202
.LBB0_215:                              # %for.end
	movq	%r15, %rbx
	xorl	%eax, %eax
	xorb	%cl, %cl
	jmp	.LBB0_216
	.align	16, 0x90
.LBB0_737:                              # %for.body1142
                                        #   in Loop: Header=BB0_216 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	$0, -16(%rdx)
	movb	$0, 3196(%rbx,%rax)
	incq	%rax
.LBB0_216:                              # %for.cond1139
                                        # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	jne	.LBB0_736
# BB#217:                               # %cont_BB1945
                                        #   in Loop: Header=BB0_216 Depth=1
	cmpl	$255, %eax
	jle	.LBB0_737
# BB#218:
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	-76(%rbp), %ecx         # 4-byte Reload
	.align	16, 0x90
.LBB0_219:                              # %for.cond1148
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#220:                               # %cont_BB1954
	movl	%ecx, %r15d
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpl	$15, %eax
	jg	.LBB0_238
# BB#221:                               # %for.body1151
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	movl	%r15d, %ecx
	jne	.LBB0_736
# BB#222:                               # %cont_BB1962
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	%eax, %rax
	movq	%rbx, %r15
	movb	3452(%r15,%rax), %al
	xorl	%esi, %esi
	testb	%al, %al
	je	.LBB0_237
	jmp	.LBB0_223
.LBB0_238:                              # %for.end1228
	movb	%r12b, param_taint2(%rip)
	movq	%rbx, %rdi
	callq	makeMaps_d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	xorb	%r14b, %r14b
	movq	%rcx, %rsp
	testb	%r14b, %r14b
	movb	%r12b, -16(%rax)
	movl	%r15d, %edx
	jne	.LBB0_736
# BB#239:                               # %cont_BB2073
	movq	%rbx, %r15
	movl	3192(%r15), %ecx
	movl	$-4, %eax
	testl	%ecx, %ecx
	je	.LBB0_240
# BB#241:                               # %if.end1232
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	-16(%rax), %al
	movb	%al, -91(%rbp)          # 1-byte Spill
	movl	3192(%r15), %eax
	xorb	%cl, %cl
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	addl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
.LBB0_242:                              # %sw.bb1235
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$30, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_243
	.align	16, 0x90
.LBB0_259:                              # %if.then1279
                                        #   in Loop: Header=BB0_243 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_243:                              # %while.body1237
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#244:                               # %cont_BB2087
                                        #   in Loop: Header=BB0_243 Depth=1
	movq	%r15, %rsi
	movl	36(%rsi), %eax
	cmpl	$3, %eax
	jge	.LBB0_245
# BB#255:                               # %if.end1250
                                        #   in Loop: Header=BB0_243 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#256:                               # %cont_BB2109
                                        #   in Loop: Header=BB0_243 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#257:                               # %if.end1256
                                        #   in Loop: Header=BB0_243 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#258:                               # %cont_BB2157
                                        #   in Loop: Header=BB0_243 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_243
	jmp	.LBB0_259
.LBB0_245:                              # %if.then1241
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rsi), %edi
	movb	%r12b, %al
	orb	%al, %al
	movb	%al, -90(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %edx
	addl	$-3, %ecx
	movb	%r12b, -16(%rax)
	addl	$-3, %edx
	movl	%edx, 36(%rsi)
	movq	%rsi, %r15
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edi
	andl	$7, %edi
	movl	%edi, -96(%rbp)         # 4-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#246:                               # %cont_BB2167
	movl	$-4, %eax
	cmpl	$2, -96(%rbp)           # 4-byte Folded Reload
	jl	.LBB0_732
# BB#247:                               # %lor.lhs.false1287
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#248:                               # %cont_BB2170
	movl	$-4, %eax
	cmpl	$6, -96(%rbp)           # 4-byte Folded Reload
	jg	.LBB0_732
.LBB0_249:                              # %sw.bb1292
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$31, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_250
	.align	16, 0x90
.LBB0_264:                              # %if.then1336
                                        #   in Loop: Header=BB0_250 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_250:                              # %while.body1294
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#251:                               # %cont_BB2181
                                        #   in Loop: Header=BB0_250 Depth=1
	movq	%r15, %rsi
	movl	36(%rsi), %eax
	cmpl	$15, %eax
	jge	.LBB0_252
# BB#260:                               # %if.end1307
                                        #   in Loop: Header=BB0_250 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#261:                               # %cont_BB2203
                                        #   in Loop: Header=BB0_250 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#262:                               # %if.end1313
                                        #   in Loop: Header=BB0_250 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#263:                               # %cont_BB2251
                                        #   in Loop: Header=BB0_250 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_250
	jmp	.LBB0_264
.LBB0_252:                              # %if.then1298
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rsi), %edi
	movb	%r12b, %al
	orb	%al, %al
	movb	%al, -89(%rbp)          # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %edx
	addl	$-15, %ecx
	movb	%r12b, -16(%rax)
	addl	$-15, %edx
	movl	%edx, 36(%rsi)
	movq	%rsi, %r10
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edi
	andl	$32767, %edi            # imm = 0x7FFF
	movl	%edi, -128(%rbp)        # 4-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#253:                               # %cont_BB2261
	xorl	%ecx, %ecx
	movl	$-4, %eax
	cmpl	$0, -128(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_266
# BB#254:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	%cl, %r14b
	movq	%r10, %r15
	jmp	.LBB0_734
.LBB0_240:
	movl	%edx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB0_734
	.align	16, 0x90
.LBB0_223:                              # %for.cond1157
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	jne	.LBB0_736
# BB#224:                               # %cont_BB1967
	movl	%esi, -76(%rbp)         # 4-byte Spill
	cmpl	$15, %esi
	movb	$0, %al
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%esi, %ecx
	jg	.LBB0_237
.LBB0_225:                              # %sw.bb1161
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$29, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_226
	.align	16, 0x90
.LBB0_236:                              # %if.then1206
                                        #   in Loop: Header=BB0_226 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_226:                              # %while.body1163
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#227:                               # %cont_BB1976
                                        #   in Loop: Header=BB0_226 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB0_228
# BB#232:                               # %if.end1177
                                        #   in Loop: Header=BB0_226 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#233:                               # %cont_BB1999
                                        #   in Loop: Header=BB0_226 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#234:                               # %if.end1183
                                        #   in Loop: Header=BB0_226 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#235:                               # %cont_BB2047
                                        #   in Loop: Header=BB0_226 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_226
	jmp	.LBB0_236
.LBB0_228:                              # %if.then1167
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	decl	%ecx
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 36(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	andl	$1, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#229:                               # %cont_BB2058
	movzbl	%al, %eax
	cmpl	$1, %eax
	movq	%rdi, %r15
	movl	-76(%rbp), %esi         # 4-byte Reload
	jne	.LBB0_231
# BB#230:                               # %if.then1215
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
                                        # kill: EAX<def> EAX<kill> RAX<kill>
	shll	$4, %eax
	addl	%esi, %eax
	movslq	%eax, %rax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movb	$1, 3196(%r15,%rax)
.LBB0_231:                              # %for.inc1222
	incl	%esi
	jmp	.LBB0_223
.LBB0_237:                              # %if.end1225
	movq	%r15, %rbx
	movq	-120(%rbp), %rax        # 8-byte Reload
	incl	%eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	jmp	.LBB0_219
	.align	16, 0x90
.LBB0_265:                              # %while.end1413
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movslq	%edi, %rax
	andb	$1, %r11b
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r11b, -16(%rcx)
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movb	%cl, 25886(%rsi,%rax)
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%rsi, %r10
	incl	%edi
	xorb	%al, %al
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	%al, -91(%rbp)          # 1-byte Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	movl	%edi, %ecx
.LBB0_266:                              # %for.cond1346
	xorb	%al, %al
	testb	%al, %al
	movb	$0, %al
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB0_736
# BB#267:                               # %cont_BB2269
	cmpl	-128(%rbp), %ecx        # 4-byte Folded Reload
	jl	.LBB0_268
# BB#283:
	xorb	%al, %al
	xorl	%esi, %esi
	andb	$1, %r13b
	jmp	.LBB0_284
.LBB0_268:
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	movl	%ecx, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%r10, %r15
	.align	16, 0x90
.LBB0_269:                              # %sw.bb1351
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_270 Depth 2
	movb	-89(%rbp), %r8b         # 1-byte Reload
	movb	-90(%rbp), %r10b        # 1-byte Reload
	movb	-91(%rbp), %al          # 1-byte Reload
	movb	%al, -152(%rbp)         # 1-byte Spill
	movb	-81(%rbp), %r11b        # 1-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	%al, %r14b
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$32, 8(%r15)
	xorb	%r9b, %r9b
	jmp	.LBB0_270
	.align	16, 0x90
.LBB0_282:                              # %if.then1397
                                        #   in Loop: Header=BB0_270 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rsi)
	movl	16(%rax), %edi
	movb	%r12b, -16(%rsi)
	incl	%edi
	movl	%edi, 16(%rax)
	.align	16, 0x90
.LBB0_270:                              # %while.body1354
                                        #   Parent Loop BB0_269 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rax)
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#271:                               # %cont_BB2286
                                        #   in Loop: Header=BB0_270 Depth=2
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB0_272
# BB#277:                               # %if.end1368
                                        #   in Loop: Header=BB0_270 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	testb	%r9b, %r9b
	movb	%r12b, -16(%rsi)
	jne	.LBB0_736
# BB#278:                               # %cont_BB2309
                                        #   in Loop: Header=BB0_270 Depth=2
	movl	8(%rax), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB0_279
# BB#280:                               # %if.end1374
                                        #   in Loop: Header=BB0_270 Depth=2
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rcx), %rsi
	shll	$8, %eax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rbx)
	movq	(%rsi), %rsi
	movzbl	(%rsi), %ebx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %ebx
	movl	%ebx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %esi
	movb	%r12b, -16(%rax)
	addl	$8, %esi
	movl	%esi, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rbx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rbx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rsi)
	movl	8(%rax), %edi
	movb	%r12b, -16(%rsi)
	decl	%edi
	movl	%edi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rsi)
	movl	12(%rax), %edi
	movb	%r12b, -16(%rsi)
	incl	%edi
	movl	%edi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	testb	%r9b, %r9b
	movb	%r12b, -16(%rsi)
	jne	.LBB0_736
# BB#281:                               # %cont_BB2357
                                        #   in Loop: Header=BB0_270 Depth=2
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_270
	jmp	.LBB0_282
.LBB0_272:                              # %if.then1358
                                        #   in Loop: Header=BB0_269 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rsi)
	movl	36(%rdi), %ebx
	decl	%ecx
	movb	%r12b, -16(%rsi)
	decl	%ebx
	movl	%ebx, 36(%rdi)
	movq	%rdi, %rsi
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	andl	$1, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#273:                               # %cont_BB2368
                                        #   in Loop: Header=BB0_269 Depth=1
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.LBB0_265
# BB#274:                               # %if.end1407
                                        #   in Loop: Header=BB0_269 Depth=1
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	jne	.LBB0_736
# BB#275:                               # %cont_BB2372
                                        #   in Loop: Header=BB0_269 Depth=1
	movl	-76(%rbp), %ecx         # 4-byte Reload
	incl	%ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	$-4, %eax
	cmpl	-96(%rbp), %ecx         # 4-byte Folded Reload
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	movb	$0, %cl
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	jl	.LBB0_269
# BB#276:
	movb	%r8b, -89(%rbp)         # 1-byte Spill
	movb	%r10b, -90(%rbp)        # 1-byte Spill
	movb	-152(%rbp), %cl         # 1-byte Reload
	movb	%cl, -91(%rbp)          # 1-byte Spill
	movb	%r11b, -81(%rbp)        # 1-byte Spill
	jmp	.LBB0_734
.LBB0_279:
	movb	%r8b, -89(%rbp)         # 1-byte Spill
	movb	%r10b, -90(%rbp)        # 1-byte Spill
	movb	-152(%rbp), %dl         # 1-byte Reload
	movb	%dl, -91(%rbp)          # 1-byte Spill
	movb	%r11b, -81(%rbp)        # 1-byte Spill
	movq	%rcx, %r15
	jmp	.LBB0_734
	.align	16, 0x90
.LBB0_738:                              # %for.body1426
                                        #   in Loop: Header=BB0_284 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r13b, -16(%rcx)
	movb	$0, -16(%rcx)
	movzbl	%dil, %edi
	movb	%dil, -46(%rbp,%rdi)
	incb	%dil
	movq	%rdi, -56(%rbp)         # 8-byte Spill
.LBB0_284:                              # %for.cond1422
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_736
# BB#285:                               # %cont_BB2382
                                        #   in Loop: Header=BB0_284 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movzbl	%dil, %ecx
	cmpl	-96(%rbp), %ecx         # 4-byte Folded Reload
	jl	.LBB0_738
# BB#286:
	xorb	%r9b, %r9b
	jmp	.LBB0_287
	.align	16, 0x90
.LBB0_307:                              # %while.end1452
                                        #   in Loop: Header=BB0_287 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rsi)
	andb	$1, %dl
	movb	%dl, -16(%rsi)
	movb	%r8b, -46(%rbp)
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rsi)
	movb	%dl, -16(%rsi)
	movb	%r8b, 7884(%r10,%r11)
	incl	%r11d
	movq	%r11, %rsi
.LBB0_287:                              # %for.cond1432
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_304 Depth 2
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#288:                               # %cont_BB2389
                                        #   in Loop: Header=BB0_287 Depth=1
	movq	%rsi, %rax
	cmpl	-128(%rbp), %eax        # 4-byte Folded Reload
	jge	.LBB0_289
# BB#303:                               # %for.body1435
                                        #   in Loop: Header=BB0_287 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movslq	%eax, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	25886(%r10,%rax), %esi
	movq	%rax, %r11
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r13b, -16(%rdx)
	movb	-46(%rbp,%rsi), %r8b
	movb	-16(%rdx), %dl
	jmp	.LBB0_304
	.align	16, 0x90
.LBB0_306:                              # %while.body1444
                                        #   in Loop: Header=BB0_304 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r13b, -16(%rcx)
	leal	-1(%rdi), %ecx
	movslq	%ecx, %rcx
	movb	-46(%rbp,%rcx), %bl
	movb	%dil, %sil
	decb	%sil
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r13b, -16(%rcx)
	movb	%r13b, -16(%rcx)
	movb	%bl, -46(%rbp,%rdi)
.LBB0_304:                              # %while.cond
                                        #   Parent Loop BB0_287 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#305:                               # %cont_BB2403
                                        #   in Loop: Header=BB0_304 Depth=2
	movzbl	%sil, %edi
	testl	%edi, %edi
	jle	.LBB0_307
	jmp	.LBB0_306
.LBB0_289:
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	.align	16, 0x90
.LBB0_290:                              # %for.cond1459
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	jne	.LBB0_736
# BB#291:                               # %cont_BB2427
	movl	-88(%rbp), %eax         # 4-byte Reload
	cmpl	-96(%rbp), %eax         # 4-byte Folded Reload
	jl	.LBB0_292
# BB#342:                               # %for.end1658
	leaq	43888(%r10), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	xorb	%r13b, %r13b
	jmp	.LBB0_343
.LBB0_292:
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
                                        # kill: AL<def> AL<kill> RAX<def>
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r10, %r15
.LBB0_293:                              # %sw.bb1463
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$33, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_294
	.align	16, 0x90
.LBB0_312:                              # %if.then1509
                                        #   in Loop: Header=BB0_294 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_294:                              # %while.body1466
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#295:                               # %cont_BB2441
                                        #   in Loop: Header=BB0_294 Depth=1
	movq	%r15, %rsi
	movl	36(%rsi), %eax
	cmpl	$5, %eax
	jge	.LBB0_296
# BB#308:                               # %if.end1480
                                        #   in Loop: Header=BB0_294 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#309:                               # %cont_BB2463
                                        #   in Loop: Header=BB0_294 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#310:                               # %if.end1486
                                        #   in Loop: Header=BB0_294 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#311:                               # %cont_BB2511
                                        #   in Loop: Header=BB0_294 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_294
	jmp	.LBB0_312
.LBB0_296:                              # %if.then1470
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rsi), %edi
	movb	%r12b, %al
	orb	%al, %al
	movb	%al, -139(%rbp)         # 1-byte Spill
	xorl	%ebx, %ebx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %edx
	addl	$-5, %ecx
	movb	%r12b, -16(%rax)
	addl	$-5, %edx
	movl	%edx, 36(%rsi)
	movq	%rsi, %r10
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edi
	andl	$31, %edi
	movl	%edi, -184(%rbp)        # 4-byte Spill
	jmp	.LBB0_297
	.align	16, 0x90
.LBB0_355:                              # %for.end1701
                                        #   in Loop: Header=BB0_343 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	-88(%rbp), %rcx         # 4-byte Folded Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	imulq	$258, %rcx, %rax        # imm = 0x102
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	movq	%r10, %r14
	leaq	45436(%r14,%rcx), %rdi
	leaq	51628(%r14,%rcx), %rsi
	leaq	57820(%r14,%rcx), %rdx
	leaq	43888(%r14,%rax), %rcx
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rax)
	subq	$16, %rsp
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r15d, %r8d
	callq	BZ2_hbCreateDecodeTables
	addq	$16, %rsp
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r15d, 64012(%r14,%rax,4)
	movq	%r14, %r10
	addq	$258, -56(%rbp)         # 8-byte Folded Spill
                                        # imm = 0x102
	incl	-88(%rbp)               # 4-byte Folded Spill
.LBB0_343:                              # %for.cond1659
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_346 Depth 2
	testb	%r13b, %r13b
	jne	.LBB0_736
# BB#344:                               # %cont_BB2748
                                        #   in Loop: Header=BB0_343 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	cmpl	-96(%rbp), %eax         # 4-byte Folded Reload
	jge	.LBB0_356
# BB#345:                               #   in Loop: Header=BB0_343 Depth=1
	xorl	%eax, %eax
	movl	$32, %r15d
	movq	-56(%rbp), %rcx         # 8-byte Reload
	xorl	%r9d, %r9d
	jmp	.LBB0_346
	.align	16, 0x90
.LBB0_354:                              # %for.inc1699
                                        #   in Loop: Header=BB0_346 Depth=2
	incq	%rcx
	incl	%eax
.LBB0_346:                              # %for.cond1663
                                        #   Parent Loop BB0_343 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r13b
	jne	.LBB0_736
# BB#347:                               # %cont_BB2754
                                        #   in Loop: Header=BB0_346 Depth=2
	cmpl	-68(%rbp), %eax         # 4-byte Folded Reload
	jge	.LBB0_355
# BB#348:                               # %for.body1666
                                        #   in Loop: Header=BB0_346 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r13b, %r13b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#349:                               # %cont_BB2765
                                        #   in Loop: Header=BB0_346 Depth=2
	movzbl	(%rcx), %edx
	cmpl	%r9d, %edx
	jle	.LBB0_351
# BB#350:                               # %if.then1675
                                        #   in Loop: Header=BB0_346 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movzbl	(%rcx), %r9d
.LBB0_351:                              # %if.end1682
                                        #   in Loop: Header=BB0_346 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r13b, %r13b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#352:                               # %cont_BB2785
                                        #   in Loop: Header=BB0_346 Depth=2
	movzbl	(%rcx), %edx
	cmpl	%r15d, %edx
	jge	.LBB0_354
# BB#353:                               # %if.then1691
                                        #   in Loop: Header=BB0_346 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movzbl	(%rcx), %r15d
	jmp	.LBB0_354
.LBB0_356:                              # %for.end1719
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	-16(%rax), %al
	movb	%al, -170(%rbp)         # 1-byte Spill
	movl	3192(%r10), %eax
	xorl	%edx, %edx
	incl	%eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movb	%r12b, -169(%rbp)       # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	imull	$100000, 40(%r10), %eax # imm = 0x186A0
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%r10, %r15
	xorb	%al, %al
	jmp	.LBB0_357
	.align	16, 0x90
.LBB0_359:                              # %for.body1727
                                        #   in Loop: Header=BB0_357 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 68(%r15,%rsi,4)
	incq	%rsi
	movq	%rsi, %rdx
.LBB0_357:                              # %for.cond1724
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_736
# BB#358:                               # %cont_BB2827
                                        #   in Loop: Header=BB0_357 Depth=1
	movq	%rdx, %rsi
	cmpl	$255, %esi
	jle	.LBB0_359
# BB#360:                               # %for.end1732
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	leaq	3724(%r15), %r8
	movl	$4095, %ecx             # imm = 0xFFF
	movl	$15, %r10d
	movb	$-1, %r9b
	xorb	%r11b, %r11b
	jmp	.LBB0_361
	.align	16, 0x90
.LBB0_367:                              # %for.end1752
                                        #   in Loop: Header=BB0_361 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	%ecx, %ecx
	addq	%rdi, %rcx
	leal	1(%rcx), %esi
	movslq	%r10d, %rdi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rbx)
	movb	$0, -16(%rbx)
	movl	%esi, 7820(%r15,%rdi,4)
	addb	$-16, %r9b
	decl	%r10d
.LBB0_361:                              # %for.cond1736
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_364 Depth 2
	testb	%r11b, %r11b
	jne	.LBB0_736
# BB#362:                               # %cont_BB2836
                                        #   in Loop: Header=BB0_361 Depth=1
	testl	%r10d, %r10d
	js	.LBB0_368
# BB#363:                               # %for.body1739
                                        #   in Loop: Header=BB0_361 Depth=1
	movslq	%ecx, %rsi
	addq	%r8, %rsi
	xorl	%edi, %edi
	movb	%r9b, %bl
	jmp	.LBB0_364
	.align	16, 0x90
.LBB0_366:                              # %for.body1743
                                        #   in Loop: Header=BB0_364 Depth=2
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rdx)
	movb	$0, -16(%rdx)
	movb	%bl, (%rsi,%rdi)
	decq	%rdi
	decb	%bl
.LBB0_364:                              # %for.cond1740
                                        #   Parent Loop BB0_361 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r11b, %r11b
	jne	.LBB0_736
# BB#365:                               # %cont_BB2841
                                        #   in Loop: Header=BB0_364 Depth=2
	leal	15(%rdi), %edx
	testl	%edx, %edx
	js	.LBB0_367
	jmp	.LBB0_366
.LBB0_368:                              # %for.end1758
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -161(%rbp)          # 1-byte Folded Spill
	jne	.LBB0_736
# BB#369:                               # %cont_BB2857
	xorl	%eax, %eax
	movb	$0, %cl
	testb	%cl, %cl
	je	.LBB0_371
# BB#370:
	movl	$-1, -160(%rbp)         # 4-byte Folded Spill
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	-204(%rbp), %edx        # 4-byte Reload
	movb	-138(%rbp), %bl         # 1-byte Reload
	jmp	.LBB0_375
.LBB0_371:                              # %if.then1761
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -161(%rbp)          # 1-byte Folded Spill
	jne	.LBB0_736
# BB#372:                               # %cont_BB2861
	xorl	%edx, %edx
	cmpl	-128(%rbp), %edx        # 4-byte Folded Reload
	jl	.LBB0_374
# BB#373:                               # %if.then1765
	movl	$0, -160(%rbp)          # 4-byte Folded Spill
	movl	$-4, %eax
	xorl	%ecx, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movl	$0, -168(%rbp)          # 4-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	xorb	%r14b, %r14b
	jmp	.LBB0_734
.LBB0_374:                              # %if.end1766
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	%edx, %rax
	movl	$0, -160(%rbp)          # 4-byte Folded Spill
	movl	$50, %esi
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	7884(%r15,%rax), %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movb	-16(%rcx), %al
	movb	%al, -153(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	imulq	$1032, %rdx, %rax       # imm = 0x408
	leaq	51628(%r15,%rax), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	57820(%r15,%rax), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leaq	45436(%r15,%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64012(%r15,%rdx,4), %edx
	movb	-16(%rax), %bl
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
	movb	%r12b, -16(%rax)
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
	movb	%r12b, -16(%rax)
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
	movb	%r12b, -16(%rax)
	movb	%r12b, -140(%rbp)       # 1-byte Spill
	movb	%r12b, -141(%rbp)       # 1-byte Spill
	movb	%r12b, -142(%rbp)       # 1-byte Spill
.LBB0_375:                              # %if.end1786
	movb	%bl, -138(%rbp)         # 1-byte Spill
	movl	%edx, -204(%rbp)        # 4-byte Spill
	decl	%esi
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
	movb	%bl, -137(%rbp)         # 1-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	xorb	%al, %al
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_376:                              # %sw.bb1788
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$36, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_377
	.align	16, 0x90
.LBB0_393:                              # %if.then1836
                                        #   in Loop: Header=BB0_377 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_377:                              # %while.body1791
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#378:                               # %cont_BB2917
                                        #   in Loop: Header=BB0_377 Depth=1
	movq	%r15, %rbx
	movl	36(%rbx), %eax
	movl	-72(%rbp), %r9d         # 4-byte Reload
	cmpl	%r9d, %eax
	jge	.LBB0_379
# BB#389:                               # %if.end1807
                                        #   in Loop: Header=BB0_377 Depth=1
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#390:                               # %cont_BB2941
                                        #   in Loop: Header=BB0_377 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#391:                               # %if.end1813
                                        #   in Loop: Header=BB0_377 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#392:                               # %cont_BB2989
                                        #   in Loop: Header=BB0_377 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_377
	jmp	.LBB0_393
.LBB0_379:                              # %if.then1795
	movb	%r12b, %al
	movb	-137(%rbp), %sil        # 1-byte Reload
	orb	%sil, %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, %cl
	orb	%al, %cl
	orb	%sil, %cl
	movb	%cl, -154(%rbp)         # 1-byte Spill
	movb	%r9b, %cl
	movl	$1, %r8d
	shll	%cl, %r8d
	movl	32(%rbx), %edx
	movq	%rsp, %rcx
	decl	%r8d
	andb	$1, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rbx), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	subl	%r9d, %ecx
	movl	36(%rbx), %edi
	movb	%al, -16(%rsi)
	subl	%r9d, %edi
	movl	%edi, 36(%rbx)
	movq	%rbx, %r15
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	andl	%r8d, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_380
	.align	16, 0x90
.LBB0_297:                              # %for.cond1515
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#298:                               # %cont_BB2528
	movq	%rbx, %rax
	cmpl	-68(%rbp), %eax         # 4-byte Folded Reload
	jl	.LBB0_299
# BB#341:                               # %for.inc1656
	movq	%rax, -120(%rbp)        # 8-byte Spill
	incl	-88(%rbp)               # 4-byte Folded Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	jmp	.LBB0_290
.LBB0_299:
	movq	%rax, -120(%rbp)        # 8-byte Spill
	.align	16, 0x90
.LBB0_300:                              # %while.body1520
	xorb	%r14b, %r14b
	testb	%r14b, %r14b
	jne	.LBB0_736
# BB#301:                               # %cont_BB2538
	movl	$-4, %eax
	cmpl	$0, -184(%rbp)          # 4-byte Folded Reload
	jle	.LBB0_302
# BB#313:                               # %lor.lhs.false1523
	xorb	%al, %al
	testb	%al, %al
	movb	$0, %al
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB0_736
# BB#314:                               # %cont_BB2541
	movl	$-4, %eax
	cmpl	$20, -184(%rbp)         # 4-byte Folded Reload
	movq	%r10, %r15
	jg	.LBB0_315
.LBB0_316:                              # %sw.bb1528
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$34, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_317
	.align	16, 0x90
.LBB0_333:                              # %if.then1575
                                        #   in Loop: Header=BB0_317 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_317:                              # %while.body1531
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#318:                               # %cont_BB2555
                                        #   in Loop: Header=BB0_317 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB0_319
# BB#329:                               # %if.end1546
                                        #   in Loop: Header=BB0_317 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#330:                               # %cont_BB2578
                                        #   in Loop: Header=BB0_317 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#331:                               # %if.end1552
                                        #   in Loop: Header=BB0_317 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#332:                               # %cont_BB2626
                                        #   in Loop: Header=BB0_317 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_317
	jmp	.LBB0_333
.LBB0_319:                              # %if.then1535
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	decl	%ecx
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 36(%rdi)
	movq	%rdi, %rsi
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	andl	$1, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#320:                               # %cont_BB2637
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.LBB0_340
# BB#321:
	movq	%rsi, %r15
.LBB0_322:                              # %sw.bb1586
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$35, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_323
	.align	16, 0x90
.LBB0_338:                              # %if.then1633
                                        #   in Loop: Header=BB0_323 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_323:                              # %while.body1589
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#324:                               # %cont_BB2651
                                        #   in Loop: Header=BB0_323 Depth=1
	movq	%r15, %rdi
	movl	36(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB0_325
# BB#334:                               # %if.end1604
                                        #   in Loop: Header=BB0_323 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#335:                               # %cont_BB2674
                                        #   in Loop: Header=BB0_323 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#336:                               # %if.end1610
                                        #   in Loop: Header=BB0_323 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#337:                               # %cont_BB2722
                                        #   in Loop: Header=BB0_323 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_323
	jmp	.LBB0_338
.LBB0_325:                              # %if.then1593
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rdi), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rdi), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	36(%rdi), %esi
	decl	%ecx
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 36(%rdi)
	movq	%rdi, %r10
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	andl	$1, %eax
	xorb	%cl, %cl
	testb	%cl, %cl
	jne	.LBB0_736
# BB#326:                               # %cont_BB2733
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.LBB0_327
# BB#339:                               # %if.else1644
	decl	-184(%rbp)              # 4-byte Folded Spill
	jmp	.LBB0_328
.LBB0_302:
	movq	%r10, %r15
	jmp	.LBB0_734
.LBB0_315:
	movb	$0, %cl
	jmp	.LBB0_733
.LBB0_340:                              # %while.end1647
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	-88(%rbp), %rax         # 4-byte Folded Reload
	imulq	$258, %rax, %rax        # imm = 0x102
	movq	%rsp, %rdx
	movq	%rsi, %rdi
	addq	%rdi, %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movslq	%ecx, %r8
	movb	-139(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%bl, -16(%rdx)
	movl	-184(%rbp), %edx        # 4-byte Reload
	movb	%dl, 43888(%r8,%rax)
	movq	%rdi, %r10
	incl	%ecx
	movq	%rcx, %rbx
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	jmp	.LBB0_297
.LBB0_327:                              # %if.then1642
	incl	-184(%rbp)              # 4-byte Folded Spill
.LBB0_328:                              # %if.then1642
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	jmp	.LBB0_300
	.align	16, 0x90
.LBB0_380:                              # %while.body1843
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#381:                               # %cont_BB3019
	movl	$-4, %eax
	cmpl	$20, -72(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_732
# BB#382:                               # %if.end1847
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-142(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#383:                               # %cont_BB3026
	movl	-72(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rcx
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	(%rax,%rcx,4), %eax
	cmpl	%eax, -104(%rbp)        # 4-byte Folded Reload
	jg	.LBB0_384
# BB#399:                               # %while.end1909
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-141(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#400:                               # %cont_BB3141
	movl	-104(%rbp), %esi        # 4-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	subl	(%rax,%rcx,4), %esi
	movl	$-4, %eax
	testl	%esi, %esi
	js	.LBB0_732
# BB#401:                               # %lor.lhs.false1915
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#402:                               # %cont_BB3149
	movl	-104(%rbp), %edi        # 4-byte Reload
	movl	%edi, %esi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	subl	(%rbx,%rcx,4), %esi
	movl	$-4, %eax
	cmpl	$257, %esi              # imm = 0x101
	jg	.LBB0_403
# BB#404:                               # %if.end1922
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rax)
	movl	(%rbx,%rcx,4), %eax
	movb	-140(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rcx)
	movl	%edi, %edx
	movl	%edi, -104(%rbp)        # 4-byte Spill
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	-16(%rcx), %al
	movb	%al, -162(%rbp)         # 1-byte Spill
	jmp	.LBB0_405
.LBB0_384:                              # %if.end1853
	incl	%edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB0_385:                              # %sw.bb1855
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$37, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_386
	.align	16, 0x90
.LBB0_398:                              # %if.then1901
                                        #   in Loop: Header=BB0_386 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_386:                              # %while.body1858
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#387:                               # %cont_BB3054
                                        #   in Loop: Header=BB0_386 Depth=1
	movq	%r15, %rsi
	movl	36(%rsi), %eax
	testl	%eax, %eax
	jg	.LBB0_388
# BB#394:                               # %if.end1872
                                        #   in Loop: Header=BB0_386 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#395:                               # %cont_BB3076
                                        #   in Loop: Header=BB0_386 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#396:                               # %if.end1878
                                        #   in Loop: Header=BB0_386 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#397:                               # %cont_BB3124
                                        #   in Loop: Header=BB0_386 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_386
	jmp	.LBB0_398
.LBB0_388:                              # %if.then1862
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rsi), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %edx
	decl	%ecx
	movb	%r12b, -16(%rax)
	decl	%edx
	movl	%edx, 36(%rsi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edi
	andl	$1, %edi
	movq	%rsi, %r15
	movl	-104(%rbp), %eax        # 4-byte Reload
	addl	%eax, %eax
	orl	%edi, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%edi, -208(%rbp)        # 4-byte Spill
	xorb	%al, %al
	movb	$0, -141(%rbp)          # 1-byte Folded Spill
	movb	$0, -142(%rbp)          # 1-byte Folded Spill
	movb	$0, -138(%rbp)          # 1-byte Folded Spill
	movb	$0, -153(%rbp)          # 1-byte Folded Spill
	movb	%al, -177(%rbp)         # 1-byte Spill
	movb	$0, -154(%rbp)          # 1-byte Folded Spill
	movb	%al, -137(%rbp)         # 1-byte Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	%al, -98(%rbp)          # 1-byte Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movb	$0, -161(%rbp)          # 1-byte Folded Spill
	movb	%al, -170(%rbp)         # 1-byte Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
                                        # kill: AL<def> AL<kill> RAX<def>
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, -140(%rbp)          # 1-byte Folded Spill
	jmp	.LBB0_380
	.align	16, 0x90
.LBB0_403:
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movl	%edi, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_732
	.align	16, 0x90
.LBB0_405:                              # %while.body1929
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#406:                               # %cont_BB3184
	movl	-224(%rbp), %eax        # 4-byte Reload
	cmpl	%eax, -124(%rbp)        # 4-byte Folded Reload
	jne	.LBB0_407
# BB#554:                               # %while.end2553
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#555:                               # %cont_BB4175
	movl	56(%r15), %ecx
	movl	$-4, %eax
	testl	%ecx, %ecx
	js	.LBB0_732
# BB#556:                               # %lor.lhs.false2557
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#557:                               # %cont_BB4181
	movl	56(%r15), %ecx
	movl	$-4, %eax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB0_732
# BB#558:                               # %if.end2562
	xorl	%ecx, %ecx
	xorb	%al, %al
	jmp	.LBB0_559
.LBB0_407:                              # %if.end1933
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#408:                               # %cont_BB3187
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	je	.LBB0_411
# BB#409:                               # %lor.lhs.false1936
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#410:                               # %cont_BB3190
	cmpl	$1, -124(%rbp)          # 4-byte Folded Reload
	je	.LBB0_411
# BB#482:                               # %if.else2178
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#483:                               # %cont_BB3615
	movl	$-4, %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	-108(%rbp), %ecx        # 4-byte Folded Reload
	jge	.LBB0_732
# BB#484:                               # %if.end2182
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#485:                               # %cont_BB3619
	movl	-124(%rbp), %edi        # 4-byte Reload
	leal	-1(%rdi), %eax
	cmpl	$15, %eax
	ja	.LBB0_494
# BB#486:                               # %if.then2196
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	xorl	%esi, %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movslq	7820(%r15), %rbx
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	leal	(%rdi,%rbx), %edi
	addl	%ebx, %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	3724(%r15,%rax), %al
	movb	%al, -217(%rbp)         # 1-byte Spill
	movq	%r15, %r8
	movb	-16(%rcx), %al
	movb	%al, -230(%rbp)         # 1-byte Spill
	jmp	.LBB0_487
	.align	16, 0x90
.LBB0_567:                              # %for.inc2580
                                        #   in Loop: Header=BB0_559 Depth=1
	incq	%rsi
	movq	%rsi, %rcx
.LBB0_559:                              # %for.cond2563
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_736
# BB#560:                               # %cont_BB4185
                                        #   in Loop: Header=BB0_559 Depth=1
	cmpl	$255, %ecx
	jg	.LBB0_568
# BB#561:                               # %for.body2566
                                        #   in Loop: Header=BB0_559 Depth=1
	movq	%rcx, %rsi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#562:                               # %cont_BB4193
                                        #   in Loop: Header=BB0_559 Depth=1
	movl	68(%r15,%rsi,4), %ecx
	testl	%ecx, %ecx
	js	.LBB0_565
# BB#563:                               # %lor.lhs.false2572
                                        #   in Loop: Header=BB0_559 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#564:                               # %cont_BB4201
                                        #   in Loop: Header=BB0_559 Depth=1
	movl	68(%r15,%rsi,4), %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	jle	.LBB0_567
	jmp	.LBB0_565
.LBB0_411:
	movl	$1, -176(%rbp)          # 4-byte Folded Spill
	movl	$-1, -80(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_412
.LBB0_494:                              # %if.else2260
	movl	%edi, -124(%rbp)        # 4-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	%eax, %edx
	shrl	$4, %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	andl	$15, %eax
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	7820(%r15,%rdx,4), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movb	3724(%r15,%rax), %bl
	movb	%bl, -217(%rbp)         # 1-byte Spill
	movq	%r15, %rbx
	movb	-16(%rcx), %r8b
	xorb	%r9b, %r9b
	jmp	.LBB0_495
	.align	16, 0x90
.LBB0_489:                              # %while.body2206
                                        #   in Loop: Header=BB0_487 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	leal	-2(%rdi,%rsi), %eax
	movslq	%eax, %rax
	leal	-4(%rdi,%rsi), %r14d
	leal	-5(%rdi,%rsi), %r13d
	leal	-3(%rdi,%rsi), %r9d
	leal	-4(%rdi,%rsi), %r15d
	leal	-2(%rdi,%rsi), %r10d
	leal	-3(%rdi,%rsi), %r11d
	leal	-1(%rdi,%rsi), %ecx
	addl	$-4, %esi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdx)
	movq	%r8, %rbx
	movb	3724(%rbx,%rax), %r8b
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movslq	%ecx, %rcx
	movslq	%r11d, %r11
	movslq	%r10d, %r10
	movslq	%r15d, %r15
	movslq	%r9d, %r9
	movslq	%r13d, %r13
	movslq	%r14d, %r14
	movb	%r12b, -16(%rax)
	movb	%r12b, -16(%rax)
	movb	%r8b, 3724(%rbx,%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	3724(%rbx,%r11), %dl
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, -16(%rax)
	movb	%dl, 3724(%rbx,%r10)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	3724(%rbx,%r15), %cl
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, -16(%rax)
	movb	%cl, 3724(%rbx,%r9)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	3724(%rbx,%r13), %al
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movb	%al, 3724(%rbx,%r14)
	movq	%rbx, %r8
.LBB0_487:                              # %while.cond2203
                                        # =>This Inner Loop Header: Depth=1
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#488:                               # %cont_BB3633
                                        #   in Loop: Header=BB0_487 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	leal	-1(%rax,%rsi), %eax
	cmpl	$4, %eax
	jae	.LBB0_489
# BB#490:                               # %while.end2241
	addl	-124(%rbp), %esi        # 4-byte Folded Reload
	xorb	%al, %al
	jmp	.LBB0_491
.LBB0_568:                              # %for.end2582
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	$275, %eax              # imm = 0x113
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 1096(%r15)
	xorb	%cl, %cl
	movq	%rax, %rdx
	jmp	.LBB0_569
	.align	16, 0x90
.LBB0_497:                              # %while.body2274
                                        #   in Loop: Header=BB0_495 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movb	3723(%rbx,%rax), %cl
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movb	%cl, 3724(%rbx,%rax)
	leaq	-1(%rax), %rax
.LBB0_495:                              # %while.cond2268
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	testb	%r9b, %r9b
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#496:                               # %cont_BB3715
                                        #   in Loop: Header=BB0_495 Depth=1
	movslq	%edx, %rcx
	movl	7820(%rbx,%rcx,4), %edi
	cmpl	%edi, %eax
	jg	.LBB0_497
# BB#498:                               # %while.end2283
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rax)
	movl	7820(%rbx,%rcx,4), %edi
	movb	%r12b, -16(%rax)
	incl	%edi
	movl	%edi, 7820(%rbx,%rcx,4)
	xorb	%r9b, %r9b
	jmp	.LBB0_499
	.align	16, 0x90
.LBB0_493:                              # %while.body2245
                                        #   in Loop: Header=BB0_491 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rdx)
	movq	-152(%rbp), %rdi        # 8-byte Reload
	leal	-1(%rdi,%rsi), %edx
	leal	-2(%rdi,%rsi), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	3724(%r8,%rsi), %bl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	movb	%bl, 3724(%r8,%rdx)
	movl	%ecx, %esi
.LBB0_491:                              # %while.cond2242
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_736
# BB#492:                               # %cont_BB3678
                                        #   in Loop: Header=BB0_491 Depth=1
	leal	-1(%rsi), %ecx
	testl	%ecx, %ecx
	jne	.LBB0_493
# BB#513:                               # %while.end2256
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	-230(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%dl, -16(%rax)
	movq	%r8, %rbx
	movb	-217(%rbp), %al         # 1-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movb	%al, 3724(%rbx,%rcx)
	jmp	.LBB0_514
	.align	16, 0x90
.LBB0_739:                              # %for.body2587
                                        #   in Loop: Header=BB0_569 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	-1032(%r15,%rdx,4), %esi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movl	%esi, (%r15,%rdx,4)
	incq	%rdx
.LBB0_569:                              # %for.cond2584
                                        # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	jne	.LBB0_736
# BB#570:                               # %cont_BB4208
                                        #   in Loop: Header=BB0_569 Depth=1
	leal	-274(%rdx), %esi
	cmpl	$256, %esi              # imm = 0x100
	jle	.LBB0_739
# BB#571:
	xorb	%cl, %cl
	movb	%r12b, %dl
	orb	%dl, %dl
	movb	%dl, -56(%rbp)          # 1-byte Spill
	movb	-56(%rbp), %bl          # 1-byte Reload
	jmp	.LBB0_572
	.align	16, 0x90
.LBB0_501:                              # %while.body2291
                                        #   in Loop: Header=BB0_499 Depth=1
	movb	%r12b, -16(%rax)
	leaq	-1(%rdx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movl	7820(%rbx,%rdx,4), %edi
	movb	%r12b, -16(%rcx)
	decl	%edi
	movl	%edi, 7820(%rbx,%rdx,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movl	7816(%rbx,%rdx,4), %ecx
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	addl	$15, %ecx
	movslq	%ecx, %rcx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movb	3724(%rbx,%rcx), %cl
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movslq	7820(%rbx,%rdx,4), %rdx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movb	%cl, 3724(%rbx,%rdx)
	movq	%rax, %rdx
.LBB0_499:                              # %while.cond2288
                                        # =>This Inner Loop Header: Depth=1
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#500:                               # %cont_BB3735
                                        #   in Loop: Header=BB0_499 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testl	%edx, %edx
	jg	.LBB0_501
# BB#502:                               # %while.end2312
	movb	%r12b, -16(%rax)
	andb	$1, %r8b
	xorb	%al, %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	7820(%rbx), %edx
	movb	%r12b, -16(%rcx)
	decl	%edx
	movl	%edx, 7820(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movslq	7820(%rbx), %rcx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%r8b, -16(%rdx)
	movb	-217(%rbp), %dl         # 1-byte Reload
	movb	%dl, 3724(%rbx,%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#503:                               # %cont_BB3782
	movl	7820(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB0_514
# BB#504:                               # %if.then2325
	leaq	3724(%rbx), %r8
	movq	%rbx, %rsi
	movl	$4095, %r10d            # imm = 0xFFF
	movl	$15, %r11d
	xorb	%r9b, %r9b
	jmp	.LBB0_505
	.align	16, 0x90
.LBB0_574:                              # %for.body2601
                                        #   in Loop: Header=BB0_572 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	-4(%r15,%rax,4), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	(%r15,%rax,4), %edi
	movb	%bl, -16(%rsi)
	addl	%edx, %edi
	movl	%edi, (%r15,%rax,4)
	incq	%rax
.LBB0_572:                              # %for.cond2598
                                        # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	jne	.LBB0_736
# BB#573:                               # %cont_BB4222
                                        #   in Loop: Header=BB0_572 Depth=1
	leal	-274(%rax), %edx
	cmpl	$256, %edx              # imm = 0x100
	jle	.LBB0_574
# BB#575:                               # %for.end2612
	xorl	%ecx, %ecx
	xorb	%al, %al
	jmp	.LBB0_576
	.align	16, 0x90
.LBB0_512:                              # %for.end2347
                                        #   in Loop: Header=BB0_505 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movl	%r10d, %r10d
	addq	%rax, %r10
	leal	1(%r10), %eax
	movslq	%r11d, %rcx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	$0, -16(%rdi)
	movl	%eax, 7820(%rsi,%rcx,4)
	decl	%r11d
.LBB0_505:                              # %for.cond2326
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_509 Depth 2
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#506:                               # %cont_BB3787
                                        #   in Loop: Header=BB0_505 Depth=1
	testl	%r11d, %r11d
	js	.LBB0_507
# BB#508:                               # %for.body2329
                                        #   in Loop: Header=BB0_505 Depth=1
	movslq	%r10d, %rdi
	addq	%r8, %rdi
	xorl	%eax, %eax
	jmp	.LBB0_509
	.align	16, 0x90
.LBB0_511:                              # %for.body2333
                                        #   in Loop: Header=BB0_509 Depth=2
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rcx)
	movslq	%r11d, %rcx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rbx)
	movl	7820(%rsi,%rcx,4), %ecx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rbx)
	leal	15(%rax,%rcx), %ecx
	movslq	%ecx, %rcx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rbx)
	movb	3724(%rsi,%rcx), %cl
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rbx)
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movb	%cl, (%rdi,%rax)
	decq	%rax
.LBB0_509:                              # %for.cond2330
                                        #   Parent Loop BB0_505 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#510:                               # %cont_BB3792
                                        #   in Loop: Header=BB0_509 Depth=2
	leal	15(%rax), %ecx
	testl	%ecx, %ecx
	js	.LBB0_512
	jmp	.LBB0_511
	.align	16, 0x90
.LBB0_582:                              # %for.inc2630
                                        #   in Loop: Header=BB0_576 Depth=1
	incq	%rsi
	movq	%rsi, %rcx
.LBB0_576:                              # %for.cond2613
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_736
# BB#577:                               # %cont_BB4239
                                        #   in Loop: Header=BB0_576 Depth=1
	cmpl	$256, %ecx              # imm = 0x100
	jg	.LBB0_583
# BB#578:                               # %for.body2616
                                        #   in Loop: Header=BB0_576 Depth=1
	movq	%rcx, %rsi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#579:                               # %cont_BB4247
                                        #   in Loop: Header=BB0_576 Depth=1
	movl	1096(%r15,%rsi,4), %ecx
	testl	%ecx, %ecx
	js	.LBB0_565
# BB#580:                               # %lor.lhs.false2622
                                        #   in Loop: Header=BB0_576 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#581:                               # %cont_BB4255
                                        #   in Loop: Header=BB0_576 Depth=1
	movl	1096(%r15,%rsi,4), %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	jle	.LBB0_582
.LBB0_565:                              # %if.then2578
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_566
.LBB0_507:
	movq	%rsi, %rbx
.LBB0_514:                              # %if.end2356
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movzbl	-217(%rbp), %eax        # 1-byte Folded Reload
	xorb	%cl, %cl
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movzbl	3468(%rbx,%rax), %edx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	68(%rbx,%rdx,4), %edi
	movb	%r12b, -16(%rsi)
	incl	%edi
	movl	%edi, 68(%rbx,%rdx,4)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%cl, %cl
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#515:                               # %cont_BB3831
	movq	%rbx, %r15
	movb	44(%r15), %cl
	testb	%cl, %cl
	je	.LBB0_517
# BB#516:                               # %if.then2366
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movzbl	3468(%r15,%rax), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	3160(%r15), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	movw	%ax, (%rdx,%rcx,2)
	jmp	.LBB0_518
.LBB0_583:                              # %for.end2632
	xorl	%ecx, %ecx
	xorb	%al, %al
	jmp	.LBB0_584
.LBB0_517:                              # %if.else2374
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movzbl	3468(%r15,%rax), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	3152(%r15), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	movl	%eax, (%rdx,%rcx,4)
.LBB0_518:                              # %if.end2382
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#519:                               # %cont_BB3857
	movq	-64(%rbp), %rax         # 8-byte Reload
	incl	%eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	-168(%rbp), %esi        # 4-byte Reload
	testl	%esi, %esi
	je	.LBB0_521
# BB#520:
	movl	-204(%rbp), %edx        # 4-byte Reload
	movb	-138(%rbp), %bl         # 1-byte Reload
	jmp	.LBB0_525
	.align	16, 0x90
.LBB0_589:                              # %for.inc2648
                                        #   in Loop: Header=BB0_584 Depth=1
	incq	%rdi
	movq	%rdi, %rcx
.LBB0_584:                              # %for.cond2633
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_736
# BB#585:                               # %cont_BB4260
                                        #   in Loop: Header=BB0_584 Depth=1
	movq	%rcx, %rsi
	leal	1(%rsi), %ecx
	cmpl	$256, %ecx              # imm = 0x100
	jg	.LBB0_590
# BB#586:                               # %for.body2636
                                        #   in Loop: Header=BB0_584 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movslq	%esi, %rcx
	movq	%rsi, %rdi
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	1096(%r15,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#587:                               # %cont_BB4274
                                        #   in Loop: Header=BB0_584 Depth=1
	movl	1100(%r15,%rdi,4), %edx
	cmpl	%edx, %ecx
	jle	.LBB0_589
# BB#588:                               # %if.then2646
	incl	%edi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
.LBB0_566:                              # %if.then2578
	movl	$-4, %eax
	xorb	%r14b, %r14b
	jmp	.LBB0_734
.LBB0_521:                              # %if.then2386
	movl	%esi, -168(%rbp)        # 4-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#522:                               # %cont_BB3861
	movl	-160(%rbp), %edx        # 4-byte Reload
	incl	%edx
	movl	$-4, %eax
	cmpl	-128(%rbp), %edx        # 4-byte Folded Reload
	jge	.LBB0_523
# BB#524:                               # %if.end2391
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	%edx, %rax
	movl	%edx, -160(%rbp)        # 4-byte Spill
	movl	$50, %esi
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	7884(%r15,%rax), %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movb	-16(%rcx), %al
	movb	%al, -153(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	imulq	$1032, %rdx, %rax       # imm = 0x408
	leaq	51628(%r15,%rax), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	57820(%r15,%rax), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leaq	45436(%r15,%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64012(%r15,%rdx,4), %edx
	movb	-16(%rax), %bl
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
	movb	%r12b, -16(%rax)
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
	movb	%r12b, -16(%rax)
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
	movb	%r12b, -16(%rax)
	movb	%r12b, -140(%rbp)       # 1-byte Spill
	movb	%r12b, -141(%rbp)       # 1-byte Spill
	movb	%r12b, -142(%rbp)       # 1-byte Spill
.LBB0_525:                              # %if.end2411
	movb	%bl, -138(%rbp)         # 1-byte Spill
	movl	%edx, -204(%rbp)        # 4-byte Spill
	decl	%esi
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movb	%bl, -137(%rbp)         # 1-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB0_526:                              # %sw.bb2413
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$40, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_527
	.align	16, 0x90
.LBB0_543:                              # %if.then2461
                                        #   in Loop: Header=BB0_527 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_527:                              # %while.body2416
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#528:                               # %cont_BB3922
                                        #   in Loop: Header=BB0_527 Depth=1
	movq	%r15, %rbx
	movl	36(%rbx), %eax
	movl	-72(%rbp), %r9d         # 4-byte Reload
	cmpl	%r9d, %eax
	jge	.LBB0_529
# BB#539:                               # %if.end2432
                                        #   in Loop: Header=BB0_527 Depth=1
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#540:                               # %cont_BB3946
                                        #   in Loop: Header=BB0_527 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#541:                               # %if.end2438
                                        #   in Loop: Header=BB0_527 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#542:                               # %cont_BB3994
                                        #   in Loop: Header=BB0_527 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_527
	jmp	.LBB0_543
.LBB0_529:                              # %if.then2420
	movb	%r12b, %al
	movb	-137(%rbp), %sil        # 1-byte Reload
	orb	%sil, %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, %cl
	orb	%al, %cl
	orb	%sil, %cl
	movb	%cl, -154(%rbp)         # 1-byte Spill
	movb	%r9b, %cl
	movl	$1, %r8d
	shll	%cl, %r8d
	movl	32(%rbx), %edx
	movq	%rsp, %rcx
	decl	%r8d
	andb	$1, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rbx), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	subl	%r9d, %ecx
	movl	36(%rbx), %edi
	movb	%al, -16(%rsi)
	subl	%r9d, %edi
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movl	%edi, 36(%rbx)
	movq	%rbx, %r15
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	andl	%r8d, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_530
.LBB0_590:                              # %for.end2650
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	xorb	%al, %al
	movl	$0, 16(%r15)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movb	$0, 12(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$-1, 3184(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$2, 8(%r15)
	movq	%r15, %rbx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#591:                               # %cont_BB4285
	movl	52(%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB0_593
# BB#592:                               # %if.then2655
	movq	stderr(%rip), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
.LBB0_593:                              # %if.end2657
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#594:                               # %cont_BB4292
	movb	44(%rbx), %al
	testb	%al, %al
	je	.LBB0_595
# BB#599:                               # %if.then2660
	movq	%rbx, %rdi
	xorl	%r9d, %r9d
	xorb	%cl, %cl
	movq	%r9, %rdx
	jmp	.LBB0_600
.LBB0_595:
	movq	%rbx, %rsi
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorb	%r8b, %r8b
	jmp	.LBB0_596
	.align	16, 0x90
.LBB0_740:                              # %for.body2664
                                        #   in Loop: Header=BB0_600 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rdi, %rbx
	movl	1096(%rbx,%rdx,4), %esi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rdi)
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdi)
	movl	%esi, 2124(%rbx,%rdx,4)
	movq	%rbx, %rdi
	incq	%rdx
.LBB0_600:                              # %for.cond2661
                                        # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	jne	.LBB0_736
# BB#601:                               # %cont_BB4296
                                        #   in Loop: Header=BB0_600 Depth=1
	cmpl	$256, %edx              # imm = 0x100
	jle	.LBB0_740
# BB#602:
	xorb	%r8b, %r8b
	jmp	.LBB0_603
	.align	16, 0x90
.LBB0_598:                              # %for.body2909
                                        #   in Loop: Header=BB0_596 Depth=1
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdx)
	movq	%rsi, %rax
	movq	3152(%rax), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rsi)
	movzbl	(%rdx,%r10,4), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rsi)
	movslq	1096(%rax,%rdx,4), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rdi)
	movq	3152(%rax), %rdi
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rbx)
	movl	(%rdi,%rsi,4), %ecx
	movb	%r12b, -16(%rbx)
	orl	%r9d, %ecx
	movl	%ecx, (%rdi,%rsi,4)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rsi)
	movl	1096(%rax,%rdx,4), %ecx
	movb	%r12b, -16(%rsi)
	incl	%ecx
	movl	%ecx, 1096(%rax,%rdx,4)
	movq	%rax, %rsi
	addl	$256, %r9d              # imm = 0x100
	incq	%r10
.LBB0_596:                              # %for.cond2906
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#597:                               # %cont_BB4656
                                        #   in Loop: Header=BB0_596 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	%eax, %r10d
	jl	.LBB0_598
# BB#630:                               # %for.end2929
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsi, %rbx
	movslq	56(%rbx), %rcx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	3152(%rbx), %rdx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	(%rdx,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%r12b, -16(%rdx)
	shrl	$8, %ecx
	movl	%ecx, 60(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 1092(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#631:                               # %cont_BB4705
	movq	%rbx, %rsi
	movb	20(%rsi), %al
	testb	%al, %al
	je	.LBB0_640
# BB#632:                               # %if.then2939
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	xorb	%al, %al
	movl	$0, 24(%rsi)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%rsi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	60(%rsi), %ecx
	movq	%rsi, %rdi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	testb	%al, %al
	jne	.LBB0_736
# BB#633:                               # %cont_BB4717
	movq	%rdi, %rbx
	imull	$100000, 40(%rbx), %edx # imm = 0x186A0
	movl	$1, %eax
	cmpl	%edx, %ecx
	jae	.LBB0_735
# BB#634:                               # %if.end2948
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%rbx), %ecx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	3152(%rbx), %rdx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	(%rdx,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%r12b, -16(%rdx)
	movl	%ecx, 60(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	60(%rbx), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%r12b, -16(%rdx)
	movzbl	%cl, %ecx
	movl	%ecx, 64(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	60(%rbx), %edx
	movb	%r12b, -16(%rcx)
	shrl	$8, %edx
	movl	%edx, 60(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	1092(%rbx), %edx
	movb	%r12b, -16(%rcx)
	incl	%edx
	movl	%edx, 1092(%rbx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#635:                               # %cont_BB4749
	movq	%rbx, %r15
	movl	24(%r15), %eax
	testl	%eax, %eax
	jne	.LBB0_639
# BB#636:                               # %if.then2966
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	28(%r15), %rcx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%ecx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	28(%r15), %edx
	movb	%r12b, -16(%rcx)
	incl	%edx
	movl	%edx, 28(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#637:                               # %cont_BB4767
	movl	28(%r15), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB0_639
# BB#638:                               # %if.then2976
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 28(%r15)
.LBB0_639:                              # %if.end2979
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	24(%r15), %ecx
	movb	%r12b, -16(%rax)
	decl	%ecx
	movl	%ecx, 24(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	24(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	64(%r15), %edx
	cmpl	$1, %eax
	movb	%r12b, -16(%rcx)
	sete	%al
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, 64(%r15)
	jmp	.LBB0_643
	.align	16, 0x90
.LBB0_609:                              # %if.else2709
                                        #   in Loop: Header=BB0_603 Depth=1
	movq	3168(%r10), %rdi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movb	-56(%rbp), %al          # 1-byte Reload
	movb	%al, -16(%rcx)
	movb	%bl, (%rdi,%rsi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	%r11b, %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rsi)
	movl	2124(%r10,%rdx,4), %ecx
	movb	%r12b, -16(%rsi)
	incl	%ecx
	movl	%ecx, 2124(%r10,%rdx,4)
	movq	%r10, %rdi
	incq	%r9
.LBB0_603:                              # %for.cond2673
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#604:                               # %cont_BB4309
                                        #   in Loop: Header=BB0_603 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	%eax, %r9d
	jge	.LBB0_610
# BB#605:                               # %for.body2676
                                        #   in Loop: Header=BB0_603 Depth=1
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rdi, %rax
	movq	3160(%rax), %rdx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	(%rdx,%r9,2), %r11d
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movw	2124(%rax,%r11,4), %si
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movq	3160(%rax), %rdi
	movq	%rax, %rdx
	movq	%rsp, %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rbx)
	movb	%r12b, -16(%rbx)
	movw	%si, (%rdi,%r9,2)
	jne	.LBB0_736
# BB#606:                               # %cont_BB4333
                                        #   in Loop: Header=BB0_603 Depth=1
	movl	%r9d, %ecx
	andl	$1, %ecx
	testl	%ecx, %ecx
	jne	.LBB0_608
# BB#607:                               # %if.then2692
                                        #   in Loop: Header=BB0_603 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rdx, %r10
	movq	3168(%r10), %rdi
	movl	%r9d, %ecx
	sarl	%ecx
	movslq	%ecx, %rsi
	movzbl	%r11b, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	(%rdi,%rsi), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	andl	$240, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movzwl	2126(%r10,%rbx,4), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	orl	%edi, %ebx
	jmp	.LBB0_609
.LBB0_608:                              # %if.else2709
                                        #   in Loop: Header=BB0_603 Depth=1
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rdx, %r10
	movq	3168(%r10), %rdi
	movl	%r9d, %ecx
	sarl	%ecx
	movslq	%ecx, %rsi
	movzbl	%r11b, %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	(%rdi,%rsi), %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	andl	$15, %edi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movl	2124(%r10,%rbx,4), %ebx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	shrl	$12, %ebx
	andl	$240, %ebx
	orl	%edi, %ebx
	jmp	.LBB0_609
.LBB0_640:                              # %if.else2988
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%rsi), %ecx
	movq	%rsi, %rdi
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	testb	%al, %al
	jne	.LBB0_736
# BB#641:                               # %cont_BB4790
	movq	%rdi, %r15
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movl	$1, %eax
	cmpl	%edx, %ecx
	jae	.LBB0_735
# BB#642:                               # %if.end2995
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movq	3152(%r15), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	(%rcx,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movl	%eax, 60(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%r15), %eax
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, -16(%rcx)
	movzbl	%al, %eax
	movl	%eax, 64(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%r15), %ecx
	movb	%r12b, -16(%rax)
	shrl	$8, %ecx
	movl	%ecx, 60(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	1092(%r15), %ecx
	movb	%r12b, -16(%rax)
	incl	%ecx
	movl	%ecx, 1092(%r15)
.LBB0_643:                              # %if.end3010
	xorl	%eax, %eax
	xorb	%r14b, %r14b
	jmp	.LBB0_734
.LBB0_610:                              # %for.end2734
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rdi, %r13
	movslq	56(%r13), %r15
	movb	-16(%rax), %dl
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, %bl
	orb	%dl, %bl
	movq	3160(%r13), %r8
	orb	%r12b, %bl
	movl	%r15d, %edi
	sarl	%edi
	leal	(,%r15,4), %ecx
	movq	%rsp, %rax
	andb	$4, %cl
	movslq	%edi, %r9
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rax)
	movzwl	(%r8,%r15,2), %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rax)
	movq	3168(%r13), %r10
	leaq	-16(%rdi), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rdi)
	movzbl	(%r10,%r9), %eax
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %eax
	andl	$15, %eax
	shll	$16, %eax
	orl	%r8d, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	.align	16, 0x90
.LBB0_611:                              # %do.body2751
                                        # =>This Inner Loop Header: Depth=1
	movb	%bl, %r14b
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, %r8d
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	3160(%r13), %r10
	leal	(,%r8,4), %ecx
	movl	%r8d, %edi
	sarl	%edi
	movslq	%r8d, %r9
	movb	%dl, %al
	andb	$1, %al
	movq	%rsp, %rbx
	movslq	%edi, %r11
	andb	$4, %cl
	leaq	-16(%rbx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rbx)
	movzwl	(%r10,%r9,2), %esi
	xorb	%r10b, %r10b
	movl	%esi, -76(%rbp)         # 4-byte Spill
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movq	3168(%r13), %rbx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
	movzbl	(%rbx,%r11), %ebx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %ebx
	movq	3160(%r13), %rcx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsi
	movq	%rsi, %rsp
	testb	%r10b, %r10b
	movb	%r12b, -16(%rdi)
	movb	%al, -16(%rdi)
	movw	%r15w, (%rcx,%r9,2)
	jne	.LBB0_736
# BB#612:                               # %cont_BB4451
                                        #   in Loop: Header=BB0_611 Depth=1
	movb	%r12b, %al
	orb	%r14b, %al
	orb	%r12b, %al
	movb	%al, -81(%rbp)          # 1-byte Spill
	movl	%r8d, %eax
	andl	$1, %eax
	andl	$15, %ebx
	shll	$16, %ebx
	addl	%ebx, -76(%rbp)         # 4-byte Folded Spill
	testl	%eax, %eax
	jne	.LBB0_614
# BB#613:                               # %if.then2777
                                        #   in Loop: Header=BB0_611 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	orb	%r12b, %dl
	movq	3168(%r13), %rax
	shrl	$16, %r15d
	andb	$1, %dl
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	(%rax,%r11), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	andl	$240, %eax
	orl	%r15d, %eax
	jmp	.LBB0_615
.LBB0_614:                              # %if.else2791
                                        #   in Loop: Header=BB0_611 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	orb	%r12b, %dl
	movq	3168(%r13), %rax
	shrl	$12, %r15d
	andl	$240, %r15d
	andb	$1, %dl
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	(%rax,%r11), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	andl	$15, %eax
	orl	%r15d, %eax
.LBB0_615:                              # %if.else2791
                                        #   in Loop: Header=BB0_611 Depth=1
	movq	3168(%r13), %rcx
	movq	%r13, %rbx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%dl, -16(%rsi)
	movb	%al, (%rcx,%r11)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r10b, %r10b
	jne	.LBB0_736
# BB#616:                               # %cont_BB4496
                                        #   in Loop: Header=BB0_611 Depth=1
	movq	%rbx, %r13
	movl	56(%r13), %eax
	xorb	%bl, %bl
	cmpl	%eax, %r8d
	movb	%r14b, %dl
	movl	%r8d, %r15d
	jne	.LBB0_611
# BB#617:                               # %do.end2811
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	56(%r13), %ecx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	%r12b, -16(%rdx)
	movl	%ecx, 60(%r13)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 1092(%r13)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#618:                               # %cont_BB4507
	movq	%r13, %rsi
	movb	20(%rsi), %al
	testb	%al, %al
	je	.LBB0_627
# BB#619:                               # %if.then2815
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	xorb	%al, %al
	movl	$0, 24(%rsi)
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	$0, 28(%rsi)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	60(%rsi), %ecx
	movq	%rsi, %rdi
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	testb	%al, %al
	jne	.LBB0_736
# BB#620:                               # %cont_BB4519
	movq	%rdi, %r15
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movl	$1, %eax
	cmpl	%edx, %ecx
	jae	.LBB0_735
# BB#621:                               # %if.end2822
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%r15), %edi
	leaq	1096(%r15), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	callq	BZ2_indexIntoF
	movb	-56(%rbp), %dl          # 1-byte Reload
	orb	%r12b, %dl
	xorb	%r8b, %r8b
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movb	$0, -16(%rcx)
	movl	%eax, 64(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%r15), %eax
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movq	3160(%r15), %rcx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movzwl	(%rcx,%rax,2), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	60(%r15), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	3168(%r15), %rsi
	shrl	%ecx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movzbl	(%rsi,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movb	60(%r15), %cl
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%dl, -16(%rdi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %esi
	andl	$15, %esi
	shll	$16, %esi
	orl	%eax, %esi
	movl	%esi, 60(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	1092(%r15), %ecx
	movb	%r12b, -16(%rax)
	incl	%ecx
	movl	%ecx, 1092(%r15)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rax)
	jne	.LBB0_736
# BB#622:                               # %cont_BB4568
	movl	24(%r15), %eax
	testl	%eax, %eax
	jne	.LBB0_626
# BB#623:                               # %if.then2850
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	28(%r15), %rcx
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	$0, -16(%rdx)
	movl	BZ2_rNums(,%rcx,4), %ecx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%ecx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	28(%r15), %edx
	movb	%r12b, -16(%rcx)
	incl	%edx
	movl	%edx, 28(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	testb	%al, %al
	movb	%r12b, -16(%rcx)
	jne	.LBB0_736
# BB#624:                               # %cont_BB4586
	movl	28(%r15), %eax
	cmpl	$512, %eax              # imm = 0x200
	jne	.LBB0_626
# BB#625:                               # %if.then2860
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$0, 28(%r15)
.LBB0_626:                              # %if.end2863
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	%r12b, -16(%rcx)
	movl	24(%r15), %edx
	xorl	%eax, %eax
	movb	%r12b, -16(%rcx)
	decl	%edx
	movl	%edx, 24(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	24(%r15), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	64(%r15), %esi
	cmpl	$1, %ecx
	movb	%r12b, -16(%rdx)
	sete	%cl
	movzbl	%cl, %ecx
	xorl	%esi, %ecx
	movl	%ecx, 64(%r15)
	jmp	.LBB0_734
.LBB0_627:                              # %if.else2870
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%rsi), %ecx
	movq	%rsi, %rdi
	xorb	%al, %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	testb	%al, %al
	jne	.LBB0_736
# BB#628:                               # %cont_BB4609
	movq	%rdi, %r15
	imull	$100000, 40(%r15), %edx # imm = 0x186A0
	movl	$1, %eax
	cmpl	%edx, %ecx
	jae	.LBB0_735
# BB#629:                               # %if.end2877
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	60(%r15), %edi
	leaq	1096(%r15), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	callq	BZ2_indexIntoF
	movl	%eax, %ecx
	xorl	%eax, %eax
	movb	-56(%rbp), %r8b         # 1-byte Reload
	orb	%r12b, %r8b
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movb	$0, -16(%rdx)
	movl	%ecx, 64(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	3160(%r15), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movzwl	(%rdx,%rcx,2), %edx
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	60(%r15), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	3168(%r15), %rsi
	shrl	%ecx
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movzbl	(%rsi,%rcx), %esi
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rcx)
	movb	60(%r15), %cl
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r8b, -16(%rdi)
	shlb	$2, %cl
	andb	$4, %cl
	shrl	%cl, %esi
	andl	$15, %esi
	shll	$16, %esi
	orl	%edx, %esi
	movl	%esi, 60(%r15)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movl	1092(%r15), %edx
	movb	%r12b, -16(%rcx)
	incl	%edx
	movl	%edx, 1092(%r15)
	jmp	.LBB0_734
	.align	16, 0x90
.LBB0_412:                              # %do.body
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -178(%rbp)          # 1-byte Folded Spill
	jne	.LBB0_736
# BB#413:                               # %cont_BB3216
	movl	$-4, %eax
	cmpl	$2097151, -176(%rbp)    # 4-byte Folded Reload
                                        # imm = 0x1FFFFF
	jg	.LBB0_414
# BB#415:                               # %if.end1943
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#416:                               # %cont_BB3219
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	je	.LBB0_417
# BB#418:                               # %if.else1949
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -97(%rbp)           # 1-byte Folded Spill
	jne	.LBB0_736
# BB#419:                               # %cont_BB3224
	cmpl	$1, -124(%rbp)          # 4-byte Folded Reload
	jne	.LBB0_422
# BB#420:                               # %if.then1952
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	-80(%rbp), %ecx         # 4-byte Reload
	leal	(%rcx,%rax,2), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB0_421
.LBB0_414:
	movb	$0, -97(%rbp)           # 1-byte Folded Spill
	jmp	.LBB0_732
.LBB0_417:                              # %if.then1946
	movl	-80(%rbp), %eax         # 4-byte Reload
	addl	-176(%rbp), %eax        # 4-byte Folded Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB0_421:                              # %if.then1952
	movb	$0, -97(%rbp)           # 1-byte Folded Spill
.LBB0_422:                              # %if.end1956
	xorb	%al, %al
	testb	%al, %al
	movb	$0, -178(%rbp)          # 1-byte Folded Spill
	jne	.LBB0_736
# BB#423:                               # %cont_BB3232
	movl	-176(%rbp), %eax        # 4-byte Reload
	addl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	-168(%rbp), %esi        # 4-byte Reload
	testl	%esi, %esi
	je	.LBB0_425
# BB#424:
	movl	-204(%rbp), %edx        # 4-byte Reload
	movb	-138(%rbp), %bl         # 1-byte Reload
	jmp	.LBB0_428
.LBB0_425:                              # %if.then1960
	movl	%esi, -168(%rbp)        # 4-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#426:                               # %cont_BB3236
	movl	-160(%rbp), %edx        # 4-byte Reload
	incl	%edx
	movl	$-4, %eax
	cmpl	-128(%rbp), %edx        # 4-byte Folded Reload
	jge	.LBB0_523
# BB#427:                               # %if.end1965
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	%edx, %rax
	movl	%edx, -160(%rbp)        # 4-byte Spill
	movl	$50, %esi
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	7884(%r15,%rax), %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movb	-16(%rcx), %al
	movb	%al, -153(%rbp)         # 1-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	imulq	$1032, %rdx, %rax       # imm = 0x408
	leaq	51628(%r15,%rax), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	57820(%r15,%rax), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leaq	45436(%r15,%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	64012(%r15,%rdx,4), %edx
	movb	-16(%rax), %bl
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
	movb	%r12b, -16(%rax)
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
	movb	%r12b, -16(%rax)
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
	movb	%r12b, -16(%rax)
	movb	%r12b, -140(%rbp)       # 1-byte Spill
	movb	%r12b, -141(%rbp)       # 1-byte Spill
	movb	%r12b, -142(%rbp)       # 1-byte Spill
.LBB0_428:                              # %if.end1985
	movb	%bl, -138(%rbp)         # 1-byte Spill
	movl	%edx, -204(%rbp)        # 4-byte Spill
	decl	%esi
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movb	%bl, -137(%rbp)         # 1-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB0_429:                              # %sw.bb1987
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$38, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_430
	.align	16, 0x90
.LBB0_446:                              # %if.then2035
                                        #   in Loop: Header=BB0_430 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_430:                              # %while.body1990
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#431:                               # %cont_BB3297
                                        #   in Loop: Header=BB0_430 Depth=1
	movq	%r15, %rbx
	movl	36(%rbx), %eax
	movl	-72(%rbp), %r9d         # 4-byte Reload
	cmpl	%r9d, %eax
	jge	.LBB0_432
# BB#442:                               # %if.end2006
                                        #   in Loop: Header=BB0_430 Depth=1
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#443:                               # %cont_BB3321
                                        #   in Loop: Header=BB0_430 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#444:                               # %if.end2012
                                        #   in Loop: Header=BB0_430 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#445:                               # %cont_BB3369
                                        #   in Loop: Header=BB0_430 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_430
	jmp	.LBB0_446
.LBB0_432:                              # %if.then1994
	movb	%r12b, %al
	movb	-137(%rbp), %sil        # 1-byte Reload
	orb	%sil, %al
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rcx)
	movb	%r12b, %cl
	orb	%al, %cl
	orb	%sil, %cl
	movb	%cl, -154(%rbp)         # 1-byte Spill
	movb	%r9b, %cl
	movl	$1, %r8d
	shll	%cl, %r8d
	movl	32(%rbx), %edx
	movq	%rsp, %rcx
	decl	%r8d
	andb	$1, %al
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movl	36(%rbx), %ecx
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	subl	%r9d, %ecx
	movl	36(%rbx), %edi
	movb	%al, -16(%rsi)
	subl	%r9d, %edi
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movl	%edi, 36(%rbx)
	movq	%rbx, %r15
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edx
	andl	%r8d, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_433
.LBB0_523:
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB0_732
	.align	16, 0x90
.LBB0_433:                              # %while.body2042
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#434:                               # %cont_BB3402
	movl	$-4, %eax
	cmpl	$20, -72(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_732
# BB#435:                               # %if.end2046
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-142(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#436:                               # %cont_BB3409
	movl	-72(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rcx
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	(%rax,%rcx,4), %eax
	cmpl	%eax, -104(%rbp)        # 4-byte Folded Reload
	jg	.LBB0_437
# BB#452:                               # %while.end2108
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-141(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#453:                               # %cont_BB3527
	movl	-104(%rbp), %esi        # 4-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	subl	(%rax,%rcx,4), %esi
	movl	$-4, %eax
	testl	%esi, %esi
	js	.LBB0_732
# BB#454:                               # %lor.lhs.false2114
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#455:                               # %cont_BB3535
	movl	-104(%rbp), %edi        # 4-byte Reload
	movl	%edi, %esi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	subl	(%rbx,%rcx,4), %esi
	movl	$-4, %eax
	cmpl	$257, %esi              # imm = 0x101
	jg	.LBB0_403
# BB#456:                               # %if.end2121
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rax)
	movl	(%rbx,%rcx,4), %eax
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movb	-140(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rcx)
	movl	%edi, %edx
	movl	%edi, -104(%rbp)        # 4-byte Spill
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx,%rax,4), %edx
	movb	-16(%rcx), %al
	movb	%al, -162(%rbp)         # 1-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#457:                               # %cont_BB3547
	movb	$1, %cl
	movl	%edx, %eax
	testl	%eax, %eax
	je	.LBB0_459
# BB#458:                               # %lor.rhs
	cmpl	$1, %eax
	sete	%cl
.LBB0_459:                              # %lor.end
	movl	%eax, -124(%rbp)        # 4-byte Spill
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#460:                               # %cont_BB3551
	testb	%cl, %cl
	jne	.LBB0_461
# BB#462:                               # %do.end
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	%r12b, %bl
	orb	-97(%rbp), %bl          # 1-byte Folded Reload
	xorb	%dl, %dl
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	andb	$1, %bl
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movslq	7820(%r15), %rax
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	movzbl	3724(%r15,%rax), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rcx)
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rsi)
	movzbl	3468(%r15,%rax), %r8d
	movb	-16(%rsi), %al
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movl	68(%r15,%r8,4), %edi
	movb	%bl, -16(%rsi)
	movl	-80(%rbp), %esi         # 4-byte Reload
	leal	1(%rdi,%rsi), %esi
	movl	%esi, 68(%r15,%r8,4)
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	testb	%dl, %dl
	movb	%r12b, -16(%rsi)
	jne	.LBB0_736
# BB#463:                               # %cont_BB3578
	incl	-80(%rbp)               # 4-byte Folded Spill
	movb	44(%r15), %dl
	testb	%dl, %dl
	je	.LBB0_474
# BB#464:                               # %if.then2145
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	xorb	%dl, %dl
	andb	$1, %al
	jmp	.LBB0_465
.LBB0_437:                              # %if.end2052
	incl	%edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB0_438:                              # %sw.bb2054
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$39, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_439
	.align	16, 0x90
.LBB0_451:                              # %if.then2100
                                        #   in Loop: Header=BB0_439 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_439:                              # %while.body2057
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#440:                               # %cont_BB3440
                                        #   in Loop: Header=BB0_439 Depth=1
	movq	%r15, %rsi
	movl	36(%rsi), %eax
	testl	%eax, %eax
	jg	.LBB0_441
# BB#447:                               # %if.end2071
                                        #   in Loop: Header=BB0_439 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#448:                               # %cont_BB3462
                                        #   in Loop: Header=BB0_439 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#449:                               # %if.end2077
                                        #   in Loop: Header=BB0_439 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#450:                               # %cont_BB3510
                                        #   in Loop: Header=BB0_439 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_439
	jmp	.LBB0_451
.LBB0_441:                              # %if.then2061
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rsi), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %edx
	decl	%ecx
	movb	%r12b, -16(%rax)
	decl	%edx
	movl	%edx, 36(%rsi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edi
	andl	$1, %edi
	movq	%rsi, %r15
	movl	-104(%rbp), %eax        # 4-byte Reload
	addl	%eax, %eax
	orl	%edi, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%edi, -208(%rbp)        # 4-byte Spill
	xorb	%al, %al
	movb	$0, -141(%rbp)          # 1-byte Folded Spill
	movb	$0, -142(%rbp)          # 1-byte Folded Spill
	movb	$0, -138(%rbp)          # 1-byte Folded Spill
	movb	$0, -153(%rbp)          # 1-byte Folded Spill
	movb	%al, -177(%rbp)         # 1-byte Spill
	movb	$0, -154(%rbp)          # 1-byte Folded Spill
	movb	$0, -137(%rbp)          # 1-byte Folded Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	%al, -178(%rbp)         # 1-byte Spill
	movb	%al, -97(%rbp)          # 1-byte Spill
	movb	%al, -98(%rbp)          # 1-byte Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	movb	%al, -162(%rbp)         # 1-byte Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movb	%al, -161(%rbp)         # 1-byte Spill
	movb	%al, -170(%rbp)         # 1-byte Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
                                        # kill: AL<def> AL<kill> RAX<def>
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, -140(%rbp)          # 1-byte Folded Spill
	jmp	.LBB0_433
.LBB0_461:
	movb	$0, -140(%rbp)          # 1-byte Folded Spill
	movb	$0, -141(%rbp)          # 1-byte Folded Spill
	movb	$0, -142(%rbp)          # 1-byte Folded Spill
	movb	$0, -138(%rbp)          # 1-byte Folded Spill
	movb	$0, -153(%rbp)          # 1-byte Folded Spill
	movb	$0, -177(%rbp)          # 1-byte Folded Spill
	movb	$0, -154(%rbp)          # 1-byte Folded Spill
	movb	$0, -137(%rbp)          # 1-byte Folded Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
	movb	$0, -169(%rbp)          # 1-byte Folded Spill
	movb	$0, -162(%rbp)          # 1-byte Folded Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movb	$0, -161(%rbp)          # 1-byte Folded Spill
	movb	$0, -170(%rbp)          # 1-byte Folded Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
                                        # kill: AL<def> AL<kill> RAX<def>
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_412
.LBB0_474:                              # %if.else2161
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	xorb	%r9b, %r9b
	movzwl	%r8w, %ecx
	andb	$1, %al
	jmp	.LBB0_475
	.align	16, 0x90
.LBB0_471:                              # %if.end2153
                                        #   in Loop: Header=BB0_465 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	decl	-80(%rbp)               # 4-byte Folded Spill
	movq	3160(%r15), %rsi
	movb	$0, -97(%rbp)           # 1-byte Folded Spill
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%al, -16(%rdi)
	movw	%r8w, (%rsi,%rcx,2)
	incq	%rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
.LBB0_465:                              # %while.cond2146
                                        # =>This Inner Loop Header: Depth=1
	testb	%dl, %dl
	jne	.LBB0_736
# BB#466:                               # %cont_BB3583
                                        #   in Loop: Header=BB0_465 Depth=1
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	jle	.LBB0_472
# BB#467:                               # %while.body2149
                                        #   in Loop: Header=BB0_465 Depth=1
	testb	%dl, %dl
	jne	.LBB0_736
# BB#468:                               # %cont_BB3586
                                        #   in Loop: Header=BB0_465 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	-108(%rbp), %ecx        # 4-byte Folded Reload
	jl	.LBB0_471
# BB#469:                               # %if.then2152
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	$-4, %eax
	jmp	.LBB0_732
	.align	16, 0x90
.LBB0_480:                              # %if.end2169
                                        #   in Loop: Header=BB0_475 Depth=1
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	3152(%r15), %rsi
	decl	-80(%rbp)               # 4-byte Folded Spill
	movb	$0, -97(%rbp)           # 1-byte Folded Spill
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%al, -16(%rdi)
	movl	%ecx, (%rsi,%rdx,4)
	incq	%rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
.LBB0_475:                              # %while.cond2162
                                        # =>This Inner Loop Header: Depth=1
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#476:                               # %cont_BB3599
                                        #   in Loop: Header=BB0_475 Depth=1
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	jle	.LBB0_481
# BB#477:                               # %while.body2165
                                        #   in Loop: Header=BB0_475 Depth=1
	testb	%r9b, %r9b
	jne	.LBB0_736
# BB#478:                               # %cont_BB3602
                                        #   in Loop: Header=BB0_475 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	-108(%rbp), %edx        # 4-byte Folded Reload
	jl	.LBB0_480
# BB#479:                               # %if.then2168
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	$-4, %eax
	jmp	.LBB0_732
.LBB0_472:                              # %while.end2160
	xorb	%al, %al
	movb	$0, -141(%rbp)          # 1-byte Folded Spill
	movb	$0, -142(%rbp)          # 1-byte Folded Spill
	movb	$0, -138(%rbp)          # 1-byte Folded Spill
	movb	$0, -153(%rbp)          # 1-byte Folded Spill
	movb	%al, -177(%rbp)         # 1-byte Spill
	movb	$0, -154(%rbp)          # 1-byte Folded Spill
	movb	$0, -137(%rbp)          # 1-byte Folded Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	%al, -178(%rbp)         # 1-byte Spill
	movb	%al, -97(%rbp)          # 1-byte Spill
	movb	%al, -98(%rbp)          # 1-byte Spill
	jmp	.LBB0_473
.LBB0_481:                              # %while.end2176
	xorb	%al, %al
	movb	$0, -141(%rbp)          # 1-byte Folded Spill
	movb	$0, -142(%rbp)          # 1-byte Folded Spill
	movb	$0, -138(%rbp)          # 1-byte Folded Spill
	movb	$0, -153(%rbp)          # 1-byte Folded Spill
	movb	%al, -177(%rbp)         # 1-byte Spill
	movb	$0, -154(%rbp)          # 1-byte Folded Spill
	movb	$0, -137(%rbp)          # 1-byte Folded Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	%al, -178(%rbp)         # 1-byte Spill
	movb	%al, -97(%rbp)          # 1-byte Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
.LBB0_473:                              # %while.end2160
	movb	%al, -169(%rbp)         # 1-byte Spill
	movb	%al, -162(%rbp)         # 1-byte Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movb	%al, -161(%rbp)         # 1-byte Spill
	movb	%al, -170(%rbp)         # 1-byte Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
                                        # kill: AL<def> AL<kill> RAX<def>
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, -140(%rbp)          # 1-byte Folded Spill
	jmp	.LBB0_405
	.align	16, 0x90
.LBB0_530:                              # %while.body2468
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#531:                               # %cont_BB4027
	movl	$-4, %eax
	cmpl	$20, -72(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_732
# BB#532:                               # %if.end2472
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	-142(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movb	%cl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#533:                               # %cont_BB4034
	movl	-72(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rcx
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	(%rax,%rcx,4), %eax
	cmpl	%eax, -104(%rbp)        # 4-byte Folded Reload
	jg	.LBB0_534
# BB#549:                               # %while.end2534
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	-141(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movb	%dl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#550:                               # %cont_BB4152
	movl	-104(%rbp), %esi        # 4-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	subl	(%rax,%rcx,4), %esi
	movl	$-4, %eax
	testl	%esi, %esi
	js	.LBB0_732
# BB#551:                               # %lor.lhs.false2540
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rax)
	xorb	%al, %al
	testb	%al, %al
	jne	.LBB0_736
# BB#552:                               # %cont_BB4160
	movl	-104(%rbp), %edi        # 4-byte Reload
	movl	%edi, %esi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	subl	(%rbx,%rcx,4), %esi
	movl	$-4, %eax
	cmpl	$257, %esi              # imm = 0x101
	jg	.LBB0_403
# BB#553:                               # %if.end2547
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	%dl, -16(%rax)
	movl	(%rbx,%rcx,4), %eax
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	xorb	%sil, %sil
	movb	-140(%rbp), %bl         # 1-byte Reload
	andb	$1, %bl
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	%bl, -16(%rcx)
	movl	%edi, %ecx
	movl	%edi, -104(%rbp)        # 4-byte Spill
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, -140(%rbp)          # 1-byte Folded Spill
	movb	$0, -142(%rbp)          # 1-byte Folded Spill
	movb	$0, -138(%rbp)          # 1-byte Folded Spill
	movb	$0, -153(%rbp)          # 1-byte Folded Spill
	movb	%sil, -177(%rbp)        # 1-byte Spill
	movb	$0, -154(%rbp)          # 1-byte Folded Spill
	movb	$0, -137(%rbp)          # 1-byte Folded Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	%sil, -178(%rbp)        # 1-byte Spill
	movb	%sil, -97(%rbp)         # 1-byte Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
	movb	%sil, -169(%rbp)        # 1-byte Spill
	movb	%sil, -162(%rbp)        # 1-byte Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movb	%sil, -161(%rbp)        # 1-byte Spill
	movb	%sil, -170(%rbp)        # 1-byte Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
	movb	%sil, %al
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, -141(%rbp)          # 1-byte Folded Spill
	jmp	.LBB0_405
.LBB0_534:                              # %if.end2478
	incl	%edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB0_535:                              # %sw.bb2480
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movb	$0, -16(%rax)
	movl	$41, 8(%r15)
	xorb	%r8b, %r8b
	jmp	.LBB0_536
	.align	16, 0x90
.LBB0_548:                              # %if.then2526
                                        #   in Loop: Header=BB0_536 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%r15), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	16(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 16(%rax)
	.align	16, 0x90
.LBB0_536:                              # %while.body2483
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	testb	%r8b, %r8b
	jne	.LBB0_736
# BB#537:                               # %cont_BB4065
                                        #   in Loop: Header=BB0_536 Depth=1
	movq	%r15, %rsi
	movl	36(%rsi), %eax
	testl	%eax, %eax
	jg	.LBB0_538
# BB#544:                               # %if.end2497
                                        #   in Loop: Header=BB0_536 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#545:                               # %cont_BB4087
                                        #   in Loop: Header=BB0_536 Depth=1
	movl	8(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB0_35
# BB#546:                               # %if.end2503
                                        #   in Loop: Header=BB0_536 Depth=1
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rcx), %eax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rcx), %rdx
	shll	$8, %eax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %edx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdi
	movq	%rdi, %rsp
	movb	%r12b, -16(%rsi)
	movb	%r12b, -16(%rsi)
	orl	%eax, %edx
	movl	%edx, 32(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rcx), %edx
	movb	%r12b, -16(%rax)
	addl	$8, %edx
	movl	%edx, 36(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movq	(%rax), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rsp
	movb	%r12b, -16(%rdi)
	movb	%r12b, -16(%rdx)
	incq	%rsi
	movq	%rsi, (%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	8(%rax), %esi
	movb	%r12b, -16(%rdx)
	decl	%esi
	movl	%esi, 8(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%r12b, -16(%rdx)
	movl	12(%rax), %esi
	movb	%r12b, -16(%rdx)
	incl	%esi
	movl	%esi, 12(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movq	(%rcx), %rax
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	testb	%r8b, %r8b
	movb	%r12b, -16(%rdx)
	jne	.LBB0_736
# BB#547:                               # %cont_BB4135
                                        #   in Loop: Header=BB0_536 Depth=1
	movl	12(%rax), %eax
	testl	%eax, %eax
	movq	%rcx, %r15
	jne	.LBB0_536
	jmp	.LBB0_548
	.align	16, 0x90
.LBB0_736:                              # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB0_736
.LBB0_538:                              # %if.then2487
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	32(%rsi), %edi
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %ecx
	movq	%rsp, %rax
	leaq	-16(%rax), %rdx
	movq	%rdx, %rsp
	movb	%r12b, -16(%rax)
	movl	36(%rsi), %edx
	decl	%ecx
	movb	%r12b, -16(%rax)
	decl	%edx
	movl	%edx, 36(%rsi)
                                        # kill: CL<def> CL<kill> ECX<kill>
	shrl	%cl, %edi
	andl	$1, %edi
	movq	%rsi, %r15
	movl	-104(%rbp), %eax        # 4-byte Reload
	addl	%eax, %eax
	orl	%edi, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%edi, -208(%rbp)        # 4-byte Spill
	xorb	%al, %al
	movb	$0, -141(%rbp)          # 1-byte Folded Spill
	movb	$0, -142(%rbp)          # 1-byte Folded Spill
	movb	$0, -138(%rbp)          # 1-byte Folded Spill
	movb	$0, -153(%rbp)          # 1-byte Folded Spill
	movb	%al, -177(%rbp)         # 1-byte Spill
	movb	$0, -154(%rbp)          # 1-byte Folded Spill
	movb	$0, -137(%rbp)          # 1-byte Folded Spill
	movb	$0, -139(%rbp)          # 1-byte Folded Spill
	movb	%al, -178(%rbp)         # 1-byte Spill
	movb	%al, -97(%rbp)          # 1-byte Spill
	movb	$0, -98(%rbp)           # 1-byte Folded Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	movb	%al, -162(%rbp)         # 1-byte Spill
	movb	$0, -144(%rbp)          # 1-byte Folded Spill
	movb	%al, -161(%rbp)         # 1-byte Spill
	movb	%al, -170(%rbp)         # 1-byte Spill
	movb	$0, -89(%rbp)           # 1-byte Folded Spill
	movb	$0, -90(%rbp)           # 1-byte Folded Spill
	movb	$0, -91(%rbp)           # 1-byte Folded Spill
	movb	$0, -143(%rbp)          # 1-byte Folded Spill
	movb	$0, -81(%rbp)           # 1-byte Folded Spill
                                        # kill: AL<def> AL<kill> RAX<def>
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, -140(%rbp)          # 1-byte Folded Spill
	jmp	.LBB0_530
.Ltmp11:
	.size	BZ2_decompress, .Ltmp11-BZ2_decompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_5
	.quad	.LBB0_10
	.quad	.LBB0_15
	.quad	.LBB0_20
	.quad	.LBB0_57
	.quad	.LBB0_64
	.quad	.LBB0_69
	.quad	.LBB0_74
	.quad	.LBB0_79
	.quad	.LBB0_84
	.quad	.LBB0_124
	.quad	.LBB0_128
	.quad	.LBB0_132
	.quad	.LBB0_136
	.quad	.LBB0_140
	.quad	.LBB0_144
	.quad	.LBB0_148
	.quad	.LBB0_152
	.quad	.LBB0_204
	.quad	.LBB0_225
	.quad	.LBB0_242
	.quad	.LBB0_249
	.quad	.LBB0_269
	.quad	.LBB0_293
	.quad	.LBB0_316
	.quad	.LBB0_322
	.quad	.LBB0_376
	.quad	.LBB0_385
	.quad	.LBB0_429
	.quad	.LBB0_438
	.quad	.LBB0_526
	.quad	.LBB0_535
	.quad	.LBB0_644
	.quad	.LBB0_649
	.quad	.LBB0_654
	.quad	.LBB0_659
	.quad	.LBB0_664
	.quad	.LBB0_670
	.quad	.LBB0_674
	.quad	.LBB0_678
	.quad	.LBB0_682

	.text
	.align	16, 0x90
	.type	makeMaps_d,@function
makeMaps_d:                             # @makeMaps_d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	param_taint2(%rip), %al
	movb	%al, -1(%rbp)
	movb	$0, -1(%rbp)
	movl	$0, 3192(%rdi)
	xorl	%ecx, %ecx
	xorb	%r8b, %r8b
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%rcx
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%r8b, %r8b
	jne	.LBB1_8
# BB#2:                                 # %cont_BB
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$255, %ecx
	jg	.LBB1_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	testb	%r8b, %r8b
	movb	%al, -16(%rsi)
	jne	.LBB1_8
# BB#4:                                 # %cont_BB5
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	3196(%rdi,%rcx), %dl
	testb	%dl, %dl
	je	.LBB1_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movslq	3192(%rdi), %r9
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsi
	movq	%rsi, %rsp
	movb	%al, -16(%rdx)
	movb	$0, -16(%rdx)
	movb	%cl, 3468(%rdi,%r9)
	leaq	-16(%rsi), %rdx
	movq	%rdx, %rsp
	movb	%al, -16(%rsi)
	movl	3192(%rdi), %edx
	movb	%al, -16(%rsi)
	incl	%edx
	movl	%edx, 3192(%rdi)
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_8:                                # %abortBB
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	jmp	.LBB1_8
.LBB1_7:                                # %for.end
	movb	$0, return_taint1(%rip)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	makeMaps_d, .Ltmp17-makeMaps_d
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "\n    [%d: huff+mtf "
	.size	.L.str, 20

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "rt+rld"
	.size	.L.str1, 7

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
