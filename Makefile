NAME = push_swap

RESIDUES =	push_swap.dSYM \
			main.o.dSYM \
			./sources/*.o \
			./libft/*.o \
			main.o \

SRCS =		main.c \
			./sources/freeall.c \
			./sources/ft_realloc.c \
			./sources/check_numeric_limits.c \
			./sources/check_repeated_numbers.c \
			./sources/parsing.c \
			./sources/size.c \
			./sources/para.c \
			./sources/issorted.c \
			./sources/ft_isnumber.c \
			./sources/sort_3digits.c \
			./sources/sort_5digits.c \
			./sources/sort_big_stack.c \
			./sources/ft/pb.c \
			./sources/ft/sa.c \
			./sources/ft/sb.c \
			./sources/ft/ss.c \
			./sources/ft/pa.c \
			./sources/ft/ra.c \
			./sources/ft/rb.c \
			./sources/ft/rr.c \
			./sources/ft/rra.c \
			./sources/ft/rrb.c \
			./sources/ft/rrr.c \

LIB = ./libft/*.c

FLAGS = -Wall -Wextra -Werror

OBJS = $(SRCS:.c=.o)

CC = gcc -g

%.o: %.c
	$(CC) $(FLAGS) -g -c $< -o $@

$(NAME): $(OBJS)
	$(CC) $(FLAGS) $(SRCS) $(LIB) -Iincludes -o $(NAME)

all: $(NAME)

clean:
	@rm -rf *.o
	@rm -rf ./sources/ft/*.o
	@echo "cleaning .o files"

fclean: clean
	@rm -rf $(NAME) $(RESIDUES)

re: fclean all

debug: $(OBJS)
	$(CC) $(FLAGS) $(SRCS) $(LIB) -fsanitize=address -Iincludes -o $(NAME)