#!/bin/bash

# List the status of ALL Git repos and if there's anything new to commit

gitdir="/var/git";find $gitdir -name ".git" 2> /dev/null | sed 's/\/.git/\//g' | awk '{print "\033[1;32m\nRepo ----> \033[0m " $1; system("git --git-dir="$1".git --work-tree="$1" status")}'
