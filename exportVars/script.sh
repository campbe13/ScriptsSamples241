#!/bin/bash
#PMC
#2013-Feb
# script.sh
# scripts to illustrate exporting variables

var1="this is var1"
var2="this is var2"
export var2

echo $0  \$var1 $var1
echo $0  \$var2 $var2
./script2.sh