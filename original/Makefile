# Author: Yusuke Matsushita (Feb 11, 2023)

.PHONY: all

all: iscs-thesis.cls iscs-thesis.pdf thesis.pdf

iscs-thesis.cls: iscs-thesis.dtx iscs-thesis.ins
	platex iscs-thesis.ins

iscs-thesis.pdf: iscs-thesis.dvi
	dvipdfmx iscs-thesis.dvi

iscs-thesis.dvi: iscs-thesis.dtx
	platex iscs-thesis.dtx

thesis.pdf: thesis.dvi
	dvipdfmx thesis.dvi

thesis.dvi: thesis.tex thesis.bbl
	platex thesis.tex
	platex thesis.tex

thesis.bbl: thesis.aux
	pbibtex thesis.aux

thesis.aux: thesis.tex
	platex thesis.tex
