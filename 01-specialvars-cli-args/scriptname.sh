#!/bin/bash
# pmcampbell
# 20202-02-26
#  using basename for script name & not using it

echo "run this script using ./ then using bash command, then using absolute path"

echo script name using basename '$(basename $0)' $(basename $0)
echo script name \$0  $0
