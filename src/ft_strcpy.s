section	.text
global	ft_strcpy

ft_strcpy:
	xor rcx, rcx
	xor rdx, rdx
	mov rax, rdi
.copy_char:
	cmp byte [rsi + rcx], 0x0
	je  .ret_char
	mov dl, byte [rsi + rcx]
	mov byte [rdi + rcx], dl
	inc rcx
	jmp	.copy_char
.ret_char:
	mov byte [rdi + rcx], 0x0
	ret
