#!/bin/bash
# pmcampbell
#2018-02-26
# get file size in bytes

if [[ $# -ne 1 ]] ; then
	echo $0 arg
	echo I need 1 arg to match files
	exit 3
fi

if [[ ! -f $1 ]] ; then
	echo $0 arg
	echo $1 is not a file
	exit 4
fi
   
# use du byte option
filesize=$(du -b | cut -f 1) 
echo $1 file is size $filesize
echo ls to verify:
ls -lh $1
