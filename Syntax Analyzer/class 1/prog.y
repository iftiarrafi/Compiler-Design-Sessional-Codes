%{
    #include<stdio.h>
    int yylex();
    void yyerror(const char *s);
%}

%token N V O
%start S

%%
S: N V O {printf("Correct Sentence!\n");}
    | error {printf("Incorrect Sentence!\n"); yyerror("wrong sentence sequences"); } ;

%%

void yyerror(const char *s){
    fprintf(stderr , "Error = %s" , s);
}

int main(void){
    printf("----Syntax analysis started----\n");
    yyparse();  /* it called yylex() internally */
    printf("----Syntax analysis Ended----\n");
    return 0;
}