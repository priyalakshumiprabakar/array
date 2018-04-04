lex 3add.l
yacc -d 3add.y
gcc -o 3add y.tab.c -ly
./3add < input.txt
