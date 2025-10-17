main0:
	bison -d prog.y
	flex prog.l
	gcc lex.yy.c prog.tab.c
	a.exe < input.txt > output.txt


clean:
	rm -f a.exe lex.yy.c prog.tab.h prog.tab.c