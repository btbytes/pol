html:
	pandoc POL.txt -f markdown -t html --toc  --html5 --smart --chapters --number-sections --standalone -o POL.html
    # --template=templates/template.html 
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
