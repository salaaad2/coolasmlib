global ft_strlen

section .text

ft_strlen:
	xor ebx, ebx
.getnextchar:
	movsx	rcx, ebx
	cmp	[rdi + rcx], byte 0
	jne	.increbx
	mov	eax, ebx
	ret
.increbx:
	inc ebx
	jmp .getnextchar
