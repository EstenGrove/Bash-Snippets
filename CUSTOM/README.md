# Custom Aliases, .bash_profile etc


### Create Tarball Files
##### Tarball of a Single File
```bash
tar -zcvf output.tar.gz /path/to/filename.txt
```
##### Create a Tarball of a Directory
```bash
tar -zcvf output.tar.gz /path/to/dir/
```
##### Compress Multiple Directories at Once Into a Tarball
```bash
tar -zcvf output.tar.gz dir1 dir2 dir3 
```

#### Quick and Dirty Backup Script
- The following script will make a backup called "my-backup-<the current date>.tgz" of the /home/me/ directory.
```bash
#!/bin/bash          
OF=/var/my-backup-$(date +%Y%m%d).tgz
tar -cZf $OF /home/me/
```
