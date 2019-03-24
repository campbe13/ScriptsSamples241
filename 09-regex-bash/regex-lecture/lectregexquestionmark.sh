#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="lets eat fish and chips"
echo string:  $str

if [[ "$str" =~ in?s  ]] ; then
  echo $str match 'in?s' 
else
  echo $str no match 'in?s'
fi

echo string:  $str

if [[ "$str" =~ sn?h  ]] ; then
  echo $str match 'sn?h' 
else
  echo $str no match 'sn?h'
fi

str2="lets eat fisnh and chips"
echo string:  $str2

if [[ "$str2" =~ sn?h  ]] ; then
  echo $str2 match 'sn?h' 
else
  echo $str2 no match 'sn?h'
fi

str="lets eat fisnnnh and chips"
echo string:  $str

if [[ "$str" =~ sn?h  ]] ; then
  echo $str match 'sn?h' 
else
  echo $str no match 'sn?h'
fi
