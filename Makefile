# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: seowokim <seowokim@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/05 15:37:26 by seowokim          #+#    #+#              #
#    Updated: 2022/12/05 16:40:45 by seowokim         ###   ########seoul.kr   #
#                                                                              #
# **************************************************************************** #

NAME = minishell

SRCS_DIR = ./srcs
HEADER_DIR = ./includes/
OBJS_DIR = ./objs

vpath %.c $(SRCS_DIR)

SRCS = test.c \

OBJ = $(SRCS:.c=.o)
OBJS = $(addprefix $(OBJS_DIR)/, $(OBJ))

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
RMDIR = rm -rf

all : $(NAME)

$(NAME) : $(OBJS)
	@echo "\033[0;34m====Compiling :\033[0;33m" $@ "\033[0;34m===="
	@$(CC) $(CFLAGS) -I $(HEADER_DIR) $(OBJS) -o $@
	@echo "\033[0;33m" $@ "HAS BEEN CREATED"


$(OBJS_DIR)/%.o : %.c
	@mkdir -p $(OBJS_DIR)
	@$(CC) $(CFLAGS) -I $(HEADER_DIR) -c $< -o $@

clean :
	@echo "\033[0;31mREMOVE OBJECTIVE FILES"
	@$(RMDIR) $(OBJS_DIR)

fclean : clean
	@echo "\033[0;31mREMOVE $(NAME)"
	@$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean re