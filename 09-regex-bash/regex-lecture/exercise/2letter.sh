#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
# match on > 2 also
#if [[ "$str" =~ [[:alpha:]]{2}   ]] ; then
#if [[ "$str" =~ [[:alpha:]][[:alpha:]]   ]] ; then
read -p "string " str
if [[ "$str" =~ ^[[:alpha:]]{2}$   ]] ; then
  echo $str 2 alpha only
else
  echo $str   not 2 alpha only
fi
if [[ "$str" =~ ^[[:alpha:]][[:alpha:]]$   ]] ; then
  echo $str 2 alpha only
else
  echo $str   not 2 alpha only
fi
