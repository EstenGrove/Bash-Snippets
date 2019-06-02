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
### Find All Files In A Directory
```bash
find . -type f
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

### Find All Empty Files/Directories and Delete Them
```bash
# find BOTH files and folders that are empty, and delete them
find . -empty -delete

# find ONLY files that are empty, and delete them 
find . -type f -empty -delete

# find ONLY folders that are empty, and delete them
find . -type d -empty -delete
```

-----------------------

## Search Based on Time, Date
__Options:__
- Modified Time: last time the file/directory contens were modified
  - ```-mtime``` - time in days
    - ```-mtime 2``` equals: modified at least 2 days ago (last 48-72 hours)
    - ```-mtime -2``` equals: modified *less* than 2 days ago (last 0-48 hours)
    - ```-mtime +2``` equals: modified *more* than 2 days ago (72 hours or more)   
  - ```-mmin``` - time in minutes
- Access Time: last time the file/directory was accessed  
  - ```-atime``` - time in days
  - ```-amin``` - time in minutes
- Change Time: last time the file/directory's metadata or permissions were changes
  - ```-ctime``` - time in days
  - ```-cmin``` - time in minutes

### Find Files *Modified* in the Last 0-2 Days
```bash 
find . -type f -mtime -2
```

### Find All Files *Modified* Longer Than 2 Days Ago
```bash
find . -type f -mtime +2
```

### Find All Files *Modified At Least* 2 Days Ago
```bash
find . -type f -mtime 2
```

### Find All Files *Modified* In the Last 2 Days, AND Accessed in the Last 30 Minutes
```bash
find . -type f -mtime -2 -atime 30

### Find Files By __"Last Modified Date"__
```bash
find . -type f -ls | grep "Oct 10" 
```

-----------------------
## Search All Files/Directories Based on Size
Uses the ```-size``` flag.
__Options:__
- ```c```: bytes
- ```k```: kilobytes
- ```m```: megabytes
- ```g```: gigibytes

### Find All Files That Are 20Megabytes
```bash
find . -size 20M
```

### Find All Files That Are *Less Than* 20Megabytes
```bash 
find . -size -20M
```

### Find All Files That Are *Larger Than* 1Gigabyte
```bash
find . -size +1G
```


-----------------------


## Search Based On Permissions
Permissions' flags can set using octal(644, 755 etc) or Writables(rx, rw, rw-x etc)

__Options (flags):__
- ```-perm```
  - User Permissions Flags:
    - ```a``` equals "ALL users"
    - ```u``` equals "user"
    - ```o``` equals "owner"
    - ```g``` equals "group"
  - Alternate Permissions Flags:
    - ``r``` equals "read```
    - ```w``` equals "write"
    - ```x``` equals "execute"
    - Examples of Permissions' Outputs: 
      - ```-rwx-rw-r--```
        - the first ```-``` denotes a file type, ```d``` would be for directory
        - ```rwx``` denotes that perms are set to read, write and execute for the __*owner*__ of the file
        - ```rw``` denotes read, write and execute perms for the user group that owns the file
        - ```r--``` denotes read, write and execute perms for all other users of the file, as well
        
### Find All Files with ```rwxr-xr-x``` Permissions
```bash
find . -perm u=rwx,g=rx,o=rx

# the equivalent to the above is: rwxr-xr-x
```

### Find All Files/Diretories That Enable ```r-xr-xr-x``` Permissions for __ALL__ Users
```bash
find . -perm a=rx
```

### Find Files/Directories By Permissions (octal perms)
- uses the ```-perm``` flag, denotes __permissions in octal form__
```bash
# enables read, write, execute perms for all users, groups
find . -perm 644

# find permissions 755
find . -perm 755

```
### Find All Files/Directories That DO NOT Include a Search
```bash
find . -type f ! -name "*log*"
```
- the above will find all files, in the current directory, that DO NOT include the word "log" anywhere in the filename.

-----------------------

## Limiting Directory Traversal
To limit *how* deep a command runs in your system tree you can use the ```maxdepth``` or ```mindepth``` option

__Options:__
- ```maxdepth```
  - "maxdepth" will search a *maximum* of x levels deep
  - ```find . maxdepth 3``` will search a *max* of 3 levels deep in the system tree
- ```mindepth``` 
  - "mindepth" will search a *minimum* of x levels deep
  - ```find . mindepth 3``` will search *at least* 3 levels deep and WILL go deeper if possible


### Search 3 Levels Deep for All Files That Contain "log"
```bash
find . -type f maxdepth 3 -name "*log*"
```

### Search *At least* 3 Levels Deep and Search Deeper, if Possible
```bash
find . -type f mindepth 3 -name "*log*"
```


---------------------

## Executing Other Commands Upon a ```find``` Search
You can run different commands using the search results from a ```find``` command, typically ```-exec``` is needed for this.

#### Find All .mp3 Files and Copy Them To Another Directory, Like external HD
```bash
# using the -exec command w/ find: the curly braces are the placeholder for the directory that's being searched
find . -type f -name "*.mp3" -exec cp {} targetDirectory/ ";"
```
- the above command is finding all .mp3 files and copying them from the current search(ie current directory) to the ```targetDirectory``` folder


----------------------


## Text Searching

### Search For Text Within Files
```bash
find . -type f -name "*.txt" -exec grep "Geek" {} \;
```
- the above searches for all .txt files that contain the word "Geek" in them





