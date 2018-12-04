./compile $1 -x86 -allow-partial
gcc -g -m32 -lm x86/libmincaml.S $1.s  x86/stub.c -o $1.out


