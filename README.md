# dir-info 
##### Scripts to show types of files in directory.

`dir-info1.sh` using shell's testing conditions for specify type

`dir-info2.sh` using 'file' command.


## How to use 

```
$ sh <YOUR PATH>/dir-info/dir-info1.sh <DIR>
$ sh <YOUR PATH>/dir-info/dir-info2.sh <DIR>
```

## Example
```
$ sh dir-info/dir-info1.sh . 

dir-info - is a directory
ff - is a file
git-game - is a directory
git-game-v2 - is a directory
hard - is a file
hell - is a symlink
help.txt - is a file
ifile.txt - is a file
ip-script.awk - is a file
log.log - is a file
myscript.awk - is a file
sh.script - is a file
t.t - is a file
target.file - is a file
test - is a directory
test-script - is a file
test.cc - is a file
```

```
$ sh dir-info/dir-info2.sh .

.                     directory
..                    directory
.bash-script2.sh.un~  data
.bash-script.sh.un~   data
dir-info              directory
ff                    POSIX shell script, ASCII text executable
.ff.un~               data
git-game              directory
git-game-v2           directory
hard                  UTF-8 Unicode text
hell                  symbolic link to /home/username/
help.txt              UTF-8 Unicode text
ifile.txt             ASCII text
ip-script.awk         awk or perl script, ASCII text
.ip-script.awk.un~    data
log.log               ASCII text, with very long lines
.log.log.un~          data
myscript.awk          awk or perl script, ASCII text
.myscript.awk.un~     data
sh.script             POSIX shell script, ASCII text executable
.sh.script.un~        data
target.file           empty
#####################
TOTAL FILES: 30
```

