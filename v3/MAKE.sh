#!/usr/bin/env bash

basename=${1##*/}
basename=${basename%.*}

python parse.py --input ../texts/$1.txt --output ./$1-data.angles
gnuplot gnu.plot
mv plot.pdf ${basename}.pdf
