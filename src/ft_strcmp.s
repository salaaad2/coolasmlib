global	ft_strcmp

section	.text

ft_strcmp:
	xor	eax, eax
.loop_strs:
	movzx	edx, byte [rdi + rax]
	movsx	ecx, byte [rsi + rax]
	test	ecx, ecx
	je	.ret_val
	test	dl, dl
	je	.ret_val
	add	rax, 1
	cmp	dl, cl
	je	.loop_strs
.ret_val:
	movsx	eax, dl
	sub	eax, ecx
	ret
