%option noyywrap

%{
    #include "prog.tab.h"
%}


%%

"if"          {printf("%s\n" , yytext) ; return IF ;}
"else"      {printf("%s\n" , yytext) ; return ELSE ;}
"do"         {printf("%s\n" , yytext) ; return DO ;}
"," {printf("%s\n" , yytext) ; return COMMA ;}
"int"  {printf("%s\n" , yytext) ; return INT ; }
"return" {printf("%s\n" , yytext) ; return RETURN ; }
"for" {printf("%s\n" , yytext) ; return FOR ;}
"while" {printf("%s\n" , yytext) ; return WHILE ;}
";" {printf("%s\n" , yytext) ; return SEMI ;}
[a-zA-z_][a-zA-z0-9]* {printf("%s\n" , yytext) ; return ID;}
[0-9]+ {printf("%s\n" , yytext)  ;return NUM;} 
"(" {printf("%s\n" , yytext) ; return LB; }
")" {printf("%s\n" , yytext)  ;return RB; }
"{" {printf("%s\n" , yytext) ; return LP;}
"}" {printf("%s\n" , yytext) ; return RP;}
"=" {printf("%s\n" , yytext)  ;return ASSIGN;}
"==" {printf("%s\n" , yytext) ; return EQ;}
"+" {printf("%s\n" , yytext) ; return PLUS;}
"-" {printf("%s\n" , yytext) ; return MINUS;}
"*" {printf("%s\n" , yytext) ; return MUL;}
"/" {printf("%s\n" , yytext) ; return DIV;}
">" {printf("%s\n" , yytext) ; return GT;}
"<" {printf("%s\n" , yytext) ; return LT;}
"<=" {printf("%s\n" , yytext) ; return LE;}
">=" {printf("%s\n" , yytext) ; return GE;}
[ \n\t] {}
. {printf(" UNKNOWN ,") ; return -1;}
