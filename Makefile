# Author: Yusuke Matsushita (Aug. 14, 2023)

.PHONY: all

all: iscs-thesis-r.cls iscs-thesis-r.pdf sample-senior.pdf sample-masters.pdf

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

sample-masters.pdf: sample-masters.dvi
	dvipdfmx sample-masters.dvi

sample-masters.dvi: sample-masters.tex sample-masters.bbl
	uplatex sample-masters.tex
	uplatex sample-masters.tex

sample-masters.bbl: sample-masters.aux
	upbibtex sample-masters.aux

sample-masters.aux: sample-masters.tex
	uplatex sample-masters.tex
