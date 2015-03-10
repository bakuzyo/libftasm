section .data

section .text
	global _ft_bzero

_ft_bzero:

	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx
	mov		rbx, rdi

start: 
	cmp		rdi, 0
	je		cancel
	mov 	byte [rbx], 0
	inc		rbx
	inc		rcx
	cmp		rcx, rsi
	jne		start

	leave
	ret

cancel:
	mov		rax, 0
	leave
	ret
