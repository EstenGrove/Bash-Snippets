# Sed ```sed``` Command
 ```sed``` is great for string replacement or using regex to match string patterns.

## __Option Flags__
- ```s``` is *subsitution* ie ```'s/regex/'```
  - ```'s/regex/replacement/flags'```
 - ```g``` will apply replacement to *ALL* occurences that match a pattern
- ```-i``` is for modifying *in-place*, like replacement
- ```--quiet``` is for "constraining" the console output to just what's needed
- ```--follow-symlinks``` follow sym-links when processing *in-place*
- ```-r``` or ```--regexp-extended``` is to use regex in an expression
- ```I``` is for case sensitive regex. ie ```/regex/I```
- ```$``` matches the *last line* of each file OR the *last line of the last file* when used with the ```-i``` flag
 - can also be used to count lines: ```$=

## RegEx Syntax
- Groups: match the characters as *whole*. Groups are done using ```\(regex\)``` syntax
- Ranges: match characters in a range. ```\{d,h\}``` will match characters between "d" and "h"
- Lists: match characters from a list. ```[a-z]``` will match characters in the alphabet
- Multiple Patterns: match more than one pattern. ```regex1\|regex2```



 ## SUBSTITUTION
```bash
# replace unix with linux inside test.txt
sed 's/unix/linux/' test.txt
```


 ### Replacing all occurences of a pattern with another string
 - NOTE: On MacOSX ```SED``` working slightly differently and you need to define a label(ie ```'.old'``` as the "backup" file.
  - HOWEVER, a work-around for this issue is to use an empty ```''``` backup string.
 ```bash
 sed -i '' 's/NAME/Esten/g' test-*.txt
 ```
- the above will find every instance of "NAME" in all .txt files starting with "test-" and replace it with "Esten" 
- ```-i``` means modify *in-place*, the empty '' is needed for MAC, ```s``` is substitute, ```g``` is for every instance


## Print By Line Number
- this will print the entire line 383
```bash
sed -n 383p file.txt
```

#### __Print Multiple Lines__
- this will print line 3 and 6
```bash
sed -n ‘3,6p’ file.txt
```
