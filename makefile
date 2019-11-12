# Variables
TEX := xelatex
SOURCES := src/%.tex
OUTPUT := pdf/%.pdf

# Make jobs
$(OUTPUT) : $(SOURCES)
	$(TEX) $(input) $(output)

	
