%{
  #include<stdio.h>
%}

%s A B C D E F G DEAD

%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN INITIAL;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<A>a BEGIN B;
<A>b BEGIN C;
<A>[^ab\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>a BEGIN D;
<B>b BEGIN E;
<B>[^ab\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<C>a BEGIN F;
<C>b BEGIN G;
<C>[^ab\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<D>a BEGIN D;
<D>b BEGIN E;
<D>[^ab\n] BEGIN DEAD;
<D>\n BEGIN INITIAL; {printf("Accepted\n");}

<E>a BEGIN F;
<E>b BEGIN G;
<E>[^ab\n] BEGIN DEAD;
<E>\n BEGIN INITIAL; {printf("Accepted\n");}

<F>a BEGIN B;
<F>b BEGIN C;
<F>[^ab\n] BEGIN DEAD;
<F>\n BEGIN INITIAL; {printf("Accepted\n");}

<G>a BEGIN A;
<G>b BEGIN INITIAL;
<G>[^ab\n] BEGIN DEAD;
<G>\n BEGIN INITIAL; {printf("Accepted\n");}

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
