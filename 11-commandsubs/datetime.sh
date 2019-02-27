#!/bin/bash
# pmcampbell
#2018-02-26
# make a directory using current date and time

if [[ $# -ne 1 ]] ; then
	echo $0 arg
	echo I need 1 arg to match files
	exit 3
fi

   
# use date %F to get yyyy-mm-dd
date=$(date +%F)
time=$(date +%H-%M)

dirname=$1-$date-$time
if [[ -e $dirname ]] ; then
	echo $dirname already exists
	exit 4
fi

mkdir $dirname

echo ls to verify:
ls "$1*" -d
