#!/bin/bash
#PMC
#2013-02-19
# show  if with file type operators

var=/etc
# file type operator, check for  directory
echo $var
# test is equiv to [ ] 
if test  -d $var 
then
   echo \$var is dir
else
   echo \$var is not dir
fi
echo ~/.bashrc test if file
if [ -f ~/.xxxxxxxbashrc  ]
then
   echo \$var is file
else
   echo \$var is not file
fi
