section		.text

	global _ft_isascii

_ft_isascii:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 1
	jl		cancel
	cmp		rdi, 127
	jg		cancel

	mov		rax, 1
	leave
	ret

cancel:
	mov		rax, 0
	leave
	ret
