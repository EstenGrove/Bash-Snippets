# Using the ```RENAME``` Command

```rename``` is much like ```mv``` in that is will rename files, but it requires regex.


## Syntax

```bash
rename <options_flags> <regex> <file_to_be_effected>

# Example 1: rename all .png to .jpg
rename -v 's/.png/.jpg/' *
```
