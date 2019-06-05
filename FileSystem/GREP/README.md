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

## Pattern Repeating
- this will match every occurence of the pattern
```bash
grep "([a-z]*)" log.txt
```


