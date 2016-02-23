#!/bin/bash
# pmc
# 2013-03-28
# section 1 Thursday
# variables global (and local)

function func1() 
{
echo "$FUNCNAME (before) \$name $name"
local name="tricia"
bananas="Maja"
echo $FUNCNAME \$name $name
echo $FUNCNAME \$bananas $bananas
}
echo $0 \$name $name
echo $0 \$bananas $bananas
name="Fozzie"
func1
echo $0 \$name $name
echo $0 \$bananas $bananas
