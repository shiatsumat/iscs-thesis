# Author: Yusuke Matsushita (2023/02/09)

.PHONY: all

all: iscs-thesis.cls iscs-thesis.pdf

iscs-thesis.cls: iscs-thesis.dtx iscs-thesis.ins
	uplatex iscs-thesis.ins

iscs-thesis.pdf: iscs-thesis.dvi
	dvipdfmx iscs-thesis.dvi

iscs-thesis.dvi: iscs-thesis.dtx
	uplatex iscs-thesis.dtx
