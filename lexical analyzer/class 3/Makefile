clean:
	rm lex.yy.c lexer.exe
main0:
	flex prog.l
	gcc lex.yy.c -o lexer.exe
	lexer.exe < input.txt > output.txt
