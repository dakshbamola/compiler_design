//Program 3: Design a lex code to identify and print valid identifier of C/C++ in given input pattern.

//Code:

%{ 
#include <stdio.h> 
%} 

%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("Valid Identifier\n");} 
. {printf("Not Valid Identifier\n");}
%% 
int yywrap(){return 1;}
int main(){
	yylex();
	return 0; 
}
