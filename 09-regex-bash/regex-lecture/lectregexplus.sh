#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="We are going to go fishinnnnnnng!"
echo string:  $str

if [[ "$str" =~ in+d  ]] ; then
  echo $str match 'in+d' 
else
  echo $str no match 'in+d'
fi

echo string:  $str

if [[ "$str" =~ in+  ]] ; then
  echo $str match 'in+' 
else
  echo $str no match 'in+'
fi


str="a pig danced a jig on a twig"
echo string:  $str

if [[ "$str" =~ in+g  ]] ; then
  echo $str match 'in+g' 
else
  echo $str no match 'in+g'
fi
echo string $str

if [[ "$str" =~ in+g  ]] ; then
  echo $str match 'in+' 
else
  echo $str no match 'in+'
fi


