# Disk Usage Aliases & Snippets



## Get Disk Usage of Each Directory and Sub-directories in MB

```bash
getSize(){
  du -h -d 2 -c "$1"
}

# Example Usage
getSize "./Documents"
```
