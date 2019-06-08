#!/bin/bash

# generates backup to a folder of your choosing and inlcude the date backed up

backup() { source=$1 ; rsync --relative --force --ignore-errors --no-perms --chmod=ugo=rwX --delete --backup --backup-dir=$(date +%Y%m%d-%H%M%S)_Backup --whole-file -a -v $source/ ~/Backup ; } ; backup /source_folder_to_backup



###### EXAMPLE ######
# Backup my documents in my home folder

# backup() { source=$1 ; rsync --relative --force --ignore-errors --no-perms --chmod=ugo=rwX --delete --backup --backup-dir=$(date +%Y%m%d-%H%M%S) --whole-file -a -v $source/ ~/Backup ; } ; backup ~/Documents
