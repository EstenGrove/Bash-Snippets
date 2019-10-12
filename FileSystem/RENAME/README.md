# Using the ```RENAME``` Command

```rename``` is much like ```mv``` in that is will rename files, but it requires regex.


## Syntax

```bash
rename <options_flags> <regex> <file_to_be_effected>

# Example 1: rename all .png to .jpg
rename -v 's/.png/.jpg/' *
```

## Change ALL Uppercase Letters to Lowercase

```bash
# "-f" is force overwrite "y" is for case change
rename -f 'y/A-Z/a-z/' *
```

## Change File Extensions for ALL Files in a Directory

```bash
# this will change ALL .txt files to .md
rename -f 's/.txt/.md/gi' *


```
