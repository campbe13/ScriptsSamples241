#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
echo  does not contain a or A 
echo  how do I do that, I can see if it contains a or A
echo 

str="lets go fishinnng again"
str2="lets not go fishinnng "
echo 'match on a =~ (A|a)'
echo $str
if [[ "$str" =~ (A|a)  ]] ; then
  echo $str match A or a
else
  echo $str no match A or a
fi
echo $str2
if [[ "$str2" =~ (A|a)  ]] ; then
  echo $str2 match A or a
else
  echo $str2 no match A or a
fi
echo string:  $str

echo 'match on ! a =~ (A|a)'
echo $str
if [[ ! "$str" =~ (A|a)  ]] ; then
  echo $str NO A or a
else
  echo $str match A or a
fi
echo $str2
if [[ ! "$str2" =~ (A|a)  ]] ; then
  echo $str2 NO A or a
else
  echo $str2 match A or a
fi
