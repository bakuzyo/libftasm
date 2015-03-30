section .data
	msg db		"NULL"

section .text
	global _ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi

	loop:
	cmp		byte [rbx], 0
	je		cancel
	mov		rdi, 1
	mov		rsi, rbx
	mov		rdx, 1
	mov		rax, 0x2000004
	syscall
	inc		rbx
	jmp		loop
	cmp		rdi, 0
	je		perror

perror:
	//FINIR LA COUCOU
	leave
	ret

cancel:
	leave
	ret
