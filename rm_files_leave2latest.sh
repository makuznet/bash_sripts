##!/bin/bash
# Skript removes all files in the dir except the latest two
# -maxdepth 1 — to avoid subfolders
# -type d — searching for directories
# change /home/makuznet.. to your path
dir=$(find /home/makuznet/backups/project* -maxdepth 1 -type d )
for f in $dir
do
# ls -t — sort by time from newest to oldest
# tail -n +3 output starting with the third line omitting two newest files
# $list contains file names only
    list=$(ls -t $f | tail -n +3)
    for l in $list
    do
# create an absolute path and remove a file
        rm $f/$l
    done
done

# touch -t 202108131513 app-200813.tar.gz