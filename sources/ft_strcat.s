section		.text

	global _ft_strcat

_ft_strcat:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi
	mov		rcx, rsi

buff1:
	cmp		byte [rbx], 0
	je		buff2
	inc		rbx
	jmp		buff1

buff2:
	cmp		byte [rcx], 0
	je		cancelled
	mov		al, byte [rcx]
	mov		byte [rbx], al
	inc		rcx
	inc		rbx
	jmp		buff2

cancelled:
	mov		byte [rbx], 0

cancel:
	mov		rax, rdi
	leave
	ret
