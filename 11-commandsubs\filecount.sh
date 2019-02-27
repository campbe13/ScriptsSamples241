#!/bin/bash
# pmcampbell
#2018-02-26
# get a count of files that match a string

if [[ $# -ne 1 ]] ; then
        echo $0 arg
        echo I need 1 arg to match files
        exit 3
fi

# use grep count option
filecount=$(ls |grep -c $1)
echo $filecount files contain the string $1

# use  word count
filecount2=$(ls |grep $1 | wc -l)
echo $filecount2 files contain the string $1

echo here they are
ls *$1*   -d
