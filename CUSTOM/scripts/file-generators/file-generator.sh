#!/bin/bash

######## GENERATE 10 BLANK .txt FILES ########
for i in $(seq 10)
do
  touch "test-$i".txt
done

# output files: test-1.txt, test-2.txt, test-3.txt...

######## ONE-LINER VERSION ########
for i in $(seq 10); do touch "test-$i".txt; done


######### To delete those files #########
for i in $(seq 10); do rm -rf "test-$i".txt; done



######### CREATE MULTIPLE SUBDIRECTORIES ##########
mkdir -p /path/{folder1,folder2,folder3,folder4}


# To create **AND** add content to a set of files
for i in $(seq 10); do echo "File Number $i" > "test-$i".txt; done


######### USING A NAMED LIST TO DELETE FILES FROM #########

# Delete files from a list variable
names=(test-1.txt test-2.txt test-3.txt)   # variable that stores a list of files
for name in "${names[@]}"                  # loop thru each index in "names"
do
  rm -rf "$name"                           # delete each item in "names", one-by-one
done


######### ONE LINER VERSION ##########
names=(test-1.txt test-2.txt test-3.txt); for name in "${names[@]}"; do rm -rf "$name"; done


######### ALIASES FOR CREATING FILES OF A SPECIFIC SIZE #########

alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)

### ALTERNATE METHODS FOR FILE GENERATION ON WINDOWS ###

# Create 5megabyte file
truncate -s 5M FiveMegs.txt

# create 10megabtye file
truncate -s 10M TenMegs.txt

#################### GENERATE SEVERAL FILES OF A SPECIFIC SIZE ####################

# generate 10 files that are all 5M
for i in $(seq 10); do truncate -s 5M "FiveMegs-$i.txt"; done


# generate 10 files that are all 10M
for i in $(seq 10); do truncate -s 10M "TenMegs-$i.txt"; done

# generate 5 files that are all 1G
for i in $(seq 5); do truncate -s 1G "OneGig-$i.txt"; done
