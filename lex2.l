%{
#include <stdio.h>
%}

%%
[0-9] { printf("Digit: %s\n", yytext); }
[^0-9] { printf("Not a digit: %s\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
