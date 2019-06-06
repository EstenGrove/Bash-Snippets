# Disk Usage

## Get Disk Usage in Human Readable Form
```bash
du -h

# output
3.5G public_html/
2.2G mail/
```
- alternative for Linux: ```df -h```

## Get Disk Usage of Specific Directory
```bash
du -h public_html/

# output
3.5G public_html/
```

## Get the 20 Largest Files
```bash
du -a <directory|blank> | sort -r -n | head -n 20

# or a more human readable form
du -h <directory|blank> | sort -r -n | head -n 20
```

## Get the Disk Usage for a Certain "Depth" of Directories
- Only go so deep thru the directory tree.
- This will go 5 levels deep and sort the results by largest file/directory to smalles
```bash
du -h --max-depth=5 | sort -rn
```

## Get Total Disk Usage for a Given Directory's Contents
```bash
du -h -d 2 -c
```

# Sorting Disk Usage Output

#### __Sort By Largest Amount of Disk Usage__
```bash
du -h -a / | sort -h | tail -n 15
```
#### __ONLY Show Contents *Larger* Than a Certain Size
- this will show only contents larger than 100M
```bash
du -h -t 100M -a /
```

#### __List *Only* Inodes' Usage
```bash
du -d 2 --inodes
```

## Show Last Modified Time
```bash
du -h -d 1 --time -a
```

# Using the ```DF``` Command

## Using ```df -h``` To Show File System Usage
```bash
df -h

# output
Filesystem            Size  Used Avail Use% Mounted on
C:/Program Files/Git  1.9T  187G  1.7T  11% /
T:                   1000G   27G  974G   3% /t
U:                   1000G   27G  974G   3% /u
```
