# Git Logging
Tips for formatting, printing and organizing git commit messages and log outputs.

## Quick Access
- [Search Logs](#search-git-log)
  - [Log specific lines from file](#log-specific-lines-from-a-file)
  - [Search for string in log](#search-git-log-for-a-string-grep)
- [Print logs by date or range](#logs-by-date-or-range)
- [Pretty-Print/Short Logs](#concise-printing-of-git-log)
- [Prepare message for email submission](#prepare-a-message-for-email-submission)


---

## Logs by Date or Range


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

--------

# Search Git Log

### Log Specific Lines from a File
- ```git log -u -L <start>,<end>:<path-to-file>```


```bash
# Syntax: git log -u -L <starting-line>,<ending-line>:<path-to-file>

# Example:
git log -u -L 133,250:src/components/shared/CustomDropdown.js
```


### Search Git Log for a String (grep)
```
git log --all --grep="some string here"
```








