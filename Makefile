#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/15 17:16:47 by aollivie          #+#    #+#              #
#    Updated: 2015/03/26 15:12:00 by aollivie         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libfts.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra

SRC =  	ft_isdigit.s ft_isalpha.s ft_isalnum.s ft_isascii.s ft_isprint.s ft_toupper.s ft_tolower.s ft_strlen.s ft_puts.s ft_memset.s ft_bzero.s ft_strcat.s ft_memcpy.s ft_strdup.s ft_strnew.s ft_strdup.s ft_putstr.s ft_cat.s ft_putstr_fd.s ft_isblank.s ft_isspace.s

OBG =   ft_isdigit.o ft_isalpha.o ft_isalnum.o ft_isascii.o ft_isprint.o ft_toupper.o ft_tolower.o ft_strlen.o ft_puts.o ft_memset.o ft_bzero.o ft_strcat.o ft_memcpy.o ft_strdup.o ft_strnew.o ft_strdup.o ft_putstr.o ft_cat.o ft_putstr_fd.o ft_isblank.o ft_isspace.o

all: $(NAME)

$(NAME): $(OBG)
	ar rc $(NAME) $(OBG)
	ranlib $(NAME)

%.o: %.s
	/nfs/zfs-student-5/users/2014_paris/aollivie/.brew/Cellar/nasm/2.11.06/bin/nasm -f macho64 $<


clean:
	rm -f $(OBG)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re