section		.text

		global _ft_toupper

_ft_toupper:
	push		rbp
	mov			rbp, rsp

	cmp			rdi, 'a'
	jl			cancel
	cmp			rdi, 'z'
	jg			cancel
	
	add 		rdi, -32
	mov			rax, rdi
	leave
	ret

cancel:
	mov		rax, rdi
	leave
	ret
