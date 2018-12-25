USE_OCAMLFIND=true
PACKS = ppx_deriving.show ppx_deriving.ord,llvm
CC = gcc
CFLAGS = -g -O2 -Wall -fPIC

LIBINSTALL_FILES=build
DOCS = src/common.ml src/type.ml src/syntax.ml src/lexer.ml src/parser.ml src/typing.ml src/knormal.ml src/alpha.ml src/anormal.ml src/constantFold.ml src/inline.ml src/cseElimination.ml  src/removeLet.ml src/closure.ml src/lambdaLifting.ml src/virtual.ml src/regalloc.ml src/asm.ml 

SOURCES = x86/id.ml src/common.ml src/util.c src/type.ml src/syntax.ml src/lexer.mll src/parser.mly src/typing.ml src/ptyping.ml src/knormal.ml src/alpha.ml src/anormal.ml src/constantFold.ml src/inline.ml src/cseElimination.ml  src/hpAlloc.ml src/removeLet.ml src/closure.ml src/lambdaLifting.ml src/virtual.ml   src/scheduling.ml src/asm.ml src/regalloc.ml src/IR.ml src/eliminateTailRecCall.ml src/whileToFor.ml src/ssa.ml src/llvmCodegen.ml x86/x86asm.ml x86/x86regAlloc.ml x86/x86simm.ml x86/x86virtual.ml x86/x86emit.ml  src/main.ml 
RESULT = compile
OCAMLDOCFLAGS=-charset utf-8


all: byte-code byte-code-library 

clean:: nobackup

compiler-doc: all
	 ocamlfind ocamldoc -package ppx_deriving.show,ppx_deriving.ord -html -keep-code -d doc -charset utf-8  -css-style style.css -nolabels -I src/ $(DOCS)

include OCamlMakefile

