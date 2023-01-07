# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmassarw <mmassarw@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/06 19:58:12 by mmassarw          #+#    #+#              #
#    Updated: 2023/01/07 05:27:23 by mmassarw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
CC	= @gcc
CFLAGS	= -Wall -Wextra -Werror
RM	= @rm -f

SRCS	= $(wildcards *.c)

OBJS	= $(patsubst %.c,%.o,$(wildcard *.c))

$(NAME):	$(OBJS)
			@ar -rcs $(NAME) $(OBJS)

all:		$(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:		fclean all
