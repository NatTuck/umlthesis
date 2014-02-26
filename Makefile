
thesis.pdf: main.pdf
	mv main.pdf thesis.pdf

LATEX=lualatex --interaction=nonstopmode

main.pdf: $(wildcard *.tex)
	$(LATEX) main
	bibtex main
	$(LATEX) lualatex main
	$(LATEX)

clean:
	rm -rf *.pdf *.aux
