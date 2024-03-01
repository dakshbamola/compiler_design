1. `ywrap()` : This is a user subroutine and this is typically used to inform lexer about how to deal with multiple input sources. In this case its empty. It implies that lexer will only process one input source.
2. `yylex()` : the main function calls the yylex() function to start the lexer/tokenizer. after the lexer finishes it does the further task and return 0 to indicate the successful program execution.
3. `yytext()` : This is not a function but rather a predefined character array that holds the matched text from the input stream.
4. `Character class []` : This is called a character class or character set. Its used to specify a set of character from which the search will match any single character.

1.declaration 
2.%% rules 
3.subroutine me main call 
4.main me yylex call

**Program 1:** Design a lex code to count the number of lines , space, tab meta character and rest of character in a given input pattern.

```lex
%{
int a=0,b=0,c=0,d=0;
%}
%%
\n a++;
[ ] b++;
\t c++;
. d++;
%%
int yywrap(){return 1;}
int main(){
	yylex();
	printf("%d %d %d %d",a,b,c,d);
	return 0;
}
```
