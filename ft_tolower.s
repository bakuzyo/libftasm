section		.text

		global _ft_tolower

_ft_tolower:
	push	rbp
	mov		rbp, rsp

	cmp		rdi, 'A'
	jl		cancel
	cmp		rdi, 'Z'
	jg		cancel

	add		rdi, 32
	mov		rax, rdi
	leave
	ret

cancel:
	mov		rax, 0
	leave
	ret
