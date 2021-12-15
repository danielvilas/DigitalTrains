#!/bin/sh
#rm main.aux  main.bcf  main.blg  main.dvi  main.idx  main.ilg  main.ind  main.log  main.out.ps  main.pdf  main.ptc  main.run.xml  main.toc

pdflatex main
makeindex main
biber main
pdflatex main
