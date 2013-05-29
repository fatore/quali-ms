all: clean
	pdflatex -halt-on-error src/document.tex > log.txt
	bibtex document.aux > log.txt
	pdflatex -halt-on-error src/document.tex > log.txt 
	rm *.bbl *.out *.blg *.log *.lof *.toc *.run.xml *blx.bib -f

sumatra: all
	sumatrapdf.exe -invert-colors document.pdf &

okular: all
	okular document.pdf &

clean:
	rm *~ .*.swp src/.*.swp src/*~ *.bbl *.out *.blg *.log *.lof *.toc *.aux src/*.aux log.txt *.run.xml *blx.bib -f
