//Program 7: Design a lex code to replace multiple spaces in input.txt file and replace them with single space and put it in new.txt file

%{
    #include<stdio.h>
%}

%%
[\t ]+ { fprintf(yyout," ");}
.|\n {fprintf(yyout,"%s",yytext);}
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
