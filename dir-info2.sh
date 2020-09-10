#!/bin/sh
DIR=$1
if [ $# -ne 1 ]; then
    echo "dir-info2: wrong number of arguments!"
    echo "use dir-info2.sh [path-to-dir]!"
elif [ ! -d $DIR ]; then
    echo "script argument isn't directory!"
else
    FILENUM=$(ls -a | awk '{print $1}' | wc -l)
    FILELIST=$(ls -a | awk '{print $1}')
    for name in $FILELIST; do
        echo $name" - "$(file $DIR/$name | awk -F": " '{print $2}')"\n"  
    done
    echo "#####################"
    echo "TOTAL FILES: $FILENUM"
fi
