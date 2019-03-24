#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="the year is 2019"
echo string:  $str

if [[ "$str" =~ 201[^0-7]  ]] ; then
  echo $str match '201[^0-7]' 
else
  echo $str no match '201[^0-7]'
fi

str="the year is 2017"
echo string:  $str

if [[ "$str" =~ 201[^0-7]  ]] ; then
  echo $str match '201[^0-7]' 
else
  echo $str no match '201[^0-7]'
fi

str="the year is 2013"
echo string:  $str

if [[ "$str" =~ 201[^0-7]  ]] ; then
  echo $str match '201[^0-7]' 
else
  echo $str no match '201[^0-7]'
fi
