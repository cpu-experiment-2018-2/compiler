USE_OCAMLFIND=true
PACKS = ppx_deriving.show ppx_deriving.ord
CC = gcc
CFLAGS = -g -O2 -Wall

LIBINSTALL_FILES=build
DOCS = src/common.ml src/type.ml src/syntax.ml src/lexer.ml src/parser.ml src/typing.ml src/knormal.ml src/alpha.ml src/anormal.ml src/constantFold.ml src/inline.ml src/cseElimination.ml src/beta.ml src/removeLet.ml src/closure.ml src/lambdaLifiting.ml src/virtual.ml src/regalloc.ml src/asm.ml 

SOURCES = src/common.ml src/util.c src/type.ml src/syntax.ml src/lexer.mll src/parser.mly src/typing.ml src/knormal.ml src/alpha.ml src/anormal.ml src/constantFold.ml src/inline.ml src/cseElimination.ml src/beta.ml src/removeLet.ml src/closure.ml src/lambdaLifiting.ml src/virtual.ml src/regalloc.ml src/asm.ml src/main.ml 
RESULT = compile
OCAMLDOCFLAGS=-charset utf-8


all: byte-code byte-code-library 

clean:: nobackup

compiler-doc: all
	 ocamlfind ocamldoc -package ppx_deriving.show,ppx_deriving.ord -html -keep-code -d doc -charset utf-8  -css-style style.css -nolabels -I src/ $(DOCS)

include OCamlMakefile

