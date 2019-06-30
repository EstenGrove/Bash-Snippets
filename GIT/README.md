# Git Commands, Snippets and Descriptions
For a quick set of guides and glossaries: ``` git help -g ```

## Config & Setup

### Git Config
Git Config will configure your username, email and other credentials that will be automatically set when you create a new git repo.
```bash
# First list all current settings
git config --list --show-origin 
# Or you can run: git config --list

# Set Global Username
git config --global user.name "Esten Grove"

# Set Global Email
git config --global user.email "123@gmail.com"

# Set Global Core Editor: you must specify the full path to any non CLI based editors like VS Code or Atom
git config --global core.editor <nano|code|vim>
```

### Create a Repo
```bash
# initialize repo
git init

# add files to be tracked
git add . 
# or you can use: git add -A  |  also you can check what you've made changes to with: git add -p

# add to staging w/ a comment about what's being commited
git commit -m "Init repo. Added README.md"

# Add origin
git remote add origin "https://github.com/EstenGrove/Bash-Snippets"

# Push to repo and set upstream
git push -u origin master
```


------------------------


# Working with Branches

### Create a Branch
```bash
# the following will create a branch named features
git branch "features"

# change to the new branch
git checkout features
```

### Track Upstream Branch
```bash
git push -u origin/<my_branch>

# List all branches and their upstreams
git branch -vv
```


### Jump Back to the Last Branch
```bash
git checkout -
```

### Pushing Changes
```bash
# add tracking for any new files
git add -A

# commit to staging and add comment
git commit -m "Some comment here..."

# push to branch
git push origin <branch>

####### Alternate Method
####### You can use the interactive CLI
git commit --interactive

# *** Commands ***
#   1: status       2: update       3: revert       4: add untracked
#   5: patch        6: diff         7: quit         8: help
#  What now>

```

### Fetch Latest Changes
```bash
# First fetch any changes and stage them locally
git fetch

# Then pull them down into the local repo and sync them. You can also specify pulling froma particular branch
git pull 
# OR
git pull <upstream> <branch>

# Example: git pull origin features
```

### Merge Branches
First you need to change into the branch that you want to merge *into*. 
- If you want to add the changes in a "features" branch to the "master" branch, you would first change to the "master" branch and merge "features" *into* the "master" branch.
```
# first change to the branch you want to merge changes *into*
git checkout master

# then run merge of the branch you want to pull changes from
git merge features
```

### Show Latest Branches
Can be helpful when using BugIDs for branch names.
- The following will loop all your latest branches and display them with their names and most recent commits
```bash
git latest = for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'
```

### Remove Local Branches that Were Removed from Remote(GitHub)
```bash
# to see what will be deleted before actually deleting them
git remote prune origin --dry-run

# to actually make the changes and remove the branch
git remote update --prune
```

### Deleting Branches
- Delete local branch
```bash
git branch -d <local_branch>
```
- Delete remote branch
```bash
git push origin --delete <remote_branch>
```

### Sync with Remote and Overwrite Local Changes
```bash
git fetch origin && git reset --hard origin/master && git clean -f -d
```

### List All Branches That Have Been Merged Into Master
```bash
git branch --merged master
```

### Save Changes to Commit Later (git stash)
- This is helpful when you need to pull the latest changes but you don't want it to overwrite your own
```bash
git stash
```

------------------------


# Working with Changes & Statuses

### Check What Files Were Changed/Modified in a Commit
-First you need to commit ID
```bash
# this will show the last commits in a graphical tree format
git log --graph

# then when you find the commit that you want more details on, copy the commit ID/ref and run
git show <commit_id>
```

### Show a Log of Changes to a Repo's ```HEAD```
```bash
git reflog

### OUTPUT ###
# e95e7c7 (HEAD -> master, origin/master) HEAD@{0}: commit: Resynced repo.
# f05d8ec HEAD@{1}: commit: Fixed sidenav 'overlay' bug.
# c570d99 HEAD@{2}: commit: Added: AfternoonPage component w/ working form. Starting to implement Context to enable 'completion summaries'.
# e977e39 HEAD@{3}: pull: Fast-forward

```

