//Program 8: Design a lex code to remove comments from any C program given at run-time and store into output.c

%{
    #include<stdio.h>
%}

%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%

int yywrap(){ 
    return 1;
}

int main(){
    yyin=fopen("abc.txt","r");
    yyout=fopen("abc2.txt","w");
    yylex();
    return 0;
}
