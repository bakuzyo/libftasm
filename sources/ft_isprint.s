section		.text

	global _ft_isprint

_ft_isprint:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 32
	jl		cancel
	cmp		rdi, 126
	jg		cancel

	mov		rax, 1
	leave
	ret

cancel:
	mov		rax, 0
	leave
	ret
