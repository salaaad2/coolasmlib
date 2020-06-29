global ft_strlen

section .text

ft_strlen:
	mov	al, -1
.getnextchar:
	add	al, 1
	movsx	rcx, al
	cmp	[rdi + rcx], byte 0
	jne	.getnextchar
	movsx	eax, al
	ret
