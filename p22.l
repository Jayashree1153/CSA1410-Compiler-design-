digit [0-9]
%{
int cons=0;
%}
%%
{digit}+ { cons++; printf("%s is a constant\n", yytext);  }
.|\n { }
%%
int yywrap(void) {
return 1; }
int main(int argc, char *argv[])
{
//FILE *f;
//char file[10];
//printf("Enter File Name : ");
//scanf("%s",file);
yyin = fopen(argv[1],"r");

yylex();
printf("Number of Constants : %d\n", cons);
fclose(yyin);  
}
