#!/bin/bash
# PMC
# 2016-02-12
# 
# using if and check for command line args

if [[ $# -ge 0 ]]   
then
   echo We have $# command line args
else
   echo We have 0 command line args
   
fi