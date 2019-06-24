# Git Commands, Snippets and Descriptions

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
# or you can use: git add -A 

# add to staging w/ a comment about what's being commited
git commit -m "Init repo. Added README.md"

# Add origin
git remote add origin "https://github.com/EstenGrove/Bash-Snippets"

# Push to repo and set upstream
git push -u origin master
```

### Fetch Latest Changes
```bash
# First fetch any changes and stage them locally
git fetch

# Then pull them down into the local repo and sync them. You can also specify pulling froma particular branch
git pull 
```

### Create a Branch
```bash
# the following will create a branch named features
git branch "features"

# change to the new branch
git checkout features
```

### Save Changes to Commit Later
- This is helpful when you need to pull the latest changes but you don't want it to overwrite your own
```bash
git stash
```

### Merge Branches
First you need to change into the branch that you want to merge *into*. 
- If you want to add the changes in a "features" branch to the "master" branch, you would first change to the "master" branch and merge "features" *into* the "master" branch.
```
