#!/bin/bash
# PMC
# 2012-2013-2014
# script to run sed using a scriptfile
# runs against the file lines which must exist
# uses -r for refex
if [ ! -f lines ] ; then  echo "missing lines file" ; exit 1 ;fi
if [ $# -ne 1 ] ; then  echo "error need cli arg \nUsage: $0 scriptfile" ; exit 5 ;fi
echo $(basename $0):  hit enter to apply:
cat $1 
read -p "hit enter to continue " notused
sed -rf $1 lines
