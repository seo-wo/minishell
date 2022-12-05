# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: seowokim <seowokim@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/05 15:37:26 by seowokim          #+#    #+#              #
#    Updated: 2022/12/05 17:36:18 by seowokim         ###   ########seoul.kr   #
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

LIBFT = -L./libft/ -lft
LIBDIR = ./libft

RED = \033[0;31m
BLUE = \033[0;34m
YELLOW = \033[0;33m

all : $(NAME)

$(NAME) : $(OBJS)
	@echo "\t$(BLUE)Compiling :$(YELLOW) $@"
	@$(MAKE) -C $(LIBDIR)
	@$(CC) $(CFLAGS) -I $(HEADER_DIR) $(OBJS) -o $@ $(LIBFT)
	@echo "\t$(YELLOW)$@ $(BLUE)HAS BEEN CREATED"


$(OBJS_DIR)/%.o : %.c
	@mkdir -p $(OBJS_DIR)
	@$(CC) $(CFLAGS) -I $(HEADER_DIR) -c $< -o $@

clean :
	@echo "$(RED)REMOVE OBJECTIVE FILES"
	@$(MAKE) -C $(LIBDIR) clean
	@$(RMDIR) $(OBJS_DIR)

fclean : clean
	@$(MAKE) -C $(LIBDIR) fclean
	@echo "REMOVE $(NAME)"
	@$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean re