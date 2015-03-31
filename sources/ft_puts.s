section .text
	global _ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi

loop:
	cmp		rdi, 0
	je		error
	cmp		byte [rbx], 0
	je		cancel
	mov		rdi, 1
	mov		rsi, rbx
	mov		rdx, 1
	mov		rax, 0x2000004
	syscall
	inc		rbx
	jmp		loop

cancel:
	leave
	ret

error:
	mov		rax, 0
	leave
	ret
