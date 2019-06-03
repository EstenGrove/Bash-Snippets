# this script will count all references of "Object reference" and then write the value w/ a description to a log file

val=`(awk '/Object reference*/' $C | wc -l)`; echo "There are $val Object reference errors" > error-summary3.txt
