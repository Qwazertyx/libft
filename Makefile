# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vsedat <vsedat@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/03 12:35:11 by vsedat            #+#    #+#              #
#    Updated: 2021/11/09 12:51:28 by vsedat           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_isalpha.c	\
			ft_calloc.c		\
			ft_strdup.c		\
			ft_isdigit.c	\
			ft_strlcat.c	\
			ft_strlcpy.c	\
			ft_isalnum.c	\
			ft_isascii.c	\
			ft_isprint.c	\
			ft_strlen.c		\
			ft_memset.c		\
			ft_bzero.c		\
			ft_memcpy.c		\
			ft_memmove.c	\
			ft_toupper.c	\
			ft_tolower.c	\
			ft_strchr.c		\
			ft_strncmp.c	\
			ft_memchr.c		\
			ft_memcmp.c		\
			ft_strnstr.c	\
			ft_atoi.c		\
			ft_strrchr.c	\
			ft_substr.c		\
			ft_strjoin.c	\
			ft_strtrim.c	\
			ft_itoa.c		\
			ft_strmapi.c	\
			ft_striteri.c	\
			ft_putchar_fd.c	\
			ft_putstr_fd.c	\
			ft_putnbr_fd.c	\
			ft_putendl_fd.c	\
			ft_split.c		\


SRCS_BONUS	=	ft_lstnew.c			\
				ft_lstadd_front.c	\
				ft_lstsize.c		\
				ft_lstlast.c		\
				ft_lstadd_back.c	\
				ft_lstdelone.c		\
				ft_lstclear.c		\
				ft_lstiter.c		\
				ft_lstmap.c			\

OBJS	= ${SRCS:%.c=%.o}

OBJS_BONUS	= ${SRCS_BONUS:%.c=%.o}

NAME	= libft.a

CC		= gcc

CFLAGS	= -Wall -Wextra -Werror

%.o: %.c libft.h Makefile
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
		ar r ${NAME} ${OBJS}

all:	${NAME}

clean:
		rm -f ${OBJS} ${OBJS_BONUS}

fclean:	clean
		rm -f ${NAME}

re:		fclean
	${MAKE} all

bonus:	all ${OBJS_BONUS}
		ar r ${NAME} ${OBJS_BONUS}

.PHONY:	all clean fclean re bonus
