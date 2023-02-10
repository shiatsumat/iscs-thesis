# Author: Yusuke Matsushita (Feb 11, 2023)

.PHONY: all

all: iscs-thesis-r.cls iscs-thesis-r.pdf sample-senior.pdf sample-master.pdf

iscs-thesis-r.cls: iscs-thesis-r.dtx iscs-thesis-r.ins
	uplatex iscs-thesis-r.ins

iscs-thesis-r.pdf: iscs-thesis-r.dvi
	dvipdfmx iscs-thesis-r.dvi

iscs-thesis-r.dvi: iscs-thesis-r.dtx
	uplatex iscs-thesis-r.dtx

sample-senior.pdf: sample-senior.dvi
	dvipdfmx sample-senior.dvi

sample-senior.dvi: sample-senior.tex sample-senior.bbl
	uplatex sample-senior.tex
	uplatex sample-senior.tex

sample-senior.bbl: sample-senior.aux
	upbibtex sample-senior.aux

sample-senior.aux: sample-senior.tex
	uplatex sample-senior.tex

sample-master.pdf: sample-master.dvi
	dvipdfmx sample-master.dvi

sample-master.dvi: sample-master.tex sample-master.bbl
	uplatex sample-master.tex
	uplatex sample-master.tex

sample-master.bbl: sample-master.aux
	upbibtex sample-master.aux

sample-master.aux: sample-master.tex
	uplatex sample-master.tex
