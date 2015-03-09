section		.text

	global _ft_isupper

_ft_isupper:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 'A'
	jl		cancel
	cmp		rdi, 'Z'
	jg		cancel

	mov		rax, 1
	leave
	ret

cancel:
	mov		rax, 0
	leave
	ret
