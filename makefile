# Variables
TEX := xelatex
SRC_FILES := $(wildcard src/*.tex)
DOCUMENT := $(patsubst src/%.tex, %.pdf, $(SRC_FILES))

# Make jobs
all : $(DOCUMENT) relocate clean

%.pdf : src/%.tex
	$(TEX) $<	

relocate : 
	mv *.pdf pdf/

clean:
	rm -f *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof
