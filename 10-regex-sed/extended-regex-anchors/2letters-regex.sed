# ^ begins with [a-z] lower case letter
#  {2,3} minimum 2, maximum 3 lower case letters
#  [a-z]{2,3} ends with maximum 3, minimum 2 lower case letters

#  this will match only strings of 2 or 3 characters containing lower case letters

# this uses extended regex {2,3} so run sed with -r to use it
/^[a-z]{2,3}$/ p 