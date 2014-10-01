html:
	sed "s/@@date/`date +%Y-%m-%d`/" pdflink.html > pdflink.tmp
	pandoc POL.txt -f markdown -t html5 --toc  \
		--template=templates/template.html\
		--smart --chapters --number-sections --standalone \
		--include-in-header=pol.css --include-before-body=pdflink.tmp \
		--variable=homeurl:"http://colorforth.com" -o POL.htm

pdf:
	pandoc POL.txt -f markdown -t latex --toc --template=templates/template.tex  --chapters --number-sections --standalone -o POL.tex
	pdflatex POL.tex

all: html pdf

clean:
	rm *.tex
	rm POL.htm
	rm *.tmp
	rm *.log
	rm *.aux
	rm *.out
	rm *.toc
	rm *~

.PHONY: clean
