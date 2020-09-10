#!/bin/sh
DIR=$1
if [ $# -ne 1 ]; then
    echo "dir-info2: wrong number of arguments!"
    echo "use dir-info2.sh [path-to-dir]!"
elif [ ! -d $DIR ]; then
    echo "script argument isn't directory!"
else
    FILENUM=$(ls -a "$DIR" | awk '{print $1}' | wc -l)
    FILELIST=$(ls -a "$DIR" | awk '{print $1}')
    BUFFER=''
    for name in $FILELIST; do
        BUFFER=${BUFFER}$name"|"$(file $DIR/$name | awk -F": " '{print $2}')"\n"  
    done
    echo $BUFFER | column -t -s "|"
    echo "#####################"
    echo "TOTAL FILES: $FILENUM"
fi
