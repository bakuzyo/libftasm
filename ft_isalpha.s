section .text
global _ft_isalpha

_ft_isalpha:
push	rbp
mov		rbp, rsp

cmp		rdi, 'A'
jl		cancel
cmp		edi, 'z'
jg		cancel
cmp		edi, 'Z'
jle		confirm
cmp		edi, 'a'
jge		confirm

cancel:
xor		rax, rax

leave
ret

confirm:
mov		rax, 1

leave
ret
