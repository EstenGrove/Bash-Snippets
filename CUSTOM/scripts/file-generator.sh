#!/bin/bash

# This will create 10 blank ".txt" files with the format of: test-1.txt, test-2.txt, test-3.txt etc...
for i in $(seq 10)
do
  touch "test-$i".txt
done

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
