//Program 9: Design a lex code to extract all html tags in the given html file at run time and store int text file given at run time

%{
    #include<stdio.h>
%}

%%
\<[^><]*\> {fprintf(yyout,"%s\n",yytext);}
.|\n
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
