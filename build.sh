#!/bin/bash

mkdir build -p
pdflatex -output-directory build main.tex
TEXMFOUTPUT="build:" bibtex build/main
pdflatex -output-directory build main.tex
pdflatex -output-directory build main.tex
evince ./build/main.pdf &
