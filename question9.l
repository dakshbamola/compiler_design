%{
   #include<stdio.h>
%}

%s A B C DEAD
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN C;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Accepted\n");}

<A>a BEGIN INITIAL;
<A>b BEGIN B;
<A>[^ab\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>a BEGIN C;
<B>b BEGIN A;
<B>[^ab\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<C>a BEGIN B;
<C>b BEGIN INITIAL;
<C>[^ab\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}

%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("Enter the string:");
    yylex();
    return 0;
}