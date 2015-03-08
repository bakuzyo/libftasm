section		.text

	global _ft_isdigit

_ft_isdigit:
	push		rbp
	mov			rbp, rsp

	cmp			rdi, '0'
	jl			cancel
	cmp			rdi, '9'
	jg			cancel

	mov			rax, 1
	leave
	ret

cancel:
	mov			rax, 0
	leave
	ret

;
;
;
;
;
;
;
;
;
;
;
;
;
;_____ rsp
;_____ rbp (rbp est a 0 a la base)
;___
;___
;___
;___
;___
;___
;___
;___
;___
;___
;___
;___
;___ ...
;___ 2
;___ 1
;___ 0
