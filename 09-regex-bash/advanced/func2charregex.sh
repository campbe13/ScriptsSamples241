#!/bin/bash
# PMC
# March (2012-2013-2014-2015-2016)
# using  functions and regex
#
funcword ()
{
if [[ "$1" =~ "\<[a-z]{2}\>" ]]
then
   echo " two lower case letters"
   return 0
else
    echo " not 2 lower case letters"
   return 1
fi
}
func ()
{
if [[ "$1" =~ "^[a-z]{2}$" ]]
then
   echo " two lower case letters"
   return 0
else
    echo " not 2 lower case letters"
   return 1
fi
}
for i in uu AA 9a a9 99 aa99 99aa 99aa99
do
  func $i
  echo '$i ' $i '$? ' $?
done
for i in uu AA 9a a9 99 aa99 99aa 99aa99
do
  funcword $i
  echo '$i ' $i '$? ' $?
done
