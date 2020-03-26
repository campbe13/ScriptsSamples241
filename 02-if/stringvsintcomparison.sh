#!/bin/bash
# pmcampbell
# 2020-03-26
# script to demonstrate the difference

# between string and integer operators in bash
# the problem comparing numbers!

echo " integer compare "
echo ' [[ 2 -lt 10 ]] ; echo $? # true '
[[ 2 -lt 10 ]] ; echo $? # true 

echo " string compare "
echo ' [[ 2 < 10 ]] ; echo $? # false !!!! '
[[ 2 < 10 ]] ; echo $? #  why is this false !!! 

echo comparing numbers

if [[ 2 -lt 12 ]] ; then 
   echo ' 2 -lt 12 is true '
else 
    echo ' 2 -lt 12 is false '
fi
 
if [[ 2 <  12 ]] ; then 
   echo ' 2 < 12 is true '
else 
    echo ' 2 <  12 is false '
fi
