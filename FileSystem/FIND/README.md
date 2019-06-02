# ```FIND``` Command

## Syntax
```bash
# syntax
find <directory-to-search-in> -flags <search-item>
```

### List All Files Recursively
```bash
find -follow
```
### Search For Directories By Name
- uses the ```-type d``` flag, denotes __type: directory__
```bash
find . -type d -name "*log*"
```
- the above will search for all directories that include "log" in the name, it uses the *wildcard* operator before and after

### Search For Files in Current Directory By Name
- uses the ```-type f``` flag, denotes __type: file__
```bash
find . -type f -name "*log*"
```
- the above searches for all files the include "log" in the name

### Search By Name Regardless of Case
- uses the ```-iname``` flag, denotes __case-insensitive__
```bash
find /Documents -type f -iname "*tasks*"
```
- the above searches for files with "tasks" in the name regardless of case, upper and lowercase will match

### Find All Files By File Extension
```bash
find . -name "*.txt"
```
- the above searches for all .txt files in the current directory

### Find All Empty Files/Directories
- uses the ```-empty``` flag, denotes __blank file__
```bash
# find both empty files and directories
find . -empty

# find ONLY empty files
find . -type f -empty

# find ONLY empty directories
find . -type d -empty
```

### Find Files By __"Last Modified Date"__
```bash
find . -type f -ls | grep "Oct 10" 
```

### Find Files/Directories By Permissions (octal permissions)
- uses the ```-perm``` flag, denotes __permissions in octal form__
```bash
find . -perm 644
```

## Text Searching

### Search For Text Within Files
```bash
find . -type f -name "*.txt" -exec grep "Geek" {} \;
```
- the above searches for all .txt files that contain the word "Geek" in them





