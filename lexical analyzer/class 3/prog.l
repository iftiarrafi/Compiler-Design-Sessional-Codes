%option noyywrap

%{
    #include<stdio.h>
%}


%%

[RBKC]UET       {printf("University =  %s \n" ,yytext );}
(CSE|EEE|ME|CE) {printf("Dept =  %s \n" ,yytext );}
(20|21|22|23|24) {printf("Series =  %s \n" ,yytext );}
[ \t\n] {};
. {printf("Unknown =  %s \n" ,yytext );}
%%


int main(void){
    printf("--------starting lexical analysis------\n");
    yylex();
    printf("--------ending lexical analysis------\n");
    return 0;
}