
Amateurfunkbehelf.pdf : *.tex
	pdflatex -interaction nonstopmode Amateurfunkbehelf.tex
	pdflatex -interaction nonstopmode Amateurfunkbehelf.tex

Amateurfunkbehelf-A4.pdf : Amateurfunkbehelf.pdf
	pdfjam --nup 2x1 --landscape Amateurfunkbehelf.pdf '{},1-' --a4paper --outfile Amateurfunkbehelf-A4.pdf

Both : Amateurfunkbehelf-A4.pdf
	@echo "Building A5 and A4 PDFs"

Amateurfunkbehelf-Draft.pdf :
	pdflatex -interaction nonstopmode Amateurfunkbehelf-Draft.tex
	pdflatex -interaction nonstopmode Amateurfunkbehelf-Draft.tex

clean :
	rm -f *.pdf *.log *.out *.aux *.toc *~ *.backup
