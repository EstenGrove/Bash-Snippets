# Bash-Snippets
An organized and detailed collection of bash scripts, snippets, helpers, aliases and more.


## Navigating This Repo
- [AWK](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/AWK)
- [GREP](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/GREP)
- [FIND](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/FIND)
- [CUT](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/CUT)
- [SED](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/SED)
- [SORT](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/SORT)
- [WORD-COUNT(wc)](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/WORD-COUNT(wc))
- [DISK USAGE](https://github.com/EstenGrove/Bash-Snippets/tree/master/DISK-USAGE)
- [UNIQ](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/UNIQ)
- [PERMISSIONS](https://github.com/EstenGrove/Bash-Snippets/tree/master/Permissions)
- [COMPUTING PERFORMANCE](https://github.com/EstenGrove/Bash-Snippets/tree/master/Computing-Performance)
  - [PROCESSES](https://github.com/EstenGrove/Bash-Snippets/tree/master/Computing-Performance/Processes)
  - [MEMORY](https://github.com/EstenGrove/Bash-Snippets/tree/master/Computing-Performance/Memory)
- [MY CUSTOM SCRIPTS](https://github.com/EstenGrove/Bash-Snippets/tree/master/CUSTOM/scripts)
- [GIT RELATED](https://github.com/EstenGrove/Bash-Snippets/tree/master/CUSTOM/scripts/GIT)
- [GUIDE](https://github.com/EstenGrove/Bash-Snippets/tree/master/BASIC-GUIDE)
  - [FUNCTIONS](https://github.com/EstenGrove/Bash-Snippets/tree/master/BASIC-GUIDE#functions)
  - [CONDITIONALS](https://github.com/EstenGrove/Bash-Snippets/tree/master/BASIC-GUIDE#conditionals)
  - [LOOPS](https://github.com/EstenGrove/Bash-Snippets/tree/master/BASIC-GUIDE#loops-for-while-until)
  - [READING USER INPUT](https://github.com/EstenGrove/Bash-Snippets/tree/master/BASIC-GUIDE#reading-user-input-with-read)
  - [VARIABLES](https://github.com/EstenGrove/Bash-Snippets/tree/master/BASIC-GUIDE#variables)


-----------

## Kill Git Bash
When an error about child processing forking appears you have to kill the process for it.

```bash
taskkill /F /IM ssh.exe

# Also run the below command if the process is present
taskkill /F /IM ssh-pageant.exe
```


------

## Locating Files
- Use ```find```
- Use ```ls``` with ```| grep```
- Use ```ls``` with wildcard: ```ls *[32]*```
  - This will find all files with either a 3 or 2 in it.

