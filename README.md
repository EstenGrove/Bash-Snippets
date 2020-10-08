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
- [Copy Files from Local Machine to Server](#copy-files-from-local-machine-to-server) 

----------


## **Common File System Commands & Helpers**

<details>
  <summary>Common File System Commands</summary>
  
**Delete Files and/or Folders By RegEx**

```bash
# this deletes ALL files with '2.js' in the filename
find . -type f -name *2.js* -delete
```
  
  
**Create Multiple Directories at Once (inside of nested directory)**

```bash
# this will create an "app" and "dashboard" folder inside of "view"
mkdir views/{app,dashboard}
```

**Create a Folder and Its Nested Folders at Once**

```bash
# This will create the "views" directory if it doesn't exist, then create "app", "dashboard", and "pages" folders inside it.
mkdir -p views/{app,dashboard,pages}
```

**Create Several Levels Of Nested Folders at Once**

```bash
mkdir -p views/{dashboard/{daily,weekly},app,global}

## Result: This creates "views" with "dashboard", "global" and "app" inside. Then "daily", "weekly" inside of "dashboard"
## views > dashboard, app, global
#### dashboard > daily, weekly
```

**Move All Contents of Folder into Another Folder**

```bash
# Moves all files from 'src/css/reports' into 'src/css/views'
mv src/css/reports/* src/css/views/
```

**Move All `.js` Files In a Folder**

```bash
mv src/components/*.js src/components/shared/
```

</details>


-----------

## Copy Files from Local Machine to Server

<details>
  <summary>Copying Files to a Server w/ `scp`</summary>

**Steps:**
1. Move to directory where desired files are located on your local machine
2. Make note of SSH user credentials & IP address of the target server
3. Run the below command to copy the files

```bash
scp -r <folder-to-copy> <ssh-user>@<target-server-ip>:/var/www/example.com/html

## USAGE EXAMPLE ##
scp -r ./build/* root@192.168.1.13:/var/www/mydomain.com/html
```
  
</details>

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

