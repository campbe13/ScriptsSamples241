# Using Regex with sed

* Overview http://wiki.pcampbell.ep.profweb.qc.ca/index.php/Sed
* Tutorial http://www.grymoire.com/Unix/Sed.html
* http://tldp.org/LDP/Bash-Beginners-Guide/html/chap_05.html
* http://www.maketecheasier.com/beginners-guide-to-sed-linux/
* http://www.tldp.org/LDP/abs/html/x23170.html

# asciinema videos for sed
* http://asciinema.org/a/bzywjtnmq8txj72987rf2o21e

# Usage
The files in this directory are for a gentle introduction to sed
* lines  - data for use with the sed files
* sedrun.sh  - script to run sed files against line

##To use the script sedrun.sh:

```bash
sedrun.sh  pattern-file
```

It will cat the contents of pattern file wait for you to hit enter 
then run it against the file lines
##To use sed at the command line

```bash
# prints all lines and matched lines twice
sed '/^This/ p' file
# print only matched lines
sed -n '/^This/ p' file
sed '3,6 a append this after' file
# read sed instructions from file insert.3-5
sed -f insert.3-6 file 
```
