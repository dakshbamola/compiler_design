//Program 5: Design a lex code to identify and count tokens in an input stream.

%{
    #include<stdio.h>
    int n=0;
%}

%%
"while"|"if"|"else" {n++;printf("\t keywords : %s", yytext);}   

"int"|"float" {n++;printf("\t keywords : %s", yytext);}    

[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\t identifier : %s", yytext);}  

"<="|"=="|"="|"++"|"-"|"*"|"+" {n++;printf("\t operator : %s", yytext);} 

[(){}|,;]    {n++;printf("\t separator : %s", yytext);}  

[0-9]*"."[0-9]+ {n++;printf("\t float : %s", yytext);}   

[0-9]+ {n++;printf("\t integer : %s", yytext);}                         
  
. ; 
%%

int yywrap(){
    return 1;
}
int main(){
    yylex();
    printf("\nTotal number of tokens are %d\n",n);
    return 0;
}