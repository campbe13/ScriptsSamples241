
# 2016-02-19
# check for cli args then compare them

if [[ $# -ne 2 ]] ; then
  echo Usage $(basename $0) arg1 arg2
  exit 1
  fi
if [[ $1 == $2 ]] ; then
   echo args are equal 
   echo args: $@    # could use $* 
else 
   echo args are not equal
fi
  
  

