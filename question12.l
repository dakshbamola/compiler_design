%{
#include<stdlib.h>
#include"y.tab.h"
%}
%%
[0-9]+ { yylval = atoi(yytext); return digit; }
[-+*/\n] return *yytext;
. ;
%%
int yywrap(void) {
return 1;
}