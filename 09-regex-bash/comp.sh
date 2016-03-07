#!/bin/bash
# PMC
# March 2013-2014-2015-2016
# do this on board first
# then in script

if [ 8 \< 23 ] ; then
 echo "8 < 23"
else
 echo 8 not less than 23 ????
fi
if [[ 8 < 23 ]] ; then
 echo "8 < 23"
else
 echo 8 not less than 23 ????
fi

echo 'why ???  -> string comparison is done char by char'
echo 'ascii/unicode  encoding of 8 versus 2: (8 = 56, 2 = 50)'
echo ' so we use regex to make sure that we have numbers '
echo  'then we use arithmetic comparisons'