# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbatiot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/07 18:24:18 by vbatiot           #+#    #+#              #
#    Updated: 2015/03/08 21:33:38 by vbatiot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_bzero.s ft_isalpha.s ft_isdigit.s ft_isalnum.s\

OBJ = $(SRC:%.s=%.o)

NAME = libfts.a

all: $(NAME)

$(NAME): $(OBJ)
	gcc -c main.c
	ld main.o $(OBJ) -macosx_version_min 10.10 -lSystem

%.o: %.s
	~/.brew/Cellar/nasm/2.11.06/bin/nasm -f macho64 $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
