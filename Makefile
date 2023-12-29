
render:
	[ ! -d build ] && mkdir build
	pdflatex Main.tex && \
		mv Main.pdf build/Analysis.pdf && \
		rm -f *.aux *.log

clean:
	find . -type f \( -name "*.aux" -o -name "*.log" \) -exec rm {} \;

clobber: clean
	rm -rf build
