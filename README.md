This Repository contains code and information about Compiler Design.

You can run the lex ".l" file using the command `lex file_name.l`.

Then you'll have to run `gcc lex.yy.c` command. A new file will be created.

Lastly run `./a.out` to run your program.

Some function that we will be using

1. `ywrap()` : This is a user subroutine and this is typically used to inform lexer about how to deal with multiple input sources. In this case its empty. It implies that lexer will only process one input source.
2. `yylex()` : the main function calls the yylex() function to start the lexer/tokenizer. after the lexer finishes it does the further task and return 0 to indicate the successful program execution.
3. `yytext()` : This is not a function but rather a predefined character array that holds the matched text from the input stream.
4. `Character class []` : This is called a character class or character set. Its used to specify a set of character from which the search will match any single character.

1.declaration 
2.%% rules 
3.subroutine me main call 
4.main me yylex call