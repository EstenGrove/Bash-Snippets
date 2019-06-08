# Collection of Scripts for Logging, Parsing and Extracting Data from Files, Folder, Servers etc


## Remove Duplicate Lines While Keeping Empty Line and The Current Order
- this will only print to the console
```bash
awk '!NF || !seen[$0]++' file.txt
```

#### Remove Duplicate Lines While Keeping Empty Lines and the Order *AND* Write to a New File
```bash
awk '!NF || !seen[$0]++' file.txt >> new.txt
```
