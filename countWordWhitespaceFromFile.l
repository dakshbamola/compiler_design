//Program 6: Design a lex code to count total number of whitespaces, words, characters in input.txt file

%{
    #include<stdio.h>
    int words=0, spaces=0, chars=0;
%}

%%
[ ] { spaces++;}
[ \t\n]   {chars++; }
[a-zA-Z]+ { words++; chars += yyleng; }
. { chars++; }
%%

int yywrap(){
    return 1;
}

int main(){
    yyin=fopen("abc.txt","r");
    yylex();
    printf("spaces: %d, words: %d, characters: %d\n",spaces,words,chars);
    return 0;
}
