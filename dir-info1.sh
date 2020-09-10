#!/bin/sh
DIR=$1
echo "$DIR"
if [ $# -ne 1 ]; then
    echo dir-info1.sh: wrong nubmber of arguments!
    echo use dir-info1.sh [path-to dir]!
elif [ ! -d "$DIR" ]; then
    echo "script argument isn't directory!"
else
    for something in "$DIR"/*; do
        if [ -f "$something" ]; then
            echo $(basename "$something")  - is a file
         elif [ -h "$something" ]; then
             echo $(basename "$something")  - is a symlink
        elif [ -d "$something" ]; then
            echo $(basename "$something")  - is a directory
        elif [ -b "$something" ]; then
            echo $(basename "$something")  - is a block device
        elif [ -c "$something" ]; then
            echo $(basename "$something")  - is a character device
        elif [ -p "$something" ]; then
            echo $(basename "$something")  - is a named pipe
        elif [ -S "$something" ]; then
            echo $(basename "$something")  - is a socket
        else
            echo $(basename "$something")  - is unknown 
        fi
    done
fi 
