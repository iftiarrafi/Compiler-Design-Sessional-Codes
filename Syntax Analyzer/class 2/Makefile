main0:
	bison -d prog.y
	flex prog.l
	gcc lex.yy.c prog.tab.c -o lexer.exe
	lexer.exe < input.txt > output.txt
clean :
	rm -f lexer.exe lex.yy.c prog.tab.c prog.tab.h