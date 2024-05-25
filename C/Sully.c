#include <stdio.h>
#include <stdlib.h>
int main()
{
	int i = 5;
	if(i <= 0)
		return 1;
	#ifdef QUINE
		i--;
	#endif
	char* s = "#include <stdio.h>%c#include <stdlib.h>%cint main()%c{%c%cint i = %d;%c%cif(i <= 0)%c%c%creturn 1;%c%c#ifdef QUINE%c%c%ci--;%c%c#endif%c%cchar* s = %c%s%c;%c%cFILE* f;%c%cchar t[12] = %c./Sully_X.c%c;%c%ct[8] = i + 48;%c%cf = fopen(t, %cw%c);%c%cfprintf(f, s, 10, 10, 10, 10,9, i, 10,9, 10,9,9, 10,9, 10,9,9, 10,9, 10,9, 34,s,34, 10,9, 10,9, 34,34, 10,9, 10,9, 34,34, 10,9, 10,9, 10,9, 34,34, 10,9, 10,9, 10,9, 10,9, 10,9, 10,9, 10);%c%cfclose(f);%c%cchar args[56] = %cgcc -Wall -Wextra -Werror Sully_X.c -o Sully_X -D QUINE%c;%c%cargs[32] = i + 48;%c%cargs[45] = i + 48;%c%ct[9] = 0;%c%csystem(args);%c%csystem(t);%c%creturn 0;%c}";
	FILE* f;
	char t[12] = "./Sully_X.c";
	t[8] = i + 48;
	f = fopen(t, "w");
	fprintf(f, s, 10, 10, 10, 10,9, i, 10,9, 10,9,9, 10,9, 10,9,9, 10,9, 10,9, 34,s,34, 10,9, 10,9, 34,34, 10,9, 10,9, 34,34, 10,9, 10,9, 10,9, 34,34, 10,9, 10,9, 10,9, 10,9, 10,9, 10,9, 10);
	fclose(f);
	char args[56] = "gcc -Wall -Wextra -Werror Sully_X.c -o Sully_X -D QUINE";
	args[32] = i + 48;
	args[45] = i + 48;
	t[9] = 0;
	system(args);
	system(t);
	return 0;
}