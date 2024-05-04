FILES    = Colleen.c Grace.c Sully.c
OBJS     = ${FILES:.c=.o}
NAMES    = $(basename $(FILES))
CXX      = gcc
CXXFLAGS = -Wall -Wextra -Werror
KIDS	 = Sully_5 Sully_4 Sully_3 Sully_2 Sully_1 Sully_0
KIDC	 = $(addsuffix .c, ${KIDS}) Grace_kid.c  tmp_Colleen


%.o: %.c
	${CXX} ${CXXFLAGS} -c $< -o $@

all: ${NAMES}

${NAMES}: %: %.o
	${CXX} ${CXXFLAGS} $< -o $@

clean:
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAMES} ${KIDS} ${KIDC}

re: fclean all

.PHONY: all clean fclean re
