//Program 1: Design a lex code to identify and count Capital letters in a given input pattern.

%{
    int count = 0;
%}

%%
[A-Z] {
    printf("%s capital letter\n", yytext);
    count++;}
. {
    printf("%s not a capital letter\n",yytext);
}
\n {return 0;}
%%

int yywrap(){}
int main(){
    yylex();
    printf("\nNumber of capital letters ""in the given input- %d\n",count);
    return 0;
}
