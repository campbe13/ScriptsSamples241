#!/bin/bash
# PMC
# 2016-02-23
# intro to for loops in bash

sn=$(basename $0)
count=0
for animal in dog cat horse "sea horse" cow
 do
 echo $animal
 ((count++))
 done
echo $sn: $count animals at the zoo??
echo $sn: at end $animal
