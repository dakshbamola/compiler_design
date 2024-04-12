//Program 4: Design a lex code to identify integer and floating-point values in an input stream.

%{
    #include<stdio.h>
%}

%%
[0-9]*"."[0-9]+ {printf("Float value");}
[0-9]+ {printf("Integer value");}
. ;
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}