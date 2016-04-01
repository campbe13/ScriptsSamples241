#!/bin/bash
# pmc
# March 2016
# use anchors with regex in bash scripting
func ()
{
if [[ $1 =~ ^[a-z]{2,3}$ ]]
then
   #echo " 2-3 lower case letters"
   return 0
else
   #echo " not 2-3 lower case letters"
   return 1
fi
}
for i in uu AA 9a a9 99 aa99 99aa  99aa99 9aaaAt ttt
do
  if func $i ; then
     echo '$i' $i matches ' ^[a-z]{2,3}$ ' 
  else  
     echo '$i' $i no match
  fi
done

