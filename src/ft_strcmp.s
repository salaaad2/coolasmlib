global	ft_strcmp

section	.text

ft_strcmp:
	xor	rax, rax
	xor	rcx, rcx
	xor	rdx, rdx
.loop_strs:
	cmp	byte [rdi + rcx], 0x0
	je	.ret_val
	cmp	byte [rsi + rcx], 0x0
	je	.ret_val
	mov dl, byte [rsi + rcx]
	cmp byte [rdi + rcx], dl
	jne	.ret_val
	inc	rcx
	jmp	.loop_strs
.ret_val:
    mov al, byte [rdi + rcx]
    mov dl, byte [rsi + rcx]
	sub	rax, rdx
	ret
