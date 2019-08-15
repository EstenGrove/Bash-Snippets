# Git Logging
Tips for formatting, printing and organizing git commit messages and log outputs.


### Git Log Before/After a Specific Date
```bash
# print all logs before Aug 13
git log --before "Tues Aug 13 2019"


# print all logs after Aug 13
git log --after "Tues Aug 13 2019"
```

### Concise Printing of Git Log
```bash
git shortlog
```

### Prepare a Message for Email Submission
The ```git format-patch <commit_id>``` command will create a file with a history of any commit with the applied changes mapped out with "before" and "after" snapshots of the code and the changes. It's typically used to be sent via email as a changelog.
```bash
# get a log patch of where the branch is currently pointing (HEAD)

git format-patch -1 HEAD

# get a log patch of a specific commit

git format-patch -1 <commit_id>

```
