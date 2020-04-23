#############################################################
# auteur : salad			                                #
# fichier: GNU Makefile		                                #
# project: salad's asm library                              #
#                                                           #
#                                                           #
#############################################################

default:all

CC = clang
ASM = nasm
ARCH = -f elf64
NAME = libasm.a
RM = rm -f

SRCDIR = asrcs/

ASRCS  = $(SRCDIR)ft_strlen.s
ASRCS += $(SRCDIR)ft_strcpy.s
ASRCS += $(SRCDIR)ft_strcmp.s

OBJS = ${ASRCS:.s=.o}


all:
	make $(NAME)

%.o: %.s
	$(ASM) $(ARCH) -o $@ $<

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME) a.out
