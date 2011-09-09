html:
	pandoc POL.txt -f markdown -t html --toc  --template=templates/template.html --html5 --smart --chapters --number-sections --standalone -o POL.html

pdf:
	pandoc POL.txt -f markdown -t latex --toc --template=templates/template.tex  --chapters --number-sections --standalone -o POL.tex
	pdflatex POL.tex

all: html pdf

clean:
	rm *.tex
	rm *.html
	rm *.log
	rm *.aux 
	rm *.out
	rm *.toc
	rm *~

.PHONY: clean
