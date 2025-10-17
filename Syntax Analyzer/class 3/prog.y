%{
#include<stdio.h>
int yylex();
void yyerror(const char *s);
%}

%token IF ELSE ID NUM SEMI
%token LB RB LP RP
%token PLUS MINUS MUL DIV 
%token LE GE GT LT EQ ASSIGN

%start S

%%
S: | S stmt 
    ;

stmt: LP S RP 
    | expr SEMI 
    | IF LB cond RB stmt 
    | IF LB cond RB stmt ELSE stmt
    ;

cond: expr relop expr
    ;

expr: ID 
    | NUM 
    | expr PLUS expr
    | expr MINUS expr
    | expr MUL expr
    | expr DIV expr
    | ID ASSIGN expr

relop: LE | GE | LT | GT | EQ
    ;




%%

void yyerror(const char *s) {
    fprintf(stderr , "Error = %s" , s);
}

int main(void){
    printf("-----Syntax analysis started-----\n");
    yyparse();
    printf("-----Syntax analysis ended-----\n");
    
}