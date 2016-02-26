#!/bin/bash
# p campbell
# 2015-02-26
# func given list input, summ odd and even numbers separately
sum()
  {
   if [[ $# -le 0 ]] ; then
       return 1
   fi
   for num in $@
     do
     if [[ $(($num % 2)) -eq 0 ]] ; then
         ((evensum += $num))
     else 
         ((oddsum += $num))
     fi
     done
   return 0
  }

sum 5 4 8 7 9
if [[ $? -eq 0 ]] ; then
    echo $sname list  5 4 8 7 9
    echo $sname sum of even numbers $evensum
    echo $sname sum of odd numbers $oddsum
else
    echo $sname I need input
fi
evensum=0
oddsum=0
sum $@
if [[ $? -eq 0 ]] ; then
    echo $sname list $@
    echo $sname sum of even numbers $evensum
    echo $sname sum of odd numbers $oddsum
else
    echo $sname I need input
fi
     
