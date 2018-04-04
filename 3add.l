%{
	#include "y.tab.h"
%}

%%

[\n\t]	return 0;
[0-9]+	{ yylval.sym = (char)yytext[0]; return NUM;}
[a-z]+	{ yylval.sym = (char)yytext[0]; return LET;}
[+]	return '+';
[-]	return '-';
[*]	return '*';
[/]	return '/';
.	return yytext[0];

%%
