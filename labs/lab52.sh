#!/bin/bash
# pmc
# 2016-02-22
# script from lab, #2 compare
# cli args using string and integer
# 
if [[ $# -ne 2 ]] ; then 
   echo $(basename $0) needs 2 command line arguments
   exit 1 
fi
echo 'string comparison $1 == $2'
if [[ $1 == $2 ]] ; then
    echo vars are equal
else 
    echo vars are not equal
fi
echo 'integer comparison $1 -eq $2'
if [[ $1 -eq $2 ]] ; then
    echo vars are equal
else 
    echo vars are not equal
fi
