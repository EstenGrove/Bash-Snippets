########################## DATA LOGGING SCRIPT ##########################
# Script is used for creating a count of a specific "string" appearance using regex, then writing to a file
# - "val" is the awk command as a variable. 
# - "$C" is the file to search thru as a variable

val=`(awk '/Object reference*/' $C | wc -l)`; echo "There are $val Object reference errors" > error-summary3.txt
