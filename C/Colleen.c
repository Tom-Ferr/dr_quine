#include <stdio.h>
void x(char* s){printf(s,10,10, 10,9,10, 10,10,10, 10,9,10, 10,9, 34,s,34, 10,9, 10,9, 10);}
/*
	global comment
*/
int main()
{
/*
	main comment
*/
	char* s = "#include <stdio.h>%cvoid x(char* s){printf(s,10,10, 10,9,10, 10,10,10, 10,9,10, 10,9, 34,s,34, 10,9, 10,9, 10);}%c/*%c%cglobal comment%c*/%cint main()%c{%c/*%c%cmain comment%c*/%c%cchar* s = %c%s%c;%c%cx(s);%c%creturn 0;%c}";
	x(s);
	return 0;
}