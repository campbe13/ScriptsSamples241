#!/bin/bash
# untilsample.sh
# A script using until-loop

name=$(basename $0)
Usage="Usage:$name  1 2 3 4 ...]"
if [ $# -eq 0 ] ; then echo $Usage; exit 0; fi
until [ $# -eq 0 ] ; do
     echo "arg \$1 is $1"
     shift;
done
