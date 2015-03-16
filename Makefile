# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbatiot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/09 16:17:58 by vbatiot           #+#    #+#              #
#    Updated: 2015/03/16 02:11:48 by vbatiot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_PATH = ./sources/
SRC_NAME =	ft_bzero.s\
			ft_strcat.s\
			ft_isalpha.s\
			ft_isdigit.s\
			ft_isalnum.s\
			ft_isascii.s\
			ft_isprint.s\
			ft_toupper.s\
			ft_tolower.s\
			ft_islower.s\
			ft_isupper.s\
			ft_memcpy.s\
			ft_memset.s\
			ft_strlen.s\
			ft_puts.s\
			ft_cat.s\

OBJ_PATH = ./obj/
OBJ_NAME = $(SRC_NAME:.s=.o)

NAME = libfts.a

CC = ~/.brew/Cellar/nasm/2.11.06/bin/nasm
CFLAGS = -f macho64

LD = ar rc

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) $@ $(OBJ)
	ranlib $@
	@echo "\x1b[32m"ALL RIGHT!

$(OBJ_PATH)%.o: $(SRC_PATH)%.s
	@mkdir $(OBJ_PATH) 2> /dev/null || echo "" > /dev/null
	@echo .
	$(CC) $(CFLAGS) $< -o $@

clean:
	@rm -fv $(OBJ)
	@rmdir $(OBJ_PATH) 2> /dev/null || echo "" > /dev/null

fclean: clean
	@rm -fv $(NAME)
	@rm -fv a.out

test: all
	gcc src/main.c libfts.a

re: fclean all
