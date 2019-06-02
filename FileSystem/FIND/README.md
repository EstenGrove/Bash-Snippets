# ```FIND``` Command

## Syntax
```bash
find <directory> -flags <search-item>
```

### List All Files Recursively
```bash
find -follow
```
### Search For Directories By Name
- uses the ```-type d``` flag, denotes __type: directory__
```bash
find . -type d -name "log"
```
- the above will search for all directories that include "log" in the name

### Search For Files in Current Directory By Name
- uses the ```-type f``` flag, denotes __type: file__
```bash
find . -type f -name "log"
```
- the above searches for all files the include "log" in the name

### Search By Name Regardless of Case
- uses the ```-iname``` flag, denotes __case-insensitive__
```bash
find /Documents -type f -iname "tasks"
```
- the above searches for files with "tasks" in the name regardless of case, upper and lowercase will match

### Find Files By __"Last Modified Date"__
```bash
find . -type f -ls | grep "Oct 10" 
```
