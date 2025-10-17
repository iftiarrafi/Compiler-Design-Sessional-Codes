%{
    #include<stdio.h>
    int yylex();
    void yyerror(const char *s);
%}

%token NUM ID OP SEMI LB RB PLUS MINUS MUL DIV LB RB EQ
%start S

%%
S: ID EQ E SEMI {printf("valid\n");}
    | error {printf("Incorrect !\n"); yyerror("wrong\n"); } ;

E: E PLUS T {printf("valid\n");}
    | E MINUS T {printf("valid\n");}
    | T {printf("valid\n");} ;

T: T MUL F {printf("valid\n") ;}
    | T DIV F {printf("valid\n") ;}
    | F {printf("valid\n") ;};

F: LB E RB {printf("valid\n") ;}
    | NUM {printf("valid\n") ;}
    | ID {printf("valid\n") ;} ;

%%

void yyerror(const char *s){
    fprintf(stderr , "Error = %s \n" ,s);
}

int main(void) {
    printf("======Semantic analysis starting======\n");
    yyparse();
    printf("======Semantic analysis ended======\n");
    return 0;
}