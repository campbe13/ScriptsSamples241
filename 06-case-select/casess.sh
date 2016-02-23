#!/bin/bash
#pmc
#2013-03-06
# using case

echo this is a menu
echo enter w to show who\'s on the computer
echo enter d to show fs disk use
echo enter l to show listing of your home directory

read selection

# case will match using any globbing characters 
case "$selection" in
	[Ww] ) who
	    echo "that was who"
	    ;;
	d | D ) du -sh / 2>/dev/null
	    echo "that was du"
	    ;;
	*l* ) ls ~/
	    echo "that was ls"
	    ;;
        * ) echo oops not w, l or d
	    ;;
esac


