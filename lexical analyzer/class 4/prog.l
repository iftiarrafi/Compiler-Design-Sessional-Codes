%option noyywrap

%{
    #include<stdio.h>
%}


%%

[0-9]+                  {printf("found = %s , token = NUMBER \n" , yytext) ;}
[a-zA-Z_][a-zA-Z0-9_]*  {printf("found = %s , token = ID \n" , yytext) ;}
[+\-*/]                 {printf("found = %s , token = OP \n" , yytext) ;}
";"                     {printf("found = %s , token = SEMICOLON \n" , yytext) ;}
"="                     {printf("found = %s , token = EQUAL \n" , yytext) ;}
[ \t\n]                 {}
.                       {printf("found = %s , token = UNKNOWN \n" , yytext) ;}
%%

int main(void){
    printf("----------Lexical analysis starting-------\n");
    yylex();
    printf("----------Lexical analysis Ending-------\n");

}
