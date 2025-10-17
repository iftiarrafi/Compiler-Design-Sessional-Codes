%option noyywrap

%{
    #include "prog.tab.h"
%}


%%

"if" {printf("%s" , yytext) ; return IF ;}
"else" {printf("%s" , yytext) ; return ELSE ;}
"for" {printf("%s" , yytext) ; return FOR ;}
"while" {printf("%s" , yytext) ; return WHILE ;}
";" {printf("%s" , yytext) ; return SEMI ;}
[a-zA-z_][a-zA-z0-9]* {printf("%s" , yytext) ; return ID;}
[0-9]+ {printf("%s" , yytext)  ;return NUM;} 
"(" {printf("%s" , yytext) ; return LB; }
")" {printf("%s" , yytext)  ;return RB; }
"{" {printf("%s" , yytext) ; return LP;}
"}" {printf("%s" , yytext) ; return RP;}
"=" {printf("%s" , yytext)  ;return ASSIGN;}
"==" {printf("%s" , yytext) ; return EQ;}
"+" {printf("%s" , yytext) ; return PLUS;}
"-" {printf("%s" , yytext) ; return MINUS;}
"*" {printf("%s" , yytext) ; return MUL;}
"/" {printf("%s" , yytext) ; return DIV;}
">" {printf("%s" , yytext) ; return GT;}
"<" {printf("%s" , yytext) ; return LT;}
"<=" {printf("%s" , yytext) ; return LE;}
">=" {printf("%s" , yytext) ; return GE;}
[ \n\t] {}
. {printf(" UNKNOWN ,") ; return -1;}
