#!/bin/bash
# PMC
# 2016-02-12
# 
# I need one command line argument so if I dont get it
# then I read one in and use that

if [[ $# -gt 0 ]]   
then
   # use the 1st command line arg
   arg=$1
else
   read -p "enter an argument: " arg
fi

echo We now can use our read in OR command line \$arg $arg