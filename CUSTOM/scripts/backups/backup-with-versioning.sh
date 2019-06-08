#!/bin/bash

# generates backup to a folder located ~/Backup and name the file related to the date processed

backup() { source=$1 ; rsync --relative --force --ignore-errors --no-perms --chmod=ugo=rwX --delete --backup --backup-dir=$(date +%Y%m%d-%H%M%S)_Backup --whole-file -a -v $source/ ~/Backup ; } ; backup /source_folder_to_backup
