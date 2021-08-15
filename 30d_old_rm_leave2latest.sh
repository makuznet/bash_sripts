##!/bin/bash
# This script removes files older than 30 days except the latest two

dir=$(find /home/makuznet/backups/project* -maxdepth 1 -type d )
# -maxdepth 1 — to avoid subfolders
# -type d — searching for directories

for f in $dir
do
    find $f -maxdepth 1 -mtime +30 | sort -r | tail -n +3 | xargs rm 
done

# -mtime +30 — files older than 30 days
# sort -r — sort reversly (the newest first) 
# tail -n +3 output starts with the third line omitting two newest files