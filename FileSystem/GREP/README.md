# ```GREP```
Set of useful grep commands.

## Syntax
```bash
grep -flags --options "search" <file-to-search-in>
```

__Options Flags:__
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
