TEX = main
PDF = $(TEX).pdf

.PHONY: all clean

all: $(PDF)

$(PDF): $(TEX).tex
	latexmk -pdf $(TEX).tex

clean:
	latexmk -C
	rm -f *.bbl *.blg *.log *.aux *.out *.fdb_latexmk *.fls *.synctex.gz
