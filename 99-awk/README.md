# Using gawk  (gnu awk) 

This is not requied content it is here for completeness as
sed and awk are often used together

* Tutorial http://www.grymoire.com/Unix/Awk.html
* http://tldp.org/LDP/Bash-Beginners-Guide/html/chap_06.html
* http://tldp.org/LDP/abs/html/awk.html

## gawks.sh use the following files as the cli arg, parses file with gawk using various patterns
accord-in-2
cars
```bash
# example
./gawks.sh cars
```
## gawks2.sh use the following files as the  cli arg, formats date header
```bash
# example
./gawks2.sh  cars
```
## Using the following files
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
gawk -f filename
#example
gawk -f for1
```
