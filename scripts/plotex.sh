#!/bin/bash
CASE=`basename $1 .gp`
gnuplot $1
epstopdf $CASE-inc.eps
pdflatex $CASE.tex
rm $CASE-inc.eps
rm $CASE-inc.pdf
rm $CASE.aux
rm $CASE.log
rm $CASE.tex
clear