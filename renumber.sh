#!/bin/bash
# bash script to rename files into numbers based on version sort
# takes 3 args
#   1st arg is file extension
#   2nd arg is starting number
#   3rd arg is digits of file number
# for example: ./renumber.sh mkv 1 3
#   will rename files to 001.mkv, 002.mkv, 003.mkv, etc

find . -type f -name "*.$1" | sort -V | # find files with certain extension
awk -v ext=$1 -v a=$2 -v b=$3 'BEGIN { } { printf "mv \"%s\" %0%1d.%2\n", $0, a++ , $1, b, $2, ext }' | # build mv command
bash # run that command