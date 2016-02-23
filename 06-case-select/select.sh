#!/bin/bash
# 241 sect 2
# 24-feb-2015
# try out select

PS3="Select your favourite "
#echo "Select your fave programming language "
select lang in java c# c c++ cobol fortran basic php python javascript swift objective-c quit
  do
   # if they enter quit, end the loop
   if [[ "$lang" == "quit" ]] ; then 
           break
   fi
   # if they enter basic change prompt
   if [[ "$lang" == "basic" ]] ; then 
       PS3="Do you even code?  "
   fi
   # if they enter cobol or fortran be rude
   if [[ "$lang" == "cobol" ]] ||  [[ "$lang" == "fortran" ]] ; then 
       echo "Are you over 100 years old?? "
   fi

   echo "your fav language is $lang"
  done
