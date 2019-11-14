# Variables
TEX := xelatex
SRC_FILES := $(wildcard src/*.tex)
DOCUMENT := $(patsubst src/%.tex, pdf/%.pdf, $(SRC_FILES))

# Make jobs
all: $(DOCUMENT) clean
pdf/%.pdf : src/%.tex
	$(TEX) $<	

clean:
	rm -f *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof
