section .data

section .text
	global _ft_bzero

_ft_bzero:

push	rbp				;;push base pointer au dessus de la stack
mov		rbp, rsp		;; adresse de rsp dans rbp
xor		rcx, rcx		;; rcx a 0
mov		rbx, rdi		;; mov de rdi dans rbx

start: 
mov 	byte [rbx], 0
inc		rbx
inc		rcx
cmp		rcx, rsi
jne		start

leave
ret
