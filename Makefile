# ********************************************************** #
#                        GET_NEXT_LINE                       #
# ********************************************************** #

NAME = gnl

# Compiler and flags
CC = cc
CFLAGS = -Wall -Wextra -Werror -D BUFFER_SIZE=42

# Sources and Objects
SRC = main.c get_next_line.c get_next_line_utils.c
OBJ = $(SRC:.c=.o)

# Default rule
all: $(NAME)

# Link objects into an executable
$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

# Compile each .c file to .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean .o files
clean:
	rm -f $(OBJ)

# Clean everything
fclean: clean
	rm -f $(NAME)

# Rebuild from scratch
re: fclean all

.PHONY: all clean fclean re
