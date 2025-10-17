%{
#include<stdio.h>
void yyerror(const char *c);
int yylex();
%}

%token INT ID LB RB LP RP COMMA
%token IF ELSE EQ PLUS MINUS SEMI LE GE LT GT RETURN
%token ASSIGN NUM MUL DIV DO WHILE FOR
%start S

%%
S: | S stmt {printf("String matched!\n");} 
    ;
stmt: LP S RP  {printf("String matched!\n");} 
    | INT ID LB op_p_list RB LP stmt_list RP {printf("String matched!\n");} 
    | IF LB cond RB stmt {printf("String matched!\n");} 
    | IF LB cond RB stmt ELSE stmt {printf("String matched!\n");} 
    | RETURN ID SEMI{printf("String matched!\n");} 
    | DO stmt WHILE LB cond RB {printf("String matched!\n");} 
    | expr SEMI
    ;
stmt_list: stmt_list stmt | stmt ;
op_p_list: | INT ID
    | op_p_list COMMA INT ID ; 

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


void yyerror(const char *s){
    fprintf(stderr , "Error = %s \n" , s);
}

int main(void){
    printf("========Syntax analyzing started=====\n");
    yyparse();
    printf("========Syntax analyzing ended=====\n");
    return 0;
    
}