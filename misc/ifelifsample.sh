#!/bin/bash
# ifelifsample.sh
# A simple script that turns a score into a grade

name=$(basename $0) 

if test $# -ne 1; then
echo "Usage: $name score"
exit 1

elif [ $1 -lt 0 ]; then
echo "The score must be in the range 0-100"
exit 2

elif [ $1 -gt 100 ]; then
echo "The score must be in the range 0-100"
exit 3
fi

score=$1

if [ $score -ge  60 ]; then
grade='pass'
else 
grade='fail'
fi

echo "The grade is $grade"
