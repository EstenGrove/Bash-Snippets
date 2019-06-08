# Custom Bash Scripts
Collection of bash scripts covering file generation, git, backups and more.


--------------


## Common, Useful Scripts & Commands 


#### Get Your Machine's External IP
```bash
curl ifconfig.me

# 108.115.87.92
```

#### Run a Command at a Specific Time (scheduled job)
- these commands typically use ```24-hour format```
```bash
echo "Hello its 8:40" | at 8:40

# job 1 at Sat Jun 8 08:40:00 2019

# alternate times
at midnight

```
