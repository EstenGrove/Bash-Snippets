# Git Commands, Snippets and Descriptions
For a quick set of guides and glossaries: ``` git help -g ```

## **Quick Access**


- [Branches: Creating, Merging Etc.](#working-with-branches)
    - [Create a "feature" branch](#create-feature-branch--clone-master-into-it)
    - [Compare Differences Between Branches](#compare-differences-between-branches)
        - Compares the `HEAD` of both branches being diffed.
- [Common Aliases, Scripts](#common-aliases-scripts)
    - [Aliases](#aliases)
    - [Scripts](#scripts)
- [Viewing Changes](#viewing-changes)
    - [Viewing Staged/Unstaged Changes](#viewing-staged--unstaged-changes-before-committing)
    - [Viewing Staged ONLY (ie current commit)](#viewing-current-commit-changes)
- [Fixing changes](#fixing-changes-deleting-reverting-discarding-stashing)
    - [Git Reset](#git-reset)
    - [Discard Changes](#discard-changes)
- [Fixing Broken Refs](#fixing-broken-refs)


[TOP](#git-commands-snippets-and-descriptions)
[BOTTOM](#bottom)

------------------------------------------------------------------------------------------------------------------------

## Working with Branches
- [Create a branch](#create-a-branch)
- [Track upstream branch](#track-upstream-branch)
- [Get ONLY Remote branches](#get-only-remote-branches)
- [Clone ONLY a specific branch from a git repo](#clone-only-a-specific-branch-from-a-repo)
- [Merging][#merging)
    - [Merge branches](#merge-branches)
        - First change to the branch you want to *apply* changes *to*. Then merge the branch with changes into the current branch.
    - [Apply changes on "master" to another branch](#push-changes-on-master-to-feature-branch)


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
### Get ONLY Remote Branches
```bash
git branch -r
```

### Jump Back to the Last Branch
```bash
git checkout -
```

### Clone ONLY a Specific Branch from a Repo
```bash
git clone --single-branch --branch <branchname> <remote-repo>

# USAGE EXAMPLE: be sure to grab the clone URL

git clone --single-branch --branch features https://github.com/EstenGrove/MyRepo.git

# ALT USAGE EXAMPLE
# Pseudo Code: git clone -b <branch_name> --single-branch <repo_url>

git clone -b features_branch --single-branch https://github.com/EstenGrove/MyRepo.git
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

## Merging

### Merge Branches
First you need to change into the branch that you want to merge *into*. 
- If you want to add the changes in a "features" branch to the "master" branch, you would first change to the "master" branch and merge "features" *into* the "master" branch.
```
# first change to the branch you want to merge changes *into*
git checkout master

# then run merge of the branch you want to pull changes from
git merge features
```

### Push Changes On "master" to "feature" Branch
- The following command(s) is for applying changes found on "master" to another branch like a "feature" branch.

```bash
git checkout feature
git rebase master
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

# Also can leave a comment for discerning between "stashes"

git stash save "Some comment here..."
```

---

## Git Diff(ing)

### Compare Differences Between Branches
This will compare the tip of both branches (ie ```HEAD```. It shows ALL changes that exist in "branch2" that DO NOT exist in "branch1". This is perfect when working on a "feature" branch and checking master before a committing changes.

```bash
git diff branch1..branch2

# EXAMPLE USAGE:
git diff master..feature_adlschedule
```

**Compare Branches** 
You can also use triple dot syntax (ie ```git diff branch1...branch2```). This will compare the tip of the right("branch2") branch (ie ```HEAD```) with the common ancestor of the left("branch1") branch.

```bash
# This ONLY compares the tip of "branch2" with the 1st common ancestor in "branch1"
# YOU USUALLY WANT TO USE "double-dot" syntax: git diff branch1..branch2

git diff branch1...branch2
```

#### **Visual Examples**

![Git-Diff](https://user-images.githubusercontent.com/41505038/80240465-b7d7d800-8616-11ea-8d2c-0c48e58ef4a2.png)


[TOP](#git-commands-snippets-and-descriptions)

------------------------------------------------------------------------------------------------------------------------

## Viewing Changes


## Create "Feature" Branch & Clone Master Into It
The following command will create a new "feature" branch and clone the ```master``` branch's current state in to.

```bash
git checkout -b feature

# then push to remote (add -u for remote tracking)
git push origin feature

# then list all current branches
git branch -a
```

## Viewing "Staged" & "Unstaged" Changes *Before* Committing

```javascript
# show actual line changes
git diff HEAD

# show ONLY filenames
git diff --name-only HEAD
```

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

### See All Commits Made Since Forking From master
```bash
git log --no-merges --stat --reverse master..
```

### See Detailed Info of Commits
```bash
git log --stat
```
```
## OUTPUT ##
commit f54fe2e4256ea2f30bea6b7f0566e96e333d8079
Author: Esten <estengrove99@gmail.com>
Date:   Mon Jun 24 16:03:07 2019 -0700

    Fixed solobracket-issue

 src/components/CardContainer.js | 1 -
 1 file changed, 1 deletion(-)

commit 4a2e415abfd001db39485423a4f85aa34b4f008d
Author: Esten <estengrove99@gmail.com>
Date:   Mon Jun 24 14:09:32 2019 -0700

    Updated Readme.md w/ task completions.

 README.md                       | 17 ++++++++++-------
 src/components/CardContainer.js |  8 +++++---
 src/components/Nav.js           |  4 ++--
 3 files changed, 17 insertions(+), 12 deletions(-)
```

### Check Changes Since 2 Weeks Ago
```bash
# Method 1
git log --no-merges --raw --since='2 weeks ago'

# Method 2: simpler!!!
git whatchanged --since='2 weeks ago'
```


### Undo a Commit By Creating a New Commit
```bash
git revert <commit-ish>
```

[TOP](#git-commands-snippets-and-descriptions)

------------------------------------------------------------------------------------------------------------------------

## Common Aliases, Scripts

```bash
#
```



[TOP](#git-commands-snippets-and-descriptions)

------------------------------------------------------------------------------------------------------------------------



# Fixing Changes: Deleting, Reverting, Discarding, Stashing 

#### **Git Reset, Git Revert Etc**
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

### Stash Changes for Later (git stash)
```bash
git stash

# to retrieve the changes that were stashed
git stash apply
# OR to retrieve & apply your stashed changes AND remove the stash from the stash "array"
git stash pop
```

### List ALL Saved Stashes
```bash
git stash list
```

###

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

[TOP](#git-commands-snippets-and-descriptions)

## Bottom

---

## Fixing Broken Refs
Sometimes a branch's ```ref``` or ```HEAD``` get's "broken" and it no longer able to be accessed, read from, or updated.

**Common Broken Ref Error Message**

```bash
# sometimes this is the message
warning: ignoring ref with broken name refs/heads/js 2

# or this
fatal: missing object 69b76b88831327819fd7be5f63fa048a3e8d21e1 for refs/heads/react
```

**To solve this:**

```bash
# 1st run the following to check the branches in a repo 
git branch -a

# 2nd run the following, IF...IF there's an issue with one of the ref
git update-ref -d <path-to-branch-ref>

# EXAMPLE USAGE:
git update-ref -d 'refs/remotes/origin/react'
```



