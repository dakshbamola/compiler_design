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
