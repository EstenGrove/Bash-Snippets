# Permissions
Working with, handling and managing permissions on files, users, user groups etc.


## Get Permissions in Octal Form (644, 755 etc)
```bash
stat -c “%a” dir/

# output
755 dir/
```
