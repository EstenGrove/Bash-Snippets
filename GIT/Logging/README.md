# Git Logging
Tips for formatting, printing and organizing git commit messages and log outputs.

## Quick Access
- [Search Logs](#search-git-log)
  - [Log specific lines from file](#log-specific-lines-from-a-file)
  - [Search for string in log](#search-git-log-for-a-string-grep)
- [Show Recent Branches](#show-recent-branches)
- [Print logs by date or range](#logs-by-date-or-range)
- [Pretty-Print/Short Logs](#concise-printing-of-git-log)
- [Prepare message for email submission](#prepare-a-message-for-email-submission)


---

# Logs by Date or Range


### Before/After a Specific Date

<details>
  <summary>Log details before or after a date</summary>


```bash
# print all logs before Aug 13
git log --before "Tues Aug 13 2019"


# print all logs after Aug 13
git log --after "Tues Aug 13 2019"
```

</details>


### Since a Specific Date

<details>
  <summary>Log details since a date</summary>
  
```bash
git log --since="9/3/2020 08:00:00"
```

##### **Examples**

###### **Today**
NOTE: when requesting log for today ONLY, you MUST provide a timestamp in order to return anything.

```bash
# Syntax: git log --since="MM/DD/YYYY hh:mm:ss"

# since Sept. 1, 2020 at 3:30 PM
git log --since="9/1/2020 15:30"
```

###### **By Date**


```bash
# Syntax: git log --since="MM/DD/YYYY"

# since Sept. 1, 2020 
git log --since="9/1/2020"
```


###### **By Time (and date)**


```bash
# Syntax: git log --since="MM/DD/YYYY hh:mm:ss"

# since Sept. 1, 2020 at 7:00 PM
git log --since="9/1/2020 19:00:00"
```
  
</details>


### Log for a Date Range

<details>
  <summary>Log for a Date Range</summary>
  
```bash
# Use 'since' & 'until'
git log --since="8/29/2020" --until="9/3/2020"


# Use 'after' & 'before'
git log --after="8/31/2020" --before="9/2/2020"
```
  

</details>

---

# Pretty Print or Short Logs


### Print One-Line Commit Log

<details>
  <summary>Print One-Line Commit Message</summary>

```bash
git log --oneline --graph
```

</details>


### Short Log

<details>
  <summary>Concise Log Output</summary>



```bash
git shortlog
```

</details>


---

---

# Search Git Log


### Log Specific Lines from a File

<details>
  <summary>Log Specific Lines</summary>

- ```git log -u -L <start>,<end>:<path-to-file>```


```bash
# Syntax: git log -u -L <starting-line>,<ending-line>:<path-to-file>

# Example:
git log -u -L 133,250:src/components/shared/CustomDropdown.js
```

</details>




#### Search Git Log for a String (grep)

<details>
  <summary>Search for a String</summary>
  
```
git log --all --grep="some string here"
```

</details>


---
---

# Show Recent Branches

## Show Last 10 Branches

<details>
  <summary>Show last 10 branches worked on</summary>
  
```bash
git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format="%(refname:short)"
```
  
</details>


---
---

# Formatting

<details>
  <summary>Prepare Message for Email</summary>

### Prepare a Message for Email Submission
The ```git format-patch <commit_id>``` command will create a file with a history of any commit with the applied changes mapped out with "before" and "after" snapshots of the code and the changes. It's typically used to be sent via email as a changelog.
```bash
# get a log patch of where the branch is currently pointing (HEAD)

git format-patch -1 HEAD

# get a log patch of a specific commit

git format-patch -1 <commit_id>

```

</details>

