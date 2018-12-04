./compile $1 -llvm-ir
# opt $1.ll -O3 -S > $1.ll
clang -g -m32 -lm x86/lib64.S $1.ll -O0 -o $1.out 
