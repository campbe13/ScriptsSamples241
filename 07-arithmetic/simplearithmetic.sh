#!/bin/bash
#pmc
#2019-02-27
# using (())  &  $(())

num=15
echo \$num starts at $num
# no assignment
((num+15))
echo just doing arith  \$num should be unchanged
echo \$num $num 

((num += 10))
echo += is an assignment operator \$num should change
echo \$num $num 

((num--))
echo -- is an assignment operator \$num should change
echo \$num $num 

((num++))
echo ++ is an assignment operator \$num should change
echo \$num $num 

num2=$((num+25))
echo \$num will be unchanged, but we do arithmetic and assign it to \$num2 
echo \$num $num 
echo \$num2 $num2 

echo using math in an echo
echo $num plus 3 is $((num + 3))
echo just doing arith  \$num should be unchanged
echo \$num $num 
