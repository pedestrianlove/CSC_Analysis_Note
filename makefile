# Variables
TEX := xelatex
SRC_FILES := $(wildcard src/*.tex)

# Make jobs
src : $(SRC_FILES)

pdf/%.pdf : src/%.tex
	$(TEX) $(input) $(output)	

clean:
	rm -f *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof
