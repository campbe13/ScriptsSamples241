#!/bin/bash
# pmcampbell
# 2019-03-11
# script to use a function to check for a file

countfiles() 
{
 echo \$# $#
 echo \$@ $@
 echo \$1 $1
 echo $FUNCNAME
 for fn in $* ; do
   ((count++))
   if [[ -f $fn ]] ; then
       echo $fn is a file
       ((countf++))
   fi
 done
 echo $count total args
 echo $countf total files 
}


countfiles $*
