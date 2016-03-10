#!/bin/bash
#PMC
#2016-03-10
# show compound if
var=999
echo "enter a number between 1 & 10"
while [[ $var -lt 1 ]] ||  [[ $var  -gt 10 ]] 
do
   read var
done
