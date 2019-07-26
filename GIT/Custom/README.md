# Git Aliases, Scripts and Functions

### Aliases

```bash
####### Git Aliases #######

# Show remote URL of origin
alias gsr='git remote show origin'

# Succinct status log
alias gs='git status'

# Show commit history in a graph form with commitID, date, Author and comments
alias glg='git log --graph'

# Pretty Pring git log with colors and summaries
alias gld='git log --all --graph --decorate --oneline --simplify-by-decoration'

# Provides detailed summary of git log w/ list of files modified
alias gls='git log --stat'

# Provides CONCISE Output w/ Comments and CommitID ONLY
alias glp='git log --pretty=format:"%h : %s" --graph' 
```

### Functions


```bash
# Auto Push/Commit Script: Git Add, Commit, Push
acp () {
        if [[ -z "$2" ]]; then
                git add -A;git commit -m "$1";git push origin master
        else
                git add -A;git commit -m "$1";git push origin "$2"
        fi
}
# To run the above command: acp "Some comment here..."

# Auto Fetch and Pull From Remote - Get Latest
gfp () {
        git fetch; git pull
}
# To run the above command: gfp


# Pretty Print a Log of the last x commits
glog(){
        git log -"$1" --pretty --oneline
}
# Example Usage: plog "10" - will show that last 10 commits



# Git checkout branch - change branch
cb() {
        git checkout "$1"
}

# Check what changed since x amount of time
gwc(){
        git whatchanged --since="$1"
}
## Example: gwc "2 weeks ago"

```
