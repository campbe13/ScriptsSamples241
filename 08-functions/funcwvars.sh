#!/bin/bash
#pmc
# march 10, 2014
# functions and variable scope
sn=$(basename $0)

func1 () {
 gvar=10
 local lvar=5
 local lvar2=test
 echo $FUNCNAME: \$gvar2 $gvar2
 echo $FUNCNAME: \$lvar $lvar
 echo $FUNCNAME: \$lvar2 $lvar2
 gvar2=tuv
} # func1()
lvar2=squid
gvar2=xyz
echo $sn: \$gvar2 $gvar2
echo $sn: \$gvar $gvar
echo $sn: \$lvar $lvar
echo $sn: \$lvar2 $lvar2
func1
echo $sn: \$gvar2 $gvar2
echo $sn: \$gvar $gvar
echo $sn: \$lvar $lvar
echo $sn: \$lvar2 $lvar2

