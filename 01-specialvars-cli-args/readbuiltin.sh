#!/bin/bash
# pmcampbell
# 2018-02-24
# demonstrate using the read builtin

read -p "What is your name, first and last " first last

echo Hello $first
echo was that too formal ?
echo Hello Mr. or Mrs. or Ms.  $last
