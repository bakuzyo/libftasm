%define BUFF_SIZE 42

section			.bss
	buffer		resb		BUFF_SIZE

section			.text
	global	_ft_cat

_ft_cat:
	push		rbp
	mov			rbp, rsp

__read:
	push		rdi
	mov			rsi, buffer
	mov			rdx, BUFF_SIZE
	mov			rax, 0x2000003
	syscall
	jc			end
	cmp			rax, 0
	jle			end
	mov			rdi, 1
	mov			rdx, rax
	mov			rax, 0x2000004
	syscall
	pop			rdi
	jmp			__read

end:
	mov		rsp, rbp
	pop		rbp
	ret
