	.file	"ft_strdup.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	ft_strdup
	.type	ft_strdup, @function
ft_strdup:
.LFB11:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rdi
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	ft_strlen@PLT
	movsx	rbp, al
	mov	ebx, eax
	mov	rdi, rbp
	call	malloc@PLT
	test	rax, rax
	je	.L1
	test	bl, bl
	jle	.L8
	sub	ebx, 1
	movzx	ebx, bl
	add	rbx, 1
	cmp	ebx, 8
	jb	.L17
	mov	edx, ebx
	mov	rdi, rax
	mov	rsi, r12
	mov	rcx, QWORD PTR -8[r12+rdx]
	mov	QWORD PTR -8[rax+rdx], rcx
	lea	ecx, -1[rbx]
	shr	ecx, 3
	rep movsq
.L5:
	add	rbp, rax
.L3:
	mov	BYTE PTR 0[rbp], 0
.L1:
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	test	bl, 4
	jne	.L18
	test	ebx, ebx
	je	.L5
	movzx	edx, BYTE PTR [r12]
	mov	BYTE PTR [rax], dl
	test	bl, 2
	je	.L5
	mov	ebx, ebx
	movzx	edx, WORD PTR -2[r12+rbx]
	mov	WORD PTR -2[rax+rbx], dx
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rbp, rax
	jmp	.L3
.L18:
	mov	edx, DWORD PTR [r12]
	mov	ebx, ebx
	mov	DWORD PTR [rax], edx
	mov	edx, DWORD PTR -4[r12+rbx]
	mov	DWORD PTR -4[rax+rbx], edx
	jmp	.L5
	.cfi_endproc
.LFE11:
	.size	ft_strdup, .-ft_strdup
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
