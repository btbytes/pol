html:
	pandoc pol.mkd -f markdown -t html --toc --standalone -o polnew.html

pdf:
	pandoc pol.mkd -f markdown -t latex --toc --chapters --number-sections --standalone -o polnew.tex
	pdflatex polnew.tex

all: html

clean:
	rm *.tex
	rm *.html
	rm *.log
	rm *.aux 
	rm *.out
	rm *.toc
	rm *~

.PHONY: clean
