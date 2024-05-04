FILES    = Colleen.rs Grace.rs Sully.rs
OBJS     = ${FILES:.rs=.o}
NAMES    = $(basename $(FILES))
CXX      = rustc
KIDS	 = Sully_5 Sully_4 Sully_3 Sully_2 Sully_1 Sully_0
KIDC	 = $(addsuffix .rs, ${KIDS}) Grace_kid.rs  tmp_Colleen


%.o: %.rs
	${CXX} --emit=obj  $<

all: ${NAMES}

${NAMES}: %: %.rs
	${CXX}  $< -o $@

clean:
	rm -f ${NAMES}

fclean: clean
	rm -f ${NAMES} ${KIDS} ${KIDC}

re: fclean all

.PHONY: all clean fclean re
