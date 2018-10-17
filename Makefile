USE_OCAMLFIND=true
PACKS = ppx_deriving.show
CC = gcc
CFLAGS = -g -O2 -Wall

LIBINSTALL_FILES=build
SOURCES = src/util.c src/type.ml src/syntax.ml src/lexer.mll src/parser.mly src/typing.ml src/knormal.ml src/alpha.ml src/closure.ml src/virtual.ml src/regalloc.ml src/asm.ml src/main.ml 
RESULT = compile


all: byte-code byte-code-library 

clean:: nobackup


include OCamlMakefile
