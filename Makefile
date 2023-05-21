NAME = libasm.a

SRCS = src/ft_strlen.s \
	src/ft_strcpy.s \
	src/ft_strcmp.s
#src/ft_write.s \
#src/ft_read.s \
#src/ft_strdup.s

OBJS = $(SRCS:src/%.s=obj/%.o)

NASM = nasm
CC = gcc
CFLAGS = -Wall -Wextra -Werror
MAIN = main.c
EXEC = testing

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	NASM_FLAGS = -f elf64
	echo "Compilation for Linux"
else ifeq ($(UNAME_S),Darwin)
	NASM_FLAGS = -f macho64
else
	$(error Unsupported operating system: $(UNAME_S))
endif

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

obj/%.o: src/%.s
	mkdir -p obj
	$(NASM) $(NASM_FLAGS) $< -o $@

clean:
	/bin/rm -f $(OBJS)
	/bin/rm -rf obj

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f $(EXEC)

re: fclean all

test: $(NAME)
	$(CC) $(CFLAGS) $(MAIN) -L. -lasm -o $(EXEC) -v
	echo "Compilation of test program complete. Run with ./$(EXEC)"

.PHONY: all clean fclean re test
