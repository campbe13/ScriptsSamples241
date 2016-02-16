#!/bin/bash
#PMC
#2013-02-19
# show vars

var3="more data"
echo $PATH \$PATH

set -x

echo $var2 not exported \$var2
echo $var1 not exported \$var1
echo $var3 not exported \$var3

set +x 

echo $varname3 \(\$varname3 was exported\)
