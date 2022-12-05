# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: seowokim <seowokim@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/10 16:24:37 by seowokim          #+#    #+#              #
#    Updated: 2022/12/05 17:36:04 by seowokim         ###   ########seoul.kr   #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a

SRCS_DIR = ./srcs
HEADER_DIR = ./includes/
OBJS_DIR = ./objs

vpath %.c $(SRCS_DIR)

SRCS	=	ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_strncmp.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_itoa.c \
			ft_split.c \
			ft_strtrim.c \

CC	=	cc
CFLAGES	=	-Wall -Wextra -Werror
RM	=	rm -f
RMDIR = rm -rf

OBJ = $(SRCS:.c=.o)
OBJS = $(addprefix $(OBJS_DIR)/, $(OBJ))

RED = \033[0;31m
GREEN = \033[0;32m

all : $(NAME)

$(NAME) : $(OBJS)
	@printf "DONE\n"
	@ar -rc $@ $^

$(OBJS_DIR)/%.o : %.c
	@printf "$(GREEN)=="
	@mkdir -p $(OBJS_DIR)
	@$(CC) $(CFLAGES) -c $< -o $@ -I $(HEADER_DIR)


clean :
	@$(RMDIR) $(OBJS_DIR)

fclean : clean
	@echo "$(RED)REMOVE $(NAME)"
	@$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean re
