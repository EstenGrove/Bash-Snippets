# ```GREP```
Set of useful grep commands.

## Syntax
```bash
grep -flags --options "search" <file-to-search-in>
```

__Options Flags:__
- ```--color=auto``` colorized output
- ```-i```
  - case-insensitive
    - ```grep -i "miller" file.txt
      - will search for "miller" regardless of case.
- ```-E``` is for *extended regex*
- ```-R```
  - search recursively
    - ```grep -R "miller" dir1/```
      - will search recursively thru ```dir1/``` for "miller"
- ```-c```
  - count the number of occurences
    - ```grep -ic "miller" file.txt```
      - will search for "miller" regardless of case and count the number of occurences
- ```-h```
  - will display the matched lines, not the filenames
- ```-l```
  - displays the filenames only
- ```-n```
  - displays the matched lines and their line numbers
- ```-v```
  - prints out the lines and *DO NOT* match the pattern
- ```-w```
  - matches the whole word
- ```-o```
  - prints *ONLY* the matched parts of a matching line, partials
- ```--color```
  - will print out the matches using color
- ```-s```
  - suppress error messages, like unable to read files or directories
  
### Print Output w/ Color
```bash
grep -inR --color "miller"
```
- the above will search for "miller", regardless of case and print a colorized output.
##### __Example__
<img width="649" alt="Screen Shot 2019-05-21 at 7 10 23 PM" src="https://user-images.githubusercontent.com/41505038/58142510-33a5f500-7bfc-11e9-8349-bad62ef8bb7f.png">


-----------------


## Search for String, Recursively in All Files
```bash
grep -ir string *
```


## Grep for All Lines that *DO NOT* Contain a Pattern
```bash
grep -v "2019-3-12" log.txt

# or you can use:
grep --invert-match "2019-3-12" log.txt
```

## Include Line Number in a Search Grep
```bash
grep -n "2019" log.txt
```
- the above will search for 2019 in ```log.txt``` and print the matches prefixed with the line number



## Match Line Endings using ```REGEX```
```bash
grep "some$" log.txt
```
- the above will find all instances of "some" that occur at the end of ```log.txt``` file


#### Bracket use
- find every line that begins with a capital letter
```bash
grep "^[A-Z]" log.txt
```


-------------------------------



# Pattern Repeating

#### __Match Any Lowercase Letter Multiple Time__
- this will match every occurence of the pattern "letters including a-z" multiple times, so matches any lowercase letter
```bash
grep "([a-z]*)" log.txt
```

#### __Match a Specific Group of Characters (ie regex grouping)__
- below will match all instances of "ERROR:" using regex
```bash
# Method 1
grep "\(ERROR:\)" log.txt

# Method 2
grep -E "ERROR:" log.txt

# Method 3
egrep "(ERROR:)" log.txt
```
- the above are ALL functionally equivalent


#### __Alternating Matches__
- the following will find either "ERROR" or "err" in log.txt
```bash
grep -E "(ERROR|err)" log.txt
```

#### __Match Any *One* of a Set of Matches__
- the following will match the word "New" and any matches of "a", "b", or "c" that immediately follow it. 
- Example: ```Newa  OR  Newb  OR  Newc```
```bash
grep  “New[abc]”  log.txt
```

#### __Match a *Range* Of Characters__
- the following will match "New" when immediately followed by any letter between "a" and "e"
```bash
grep  “New[a-e]” log.txt
```

#### __Match Any Number__
```bash
grep "[0-9]" log.txt
```
- the above will match any letter 0-9

#### __Match a Pattern that *MUST OCCUR* at The Beginning of Each Line__
- the following will match every line that begins with "start"
```bash
grep "^start" log.txt
```
### __Match Any Character that *IS NOT* Included in the Pattern__
- this will look for anything that IS NOT a number 0-9
```bash
grep "[^0-9]" log.txt
```


---------------------------


## Pattern Matching w/ Sorting


#### __Sort By Date__
- the following will print the first column of every occurence of "Oct 18 2018" and sort by most recent at the top
```bash
grep "18/Oct/2018" |  awk '{print $1}' logfile.txt | sort | uniq -c | sort -rn | head
```



