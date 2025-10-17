%option noyywrap


/* header section */
%{
    #include<stdio.h>
%}


/* RE section */
%%
[Ii] {printf("Found = %s -> Token = Noun\n" , yytext);}
[Ee]at {printf("Found = %s -> Token = Verb\n" , yytext);}
[Rr]ice {printf("Found = %s -> Token = Object\n" , yytext);}
[ \t\n]  {}
. {printf("Found = %s -> Unknown\n" , yytext) ; }

%%

/* main function section */

int main(void) {
    printf("-----Starting lexical analysis-------\n");
    yylex();
    printf("-----Ending lexical analysis-------\n");
    return 0;
}

