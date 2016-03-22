# Using Regex with sed

* Overview http://wiki.pcampbell.ep.profweb.qc.ca/index.php/Sed
* Tutorial http://www.grymoire.com/Unix/Sed.html
* http://tldp.org/LDP/Bash-Beginners-Guide/html/chap_05.html
* http://www.maketecheasier.com/beginners-guide-to-sed-linux/
* http://www.tldp.org/LDP/abs/html/x23170.html
## awk 
This is here for completeness as we often use sed with awk, but it is not covered in this course
*Tutorial http://www.grymoire.com/Unix/Awk.html

The files in this directory are for a gentle introduction to sed
lines  - data for use with the sed files
sedrun.sh  - script to run sed files against line

To use the script sedrun.sh:

...
sedrun.sh  pattern-file
...

It will cat the contents of pattern file wait for you to hit enter 
then run it against the file lines
