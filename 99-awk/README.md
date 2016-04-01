# Using gawk  (gnu awk) 

This is not requied content it is here for completeness as
sed and awk are often used together

* Tutorial http://www.grymoire.com/Unix/Awk.html
* http://tldp.org/LDP/Bash-Beginners-Guide/html/chap_06.html
* http://tldp.org/LDP/abs/html/awk.html

## gawks.sh use the files as the cli arg, parses file with gawk using various patterns
```bash
# example
./gawks.sh cars
./gawks.sh accord-in-2
```
## gawks2.sh use the  files as the  cli arg, formats date header
```bash
# example
./gawks2.sh  cars
./gawks2.sh accord-in-2
```
## Using the other  files as patterns
for1 
ifelse 
pr_header1 
pr_header2 
print 
print.3.1 
print.regex 
while1 
```bash
#syntax, see man page
#gawk -f filename
#example, some are stand alone
gawk -f for1
#example, some also need an input file to parse
gawk -f print.3.1 /etc/passwd
```
