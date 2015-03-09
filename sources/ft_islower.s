section		.text

	global _ft_islower

_ft_islower:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 'a'
	jl		cancel
	cmp		rdi, 'z'
	jg		cancel

	mov		rax, 1
	leave
	ret

cancel:
	mov		rax, 0
	leave
	ret
