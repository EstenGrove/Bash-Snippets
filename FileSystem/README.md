# Scripts, Helpers and Tools for Working in the File System

## Copying Files

#### Copy a File
```bash
cp file targetDirectory/
```

#### Move a File to a Directory __IF__ The File is Newer
```bash
cp -p <newerFile> directory/
```

#### Copy All Files, by Type, To a Directory
- copy all ```.html``` files to a directory called "target"
```bash
cp -u *.html target/
```

#### Copy a Specific File Into Multiple Directories Recursively
- this will copy the ```php.ini`` into every directory recursively
```bash
find * -type d|xargs -i cp --verbose php.ini {}
```
