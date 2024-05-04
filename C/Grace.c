#include <stdio.h>
#define S "#include <stdio.h>%c#define S %c%s%c%c#define O %cGrace_kid.c%c%c#define FT()int main(){ FILE* f = fopen(O,%cw%c); fprintf(f, S, 10,34,S,34,10, 34,34,10, 34,34, 10,10,9,10,10); fclose(f); return 0; }%c/*%c%ccomment%c*/%cFT()"
#define O "Grace_kid.c"
#define FT()int main(){ FILE* f = fopen(O,"w"); fprintf(f, S, 10,34,S,34,10, 34,34,10, 34,34, 10,10,9,10,10); fclose(f); return 0; }
/*
	comment
*/
FT()