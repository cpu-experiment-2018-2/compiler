USE_OCAMLFIND=true
PACKS = ppx_deriving.show ppx_deriving.ord
CC = gcc
CFLAGS = -g -O2 -Wall

LIBINSTALL_FILES=build
SOURCES =   miniMLRuntime.ml globals.ml min-rt.ml

RESULT = minrt 
OCAMLDOCFLAGS=-charset utf-8


all: byte-code byte-code-library 

clean:: nobackup

include OCamlMakefile

