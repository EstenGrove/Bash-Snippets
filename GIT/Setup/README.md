# Git Setup (ie config, repo creation etc)


## Config & Setup

### Check for "Admin Sesssion" (ie 'Run as Administrator')
```bash
# one-liner

if net session &> /dev/null;then echo "Admin!"; else echo "Not Admin!"; fi

# multi-line script
if
    net session &> /dev/null;
then
    echo "Admin!";
else 
    echo "Not Admin!";
fi
```

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


------------------------------------------------------------------------------------------------------------------------
