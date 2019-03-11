#!/bin/bash
# pmcampbell
# 2019-03-11
# script to test functions

sample() 
{
 echo \$# $#
 echo \$@ $@
 echo \$1 $1
 echo $FUNCNAME
}

echo no args
sample
echo 1 arg
sample  one
echo 2 args
sample one two
