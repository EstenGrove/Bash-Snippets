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
