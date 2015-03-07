# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    bzero.s                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbatiot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/07 14:26:19 by vbatiot           #+#    #+#              #
#    Updated: 2015/03/07 15:45:07 by vbatiot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#include "libfts.h"

section .text
	global _ft_bzero
	ret

_ft_bzero:
	debut: 
	mov rcx, 0
	cmp rcx, rsi
	je end
	inc rcx
	mov bytes [rdi], 0
	jmp debut
	ret
