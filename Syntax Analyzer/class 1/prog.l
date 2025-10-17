%option noyywrap

%{
    #include "prog.tab.h"
%}

%%
[Ii]    {printf("Found = %s , token = N \n" , yytext) ; return N; }
[Ee]at  {printf("Found = %s , token = V \n" , yytext) ; return V; }
[Rr]ice {printf("Found = %s , token = O \n" , yytext) ; return O; }
[ \t\n] {}
. {printf("Found = UNKNOWN , token = None \n") ; return  -1; }

%%
