#!/bin/bash
# PMC
# 2016-02-23
# intro to for loops in bash
# add numbers in a list

sn=$(basename $0)
sum=0
for num in {1..5}
 do
 echo $num
 #let sum=sum+num 
 # bash arithmetic, no $ on vars
 # and I need (( and ))
 (( sum=sum+num ))
 done
echo $sn: sum of numbers: $sum
