
build:
	mkdir $@

render: build
	pdflatex Main.tex && \
		mv Main.pdf build/Analysis.pdf && \
	  $(CLEAN)

clean:
	$(CLEAN)

CLEAN = find . -type f \( -name "*.aux" -o -name "*.log" \) -exec rm {} \;
