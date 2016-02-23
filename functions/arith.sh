#!/bin/bash
#pmc
#2013-03-26
#different arithmetic operators

read -p "give me two numbers svp " n1 n2
# YOU  should verify that my args are not null at this point
# I cannot check $# here because it applys only to command line/function args 
if [ -z $n1 -o -z $n2 ]  ; then
   echo I need numbers dude!
   exit
fi

count=0
# (()) for arithmetic
x=$(( $n1 + $n2 ))
echo ' x=$(( $n1 + $n2 )) $x: '  $x
echo " x=\$(( \$n1 + \$n2 )) \$x:  $x" 
y=$(($n1+$n2)) # spaces dont matter to (())
echo ' y=$(($n1+$n2)) ' $y   spaces dont matter to ' (()) '
((count++))

z=$(( n1 + n2   ))
echo ' z=$((n1 + n2 )) $z: '  $z

# let for arithmetic 
let r=$n1+$n2
echo ' let r=$n1+$n2  ' $r

let s=n1+n2
#n.b. if i use echo ' blahblah'  (no space at end) 
# bash does not see the single quote as end of string
#  weird !!!
echo ' let s=n1+n2 ' $s
let count=count+1
# exit # redundant to put exit @ end of script
# using [] for arithmetic
t=$[ $n1 + $n2 ]
echo 't=$[ $n1 + $n2 ] ' $t
r=$[ n1 + n2 ]
echo 'r=$[ n1 + n2 ] ' $r
count=$[ count + 1 ]

echo count = $count


