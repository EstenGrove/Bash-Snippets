#!/bin/bash

# List the status of ALL Git repos and if there's anything new to commit

gitdir="/var/git";find $gitdir -name ".git" 2> /dev/null | sed 's/\/.git/\//g' | awk '{print "\033[1;32m\nRepo ----> \033[0m " $1; system("git --git-dir="$1".git --work-tree="$1" status")}'


###### EXAMPLE OUTPUT
# Repo ---->  /var/git/router/TG799VAC-XTREME-17.2-MINT/
# On branch master
# Your branch is up to date with 'origin/master'.

# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)

#         modified:   README.md

# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)

#         deleted:    test.sh
