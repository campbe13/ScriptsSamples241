#!/bin/bash
# pmc
# 2013-04-02
# using blank delimited words in regex in bash
pat=" lines "
if [[ "this string contains lines " =~ $pat ]] ; then
   echo match
else
   echo no match
fi
pat="[[:blank:]]lines[[:blank:]]"
if [[ "this string contains lines " =~ $pat ]] ; then
   echo match
else
   echo no match
fi
if [[ "this string containslines " =~ $pat ]] ; then
   echo match
else
   echo no match
fi
