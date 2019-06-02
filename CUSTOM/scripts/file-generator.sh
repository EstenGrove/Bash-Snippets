#!/bin/bash

######## GENERATE 10 BLANK .txt FILES
for i in $(seq 10)
do
  touch "test-$i".txt
done

# output files: test-1.txt, test-2.txt, test-3.txt...

######## ONE-LINER VERSION
for i in $(seq 10); do touch "test-$i".txt; done


# To delete those files
for i in $(seq 10); do rm -rf "test-$i".txt; done


# To create **AND** add content to a set of files
for i in $(seq 10); do echo "File Number $i" > "test-$i".txt; done


######## USING A NAMED LIST TO DELETE FILES FROM #########

# Store the files you want to delete in a list --- NOTE: you can create files with the same method ---
names=(test-1.txt test-2.txt test-3.txt)
for name in "${names[@]}"
do
  rm -rf "$name"
done


# ONE LINER VERSION
names=(test-1.txt test-2.txt test-3.txt); for name in "${names[@]}"; do rm -rf "$name"; done


######### ALIASES FOR CREATING FILES OF A SPECIFIC SIZE #########

alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)
