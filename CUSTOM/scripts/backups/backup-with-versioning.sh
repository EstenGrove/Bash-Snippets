#!/bin/bash

# generates backup to a folder of your choosing and inlcude the date backed up

backup() { source=$1 ; rsync --relative --force --ignore-errors --no-perms --chmod=ugo=rwX --delete --backup --backup-dir=$(date +%Y%m%d-%H%M%S)_Backup --whole-file -a -v $source/ ~/Backup ; } ; backup /source_folder_to_backup
