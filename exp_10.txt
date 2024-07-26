%%
((http)|(ftp))s?:\/\/[a-zA-Z0-9](.[a-z])+(.[a-zA-Z0-9+=?]*)* {printf("\nValid URL\n");}

.+ {printf("\nInvalid URL\n");}

%%
void main()
{
	printf("\nEnter URL : ");
	yylex();
	printf("\n");
}
int yywrap()
{
}
