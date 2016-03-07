#!/bin/bash
#pmc
#2013-03-28
# regex1.sh
# beginning regex in bash
# if [[ arg =~ pattern ]] 
# simple string pattern 1 or more characters 
read -p "gimme a string " str

if [[ $str =~ an ]] ; then
  echo $str contains an an
else
  echo $str has no an
fi
