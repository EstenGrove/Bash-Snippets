# Scripts, Helpers and Tools for Working in the File System

## Navigating This Repo
- [AWK](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/AWK)
- [GREP](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/GREP)
- [FIND](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/FIND)
- [CUT](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/CUT)
- [SED](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/SED)
- [SORT](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/SORT)
- [WORD-COUNT(wc)](https://github.com/EstenGrove/Bash-Snippets/tree/master/FileSystem/WORD-COUNT(wc))


## Create Several Identical Directories In Multiple Folders at Once

```bash
# the following will create "components", "css", "assets", "deps", "__tests__" directories inside every direction in the current location.
for dir in */; do mkdir "$dir"/{components,css,assets,deps,__tests__};done
```

## Create File for Every Folder in the Working Directory

```bash
for dir in */; do touch "$dir"/<some-file-here>; done

# Example: create a README.md" file for every directory
for dir in */; do touch "$dir"/README.md; done
```


## Renaming Files
```bash
# rename the file test.txt => test.txt.old
mv test.txt{,.old}  # test.txt.old

# rename it back to test.txt
mv test.txt{.old,}  # test.txt

# rename all file extension
rename 's/.old$/.new/' *.old
```

## Copying Files

#### Copy a File
```bash
cp file.txt destination/
```

#### Copy Several Files from Directory to Another
```bash
cp ~/Documents/Projects/{proj1.txt,proj2.txt,proj3.txt} destination/


# to copy every file in a directory to another directory use the "*"
cp ~/Documents/Projects/* destination/
```

#### Copy All Files, by Type, To a Directory
- copy all ```.html``` files to a directory called "target"
```bash
cp -u *.html destination/
```

#### Copy a Specific File Into Multiple Directories Recursively
- this will copy the ```php.ini`` into every directory recursively
```bash
find * -type d|xargs -i cp --verbose php.ini {}
```

## Moving Files

#### Move a File to a Directory __IF__ The File is Newer
```bash
cp -p <newerFile> destination/
```

## Create Multiple Files or Folders

#### Create Multiple Files with Brace Expansion
```bash
touch My{Notes,Journal,Docs}.txt

# the above will create: MyNotes.txt MyJournal.txt and MyDocs.txt


## Alternate method ##

touch MyNotes.txt MyJournal.txt MyDocs.txt
```

###### Create Multiple Folders w/ Brace Expansion
```bash
mkdir My{Docs,Notes}

# above will create: MyDocs/ and MyNotes/
```

## Remove Multiple Files or Folders

#### Delete Files with Brace Expansion
```bash
rm -rf My{Docs,Notes}

# above will delete MyDocs and MyNotes


## Alternate Method ##

rm -rf file1 file2 file3

rm -rf dir1 dir2 dir3
```
