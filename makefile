all: rules.pdf

rules.pdf: rules.tex template.cls
	pdflatex rules.tex
	rm rules.pdf
	pdflatex rules.tex
	cp rules.pdf docs/

clean :
	rm -f *.aux *.log *.pdf *.toc *.out

.PHONY: all clean
