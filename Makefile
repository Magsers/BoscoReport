MAIN = Bosco

default:
	pdflatex --shell-escape $(MAIN)

	pdflatex --shell-escape $(MAIN)

b build: $(MAIN).pdf

	pdflatex --shell-escape $(MAIN)

$(MAIN).pdf: $(MAIN).tex
	pdflatex --shell-escape $(MAIN)

clean:
	rm -f $(MAIN).aux $(MAIN).bbl $(MAIN).bcf $(MAIN).blg \
	$(MAIN).lof $(MAIN).toc $(MAIN).log $(MAIN).lot \
	$(MAIN).out $(MAIN).run.out $(MAIN).run.xml

cleanall: clean
	rm -f $(MAIN).pdf