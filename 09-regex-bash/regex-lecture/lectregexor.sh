#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="the year is 2019"
echo string:  $str

if [[ "$str" =~ (2013|2018)  ]] ; then
  echo $str match '(2013|2018)' 
else
  echo $str no match '(2013|2018)'
fi

str="the year is 2018"
echo string:  $str

if [[ "$str" =~ (2013|2018)  ]] ; then
  echo $str match '(2013|2018)' 
else
  echo $str no match '(2013|2018)'
fi
