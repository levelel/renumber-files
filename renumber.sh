#!/bin/bash
# bash script to rename files into numbers based on version sort
# takes 2 args
#   1st arg is file extension
#   2nd arg is starting number
#   3rd arg is total digits of the number
# for example: ./renumber.sh mkv 1 4
#   will rename files to 0001.mkv, 0002.mkv, 0003.mkv, etc
find . -type f -name "*.$1" | sort -V | # find files with certain extension
tee >(awk -v ext=$1 -v start=$2 '{ printf "mv \"%s\" %0'${3}'d.%s\n", $0, start++, ext }' | bash) \
    >(awk -v ext=$1 -v start=$2 '{ printf "echo converted \"%s\" to %0'${3}'d.%s\n", substr($0, 3), start++, ext }' | bash) \
    >/dev/null
