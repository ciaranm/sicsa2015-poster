all : tables graphs
	latexmk -pdf -pdflatex='pdflatex -interaction=nonstopmode %O %S' poster

TABLES =

GRAPHS = gen-graph-speedup.tex gen-graph-really-hard.tex

tables : $(TABLES)

graphs : $(GRAPHS)

gen-graph-%.tex : graph-%.gnuplot
	gnuplot $<
	sed -i -e '4,5s/^\(\\path.*\)/\% \1/' $@ # epic haxx

