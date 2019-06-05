# Permissions
Working with, handling and managing permissions on files, users, user groups etc.


## Check Permissions
#### Get Permissions in Octal Form (644, 755 etc)
```bash
stat -c “%a” dir/

# output
755 dir/
```
#### List all User Groups
```bash
groups
```

#### Get the Primary Membership of a User
```bash
id -g -n <username>
```
#### Check User Group for a Single User
```bash
users <username>
```
#### Alternate Method for Checking User Groups
```bash
grep <username> /etc/group
```
------------------------------


## Change Permissions

#### Change User and Group
```bash
# change perms of single directory
chown -R username:group <dir>

# change perms of multiple directories
chown -R username:group {dir1,dir2,dir3}
```

#### Change User Group
```bash
chown :group fileName
```
#### Add a New User Group
```bash
groupadd <groupname>
```
