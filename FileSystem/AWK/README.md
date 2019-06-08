# ```AWK``` Command
Text processing command line tool, that allows variables, print-by-column and many other features.

- __NOTE: you can also place scripts in a file for reuse.__

## Syntax
```bash
awk <options> <file>
```


## Print A File's Contents Using ```AWK```
```bash
awk '{print}' test.txt
```

------------------------


## Print by Column
- syntax: ```awk '{print $<column>}' <filename>```
__Options:__
- ```$0``` will print the entire line 
- ```$1``` will print every column 1

```bash
awk '{print $1}' text.txt
```
- the above prints column 1 of test.txt

#### Print Multiple Columns
```bash
awk '{print $1 "\t" $3}' test.txt
```
- the above prints columns 1 and 3 from test.txt separated by a space


------------------------
# RegEx Pattern Matching
- syntax: ```awk '/regex/ {print $0}' <file>```


### Pattern Matching
- uses the more conventional/standard regex syntax ```/some-pattern/```
```bash
awk '/error/ {print $0}' logs.txt
```
- the above will print all instances of "error" in logs.txt
```bash

## Pattern Matching Method 2
- uses the ```~``` symbol for matching
awk '$0 ~ 9' numbers.txt
```
- the above will print the line that contains a "9"

### Pattern Negation (Not Match)
- uses the ```!~``` characters to indicate NOT MATCH, ie pattern negation.
```bash
awk '$0 !~ 9' numbers.txt
```
- the above will look for patterns that DO NOT include "9"

### Print Lines By Character Length
```bash
awk 'length($0) > 20' logs.txt
```
- the above will print any lines with more than 20 characters in logs.txt


------------------------


## Conditional Statements
__Conditional Methods:__
- ternary: ```awk '<condition> ? <statement1> : <statement2>'```  
```bash
awk 'BEGIN {a = 10; b = 20; (a > b) ? max = a : max = b; print "Max =", max}'

# output
Max = 20
```
- logical, (using the ```&&``` operator): ```awk '<value>; <condition> <result-if-true>, <result-if-false>```
```bash
awk 'BEGIN {num = 22; if(num >= 20 && num <= 30) printf "$num is greater than 20 AND less than 30", num}'
```

### If...else...if
```bash
awk 'BEGIN {
  a = 10;
  
  if (a == 20)
  print "a == 20";
  else if (a == 15)
  print "a == 15";
  else if (a == 10)
  print "a == 10";
}'
```

### While...loop
- syntax: ```while (condition) action```
- while ```i``` is less than or equal to 10, ```print i``` and keep counting (```i++```)

```bash
awk 'BEGIN { i = 1; while (i <= 10) { print i; i++ } }'

#output
1
2
3
4
5
6
7
8
9
10
```

------------------------


## String Concatenation
- note that adding " " in between strings will concatenate a space between them, other wise you can simply: ```str3 = str1 str2;```
```bash
awk 'BEGIN {str1 = "Hello"; str2 = "World"; str3 = str1 " " str2; print str3}'

# output
Hello World
```


------------------------


## For...loops
- same syntax as JavaScript for loops, basically
```bash
awk 'BEGIN { for(i = 1; i <= 10; i++) print i }'```

# output
1
2
3
4
5
6
7
8
9
10
```



------------------------



# Advanced Text Processing Scripts

#### Sort the number of hits per IP address per web page from greatest to fewest.
```bash
awk '{print $1,$7}' <name of access_log> | cut -d? -f1 | sort | uniq -c |sort -nr

###### Example Output:
6 108.18.19.70 /wp/wp-login.php
3 103.143.19.3 /wp-login.php
1 113.18.21.91 /wordpress/wp-login.php
1 97.18.19.7 /blog/wp-login.php
```

#### Get the 20 Most Recent Results in the access-log from a Specific Month 
```
awk '{print $1}' estengrove.beoktrue.com-Oct-2018 | sort | uniq -c | sort -rn | head
```
#### Print columns 4 and 5 of an Apache error-log.
```
awk ‘{print $4, “ “, $5}’ error_log
```








