# Disk Usage Aliases & Snippets



## Get Disk Usage of Each Directory and Sub-directories in MB

```bash
gettotal(){
  du -h -d 2 -c "$1"
}

# Example Usage
gettotal ./Documents 
# OR
gettotal "./Documents"
```
###### Alternate Method w/ User Prompt

```bash
getsize(){
        read -p "Which directory should I check the disk usage for? " dir
        output="$(du -ch "$dir" | grep total)"
        echo "The $dir directory is $output"
}

# Example Usage
getsize ./Documents
```

