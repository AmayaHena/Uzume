##
## PERSONEL PROJECT, 2020
## Uzume
## File description:
## Makefile
##

# ---------------------------------------- #
#               Variables				   #
# ---------------------------------------- #

NAME			=	uzume.so

CXX				=	ghc

CXXFLAGS		=	-Wall -Werror

SRC				= 	src/parsing/Args.hs \
					src/parsing/Char.hs	\
					src/parsing/Int.hs	\
					src/check/Int.hs

OBJF			=	$(SRC:.hs=.o)

HIF				= 	$(SRC:.hs=.hi)

# ---------------------------------------- #
#                 RULES					   #
# ---------------------------------------- #

all: $(NAME)

$(NAME): $(SRCOBJ)
	$(CXX) --make -dynamic -shared -fPIC $(SRC) -o $(NAME)

clean:
	$(RM) $(OBJF)
	$(RM) $(HIF)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re debug
