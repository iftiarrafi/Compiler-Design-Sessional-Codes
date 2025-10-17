main0:
	bison -d prog.y
	flex prog.l
	gcc lex.yy.c prog.tab.c
	a.exe <input.txt > output.txt

clean:
	rm -f lex.yy.c a.exe prog.tab.c prog.tab.h