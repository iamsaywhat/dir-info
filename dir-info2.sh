#!/bin/bash
DIR=$1
if [ $# -ne 1 ]; then
    echo "dir-info2: wrong number of arguments!"
    echo "use dir-info2.sh [path-to-dir]!"
elif [ ! -d "$DIR" ]; then
    echo "script argument isn't directory!"
else
    BUFFER=''
    shopt -s dotglob
    for name in $DIR/*
    do
        name=$(basename "$name")
        BUFFER=${BUFFER}"$name""|"$(file "$DIR/$name" | awk -F": " '{print $2}')"\n"
    done
    echo -e "$BUFFER" | column -t -s "|"
    echo "#####################"
    FILENUM=$(ls -a "$DIR" | wc -l)
    echo "TOTAL FILES: $FILENUM"
fi
