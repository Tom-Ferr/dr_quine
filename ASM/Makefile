FILES    = Colleen.s Grace.s Sully.s
OBJS     = ${FILES:.s=.o}
NAMES    = $(basename $(FILES))
CXX      = gcc
AS 	 	 = nasm
FORMAT	 = -f elf64
CXXFLAGS = -no-pie -Wall -Wextra -Werror -lc
KIDS	 = Sully_5 Sully_4 Sully_3 Sully_2 Sully_1 Sully_0
KIDC	 = $(addsuffix .s, ${KIDS}) Grace_kid.s  tmp_Colleen
KIDO	 = $(addsuffix .o, ${KIDS}) Grace_kid.s  tmp_Colleen


%.o: %.s
	${AS} $< ${FORMAT} -o $@

all: ${NAMES}

${NAMES}: %: %.o
	${CXX} ${CXXFLAGS} $< -o $@

clean:
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAMES} ${KIDS} ${KIDC} ${KIDO}

re: fclean all

.PHONY: all clean fclean re
