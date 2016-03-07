read -p string x
if [[ $x =~ \(.*\) ]] ; then
   echo string enclosed in \(\)
else 
   echo nnot encloses
fi
