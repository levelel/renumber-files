# Renumber-files

## What is it
A bash file that is used to rename files in the current folder to sequential numbers. The files are named after Version sort.

This is useful when organizing files. For example, renameing a bunch of randomly named image files, or renaming video episodes like 98.mkv 99.mkv 100.mkv 101.mkv to 098.mkv 099.mkv 100.mkv 101.mkv, etc. 

## Requirements
* Mac or Linux
* sort command with option -V

## How to use
* Copy the `renumber.sh` file into folder
* `chmod +x renumber.sh`
* `./renumber.sh mkv 1 4`
    *  Note: in the last command, `mkv` is the file extension of the files that you want to renumber
    * number `1` is the starting number of the file names. For example, if it is changed to 2, then the file names would start from 2, eg. 0002.mkv, 0003.mkv. etc, (skipping 0001.mkv).  
    * number `4` is the total digits of the file names. If it is set to 4, then the file names would be 0001.mkv, 0002.mkv, etc.
    
## Caution
There is no backup of the files thus "undo" is not possible.
