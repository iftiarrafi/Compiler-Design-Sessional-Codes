clean:
	rm lex.yy.c a.exe
main0:
	flex prog.l
	gcc lex.yy.c
	a.exe < input.txt > output.txt