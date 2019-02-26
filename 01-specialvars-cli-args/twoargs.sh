#!/bin/bash
# pmcampbell
# 2018-02-24
# must have 2 cli args

shname=$(basename $0)
if [[ $# -ne 2 ]] ; then
   echo Usage:   $shname arg1 arg2
   echo need 2 command line arguments
   exit 3
fi

# if I get to this point i have 2 cli args
