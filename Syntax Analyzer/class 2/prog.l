%option noyywrap

%{
    #include "prog.tab.h"
%}


%%

[0-9]+ {printf("Found = %s , token = NUM \n" , yytext); return NUM ;}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Found = %s , token = ID \n" , yytext); return ID ;}
"+" {printf("Found = %s , token = OP \n" , yytext); return PLUS ;}
"-" {printf("Found = %s , token = OP \n" , yytext); return MINUS ;}
"*" {printf("Found = %s , token = OP \n" , yytext); return MUL ;}
"/" {printf("Found = %s , token = OP \n" , yytext); return DIV ;}
";" {printf("Found = %s , token = SEMI \n" , yytext); return SEMI ;}
"(" {printf("Found = %s , token = LB \n" , yytext); return LB ;}
")" {printf("Found = %s , token = RB \n" , yytext); return RB ;}
"=" {printf("Found = %s , token = EQ \n" , yytext); return EQ ;}
[ \t\n] {}
. {printf("Found = %s , token = UNKNOWN \n" , yytext) ; return -1 ;}

%%

