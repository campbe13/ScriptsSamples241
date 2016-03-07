#!/bin/bash
#pmc
#2013-03-28
# regex2.sh
# beginning regex in bash
# begin and end with strings

read -p "gimme a string " str
if [[ $str =~ ^a ]] ; then
  echo $str begins with a 
else
  echo $str does not begin with 
fi
if [[ $str =~ a$ ]] ; then
  echo $str ends with a 
else
  echo $str does not end with a 
fi
# make it case insensitive Character classes [] are like bash file name
# globbing they apply to one character
if [[ $str =~ ^[aA] ]] ; then
  echo $str begins with a or A
else
  echo $str does not begin with a or A
fi
if [[ $str =~ [aA]$ ]] ; then
  echo $str ends with a or A
else
  echo $str does not end with a or A
fi
if [[ $str =~ ^a ]] ; then
  echo $str begins with a 
else
  echo $str does not begin with 
fi
if [[ $str =~ a$ ]] ; then
  echo $str ends with a 
else
  echo $str does not end with a 
fi


