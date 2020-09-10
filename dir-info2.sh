#!/bin/sh

FILENUM=$(ls -a | awk '{print $1}' | wc -l)
DIR=$1
FILELIST=$(ls -a | awk '{print $1}')
for name in $FILELIST; do
    echo $name" - "$(file $DIR/$name | awk -F": " '{print $2}')"\n"  
done
echo "#####################"
echo "TOTAL FILES: $FILENUM"
