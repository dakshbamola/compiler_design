%{
#include<stdlib.h>
#include"y.tab.h"
%}
%%
[a-z] {yylval=*yytext-'a'; return id;}
[0-9]+ {yylval=atoi(yytext); return digit;}
[-+()=/*\n] {return *yytext;}
[ \t] ;
. yyerror("invalid character");
%%
int yywrap(void) {
return 1;
}