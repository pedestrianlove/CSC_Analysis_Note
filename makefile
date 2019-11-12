# Variables
TEX := xelatex
SOUR@sCES := src/%.tex
OUTPUTS := pdf/%.pdf

# Make jobs
all:

$(OUTPUTS) : $(SOURCES)
	$(TEX) $(input) $(output)	