### Check Who Made Changes & When (Git Blame)
```bash
git blame <my_file>

### OUTPUT ###
#e95e7c73 (EstenGrove 2019-06-26 08:51:59 -0700  1) This is to be the first-form prototype. A version 1 demo that will be presented Friday June 28th.
#^1bbef14 (EstenGrove 2019-06-17 07:09:37 -0700  2)
#00bda746 (EstenGrove 2019-06-21 11:20:41 -0700  3)

```
### Checking Changes and Status and General Information
```bash
# this will print a commit history w/ comments, ID and a visual graph of commits
git log --graph

# to get a more colorized output of the last 5 commits
git log -5 --pretty --oneline

###### OUTPUT #######
#5377a90 (HEAD -> master, origin/master, origin/HEAD) Updated comments and docs. Pushed new items.
#506cb39 Added: useWasTouched, useWasHovered. Added comments to various components for clarity.
#9f3d5b8 Fixed incorrect file name
#1c7d24d Added 'utilites': useDebounce, usePrevious, useStringGenerator, useSlicer. Added comments and made minor improvements to hooks
#c39f8c2 Added new fields to log tables

# get a quick log of contributors and see commits per person
git shortlog -sn

# to get a detailed, colorized log output of changes. Helpful to create an alias for this
git log --all --graph --decorate --oneline --simplify-by-decoration


# check how many lines of code you're written today
git diff --shortstat "@{0 day ago}"
```

### Undo a Commit By Creating a New Commit
```bash
git revert <commit-ish>
```


-----------------------

# Fixing Changes, Branches and Other
- ```git reset```, ```git revert```
  - ```git revert``` can ONLY be used at the commit level.
  - ```git reset``` can be used on commits AND individual files.

#### Git Reset
Fixes issues when you commit changes that are NOT complete. Resets your index to the latest commit.
- It allows you to "point" a branch at another branch. For instance, if you want to point your master branch to a branch called "C" you could run: ```git reset C``` while the master branch is checked out.

##### Discard Staged and Unstaged Changes Since the Last Commit
```bash
git reset --hard HEAD
```

#### Discard LOCAL Unstaged Changes Since the Last Commit
- This is best for local only changes
```bash
git checkout <commit_id>
```
#### Git Revert
- This will undo the effects of changes in my last commit.
```bash
git revert <commit_id>
```
#### Delete Untracked Files From Local Directory
- ```-n``` is to do a "dry-run". It won't delete anything, only show what will be deleted.
- ```-f``` is to actually delete the files.
- ```-d``` is to remove the untracked directories.
  - This will NOT effect files and folders entered in .gitignore
```bash
git clean -n
```
#### Alternate Method for Deleting Changes

```bash
# first run git status to find the commit you want to reset to
git status

# soft reset
git reset --soft HEAD@{1}

# hard reset - this will throw away any uncommitted changes BEWARE
git reset --hard HEAD <commit-ID>

# example: git reset --hard HEAD f1d2325
```

### Uncommit Everything, But Still Save the Changes (Soft-Reset)
```bash
git reset --soft HEAD~3
```

### Review Every Change You've Made
```bash
git reflog
```

### Stash Changes for Later
```bash
git stash

# to retrieve the changes that were stashed
git stash apply
# OR to retrieve your stashed changes AND remove the stash from the stash "array"
git stash pop
```

### Change/Rewrite Last Commit
This command allows you to change: commit comments, comment content by adding or removing files
```bash
git commit --amend
```

### Cherry Picking
Cherry Picking allows you to pick a commit from one branch and apply it to another branch
- useful when accidentally commiting to the wrong branch
```bash
git cherry-pick <commit_reference>

#### USAGE ####
# first get a commit reference
git log
# then use that reference to run the cherry pick command
git cherry-pick <commit_reference>
# then change to branch you want to apply the mistaken commit *to*
git checkout <branch>
# then execute the command with the desired branch that the mistaken commit was applied *to*
git cherr-pick <branch_name>
```


### Search Commit History for Keyword
Will search commits for a keyword and display any matching commits
```bash
git log -S <keyword>

# Example: git log -S puppy
```

### Git Rebase
Rebasing is the more DANGEROUS alternative to ```git merge```, but it's sometimes necessary. You can pick and choose which commits you want to squash, reword, edit or fixup.
- rebasing works just like a destructive merge. You change to the branch that you wnat to apply changes *to*. Then rebase *into* it
```bash
git rebase -i <branch>

###### EXAMPLE USAGE ######
# to overwrite a master branch with changes from a features branch
# first change to the branch you 
git checkout master
git rebase -i features
# the above will destructively merge changes from features into master
```

