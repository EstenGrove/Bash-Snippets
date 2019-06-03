# this script will count all references of "Object reference" and then write the value w/ a description to a log file
# NOTE: "val" is the awk command as a variable. "$C" is the file to search thru as a variable
val=`(awk '/Object reference*/' $C | wc -l)`; echo "There are $val Object reference errors" > error-summary3.txt
