global	ft_strcpy

section	.text

ft_strcpy:
	mov	al, byte [rsi]
	mov	rcx, rdi
	test	al, al
	je	.ret_char
	add	rsi, 1
	mov	rcx, rdi
.copy_char:
	mov	byte [rcx], al
	movzx	eax, byte [rsi]
	add	rcx, 1
	add	rsi, 1
	test	al, al
	jne	.copy_char
.ret_char:
	mov	byte [rcx], 0
	mov	rax, rdi
	ret
