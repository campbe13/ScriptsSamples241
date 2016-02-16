#!/bin/bash
# PMCampbell
# February 14, 2013
# 
# sample script use command line arguments 

#  see if userid exists
grep $1 /etc/passwd

# see if group exists
grep $1 /etc/group

# see if files exist
find / -name $1 2>/dev/null
