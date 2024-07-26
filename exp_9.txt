%{
#include <stdio.h>
int max_length = 0;
int current_length = 0;
%}

%option noyywrap

%%
[a-zA-Z]+   { current_length = yyleng; if (current_length > max_length) max_length = current_length; }
.           ;
%%

int main() {
    yylex();
    printf("Length of the longest word: %d\n", max_length);
    return 0;
}
