#!/bin/bash
# PMCampbell
# February 14, 2016
# 
# sample script use 1st command line arguments

#  see if userid exists in environment
set | grep $1 

# see if group exists
grep $1 /etc/group

# see if files exist of that name
find ./ -name $1 2>/dev/null



