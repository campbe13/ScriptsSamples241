isnumeric () {
if [ $# -ne 1 ] ; then 
    return 1
fi
echo ' [[ "$1" =~ ^[[:digit:]]*$ ]] '
if [[ "$1" =~ ^[[:digit:]]*$ ]] ; then 
    return 0 
else
   return 1
fi
} #isnumeric()
isnumericneg () {
if [ $# -ne 1 ] ; then 
    return 1
fi
echo ' [[ "$1" =~ [^[:digit:]] ]] '
if [[ "$1" =~ [^[:digit:]] ]] ; then 
    return 1 
else
   return 0
fi
} #isnumericneg()
isnumericplus () {
if [ $# -ne 1 ] ; then 
    return 1
fi
echo '[[ "$1" =~ ^[[:digit:]]+$ ]]'
if [[ "$1" =~ ^[[:digit:]]+$ ]] ; then 
    return 0 
else
   return 1
fi
} #isnumericplus()
