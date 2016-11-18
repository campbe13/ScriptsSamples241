!/bin/bash
# PMCampbell
# rename files input
# change spaces to underscorses
if [[ $# -le 0 ]] ; then
    echo $(basename) Rename file or file list, change blanks to underscores
    echo $(basename) file1 file2 file3...
    exit 1
fi
ls $* | while read -r fn
do
    mv -v "$fn" `echo $fn | tr ' ' '_' `
done
