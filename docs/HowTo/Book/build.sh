#!/bin/sh
pdflatex main
makeindex main
biber main
pdflatex main
