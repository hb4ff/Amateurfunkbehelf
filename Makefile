
Amateurfunkbehelf.pdf : *.tex
	pdflatex -interaction nonstopmode Amateurfunkbehelf.tex
	pdflatex -interaction nonstopmode Amateurfunkbehelf.tex

Amateurfunkbehelf-Draft.pdf :
	pdflatex -interaction nonstopmode Amateurfunkbehelf-Draft.tex
	pdflatex -interaction nonstopmode Amateurfunkbehelf-Draft.tex

clean :
	rm -f *.pdf *.log *.out *.aux *.toc *~ *.backup
