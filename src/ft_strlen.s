global ft_strlen

section .text

ft_strlen:
	mov	ebx, 0
.getnextchar:
	movsx	rcx, ebx
	cmp	[rdi + rcx], byte 0
	jne	.increbx
	mov	eax, ebx
	ret
.increbx:
	inc ebx
	jmp .getnextchar
