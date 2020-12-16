global ft_strdup

extern malloc

section	.text
  extern ft_strcpy
  extern ft_strlen

ft_strdup:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	ft_strlen
	movsx	rdi, ebx
	call	malloc
	mov	rbx, rax
	test	rax, rax
	je	.return
	mov	rdi, rbx
	mov	rsi, r14
	call	ft_strcpy
.return:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret
