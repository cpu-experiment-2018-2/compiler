./compile $1 -x86
gcc -g -m32 -lm libmincaml.S $1.s  x86/stub.c -o $1.out


