#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="lets go fishinnng again"
echo string:  $str

if [[ "$str" =~ i.g  ]] ; then
  echo $str match 'i.g' 
else
  echo $str no match 'i.g'
fi

str="lets go fishinnnnnnnnng again"
echo string:  $str

if [[ "$str" =~ i.g  ]] ; then
  echo $str match 'i.g' 
else
  echo $str no match 'i.g'
fi

echo "escape the dot \. means match the dot, not use it as a regex"
str="lets go fishing again"
echo string:  $str

if [[ "$str" =~ in\.g  ]] ; then
  echo $str match 'i\.g' 
else
  echo $str no match 'i\.g'
fi

str="lets go fishing again.g"
echo string:  $str

if [[ "$str" =~ in\.g  ]] ; then
  echo $str match 'i\.g' 
else
  echo $str no match 'i\.g'
fi

