global ft_strdup

extern malloc

section	.text
  extern ft_strcpy
  extern ft_strlen

ft_strdup:
	push rdi
	call	ft_strlen
	inc rax
	mov rdi, rax
	call	malloc
	cmp rax, 0x0
	jne	.return

.error:
	mov rax, 0x0
	ret
.return:
	pop rdi
	mov rsi, rdi
	mov rdi, rax
	call ft_strcpy
	ret
