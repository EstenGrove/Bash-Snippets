


export PATH=$PATH:~/AppData/Local/hyper/app-3.0.2/resources/bin



git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\[\033[32m\]\w\[\033[33m\] \$(git_branch)\[\033[00m\]\$ " 




########################## GIT COMMANDS, ALIASES, SCRIPTS #############################

# Auto Push/Commit Script: Git Add, Commit, Push
acpb() {
    	if [[ -z "$2" ]]; then
      		git add -A;git commit;git push 
     	else
      		git add -A;git commit;git push 
	fi
}
# To run the above command: acp "Some comment here..."

# Auth Push/Commit Script w/ Branch
acp(){
	if [[ -n "$2" ]]; then
		git add -A; git commit; git push origin "$2"
	else 
		git add -A; git commit; git push
	fi 
}


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


alias glsd='git log --after "$date -d yesterday"'

####### Git Aliases #######

# Show remote URL of Repo
alias remote='git remote show origin'

# Succinct status log
alias gs='git status'

# Show commit history in a graph form with commitID, date, Author and comments
alias glg='git log --graph'

# Pretty Pring git log with colors and summaries
alias gld='git log --all --graph --decorate --oneline --simplify-by-decoration'

# Provides detailed summary of git log w/ list of files modified
alias gls='git log --stat'

# Provides VERY CONCISE output w/ comment and commit ID ONLY
alias glp='git log --pretty=format:"%h : %s" --graph'




##################### Custom File/Folder Navigation Aliases #######################

alias ld='ls -Fhla --color=auto'

# History
alias H='history'

alias c='clear'
# alias ls='ls -1a'

# Navigate Back
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ........='cd ../../../../../../../'


# Navigation of directories
alias NEW='cd ~/Documents/Development/NEW_PROJECTS'

alias MD='cd ~/Desktop/MEDIA/'

alias Docs='cd c:/Users/Steven/Documents/'

alias DK='cd c:/Users/Steven/Desktop'

alias ALA='cd c:/Users/Steven/Documents/Development/ALAdvantageGit/ALAApps'

# ALA TEST-PROJECTS Folder
alias T1='cd c:/Users/Steven/Documents/TEST-PROJECTS/ALA-TEST-APPS'

# ALA TEST-PLAYGROUND
alias T2='cd ~/Documents/TEST-PLAYGROUNDS/ALA-PLAYGROUND'

# Local/Personal Components Folder(s)
alias COMPS='cd c:/Users/Steven/Documents/REUSABLES'

# ALA Git Repo - Root
alias DEV='cd c:/Users/Steven/Documents/ALA/DEV'

# ALA New Dev Folder
alias NEWDEV='cd c:/Users/Steven/Documents/ALA/DEV/NEW-DEVELOPMENT'

# ALA Git Repo - React Directory
alias REACT='cd c:/Users/Steven/Documents/Development/ALAdvantageGit/ALAApps/common/reusables/js/React'

# ALA Git Repo - JS Directory
alias JS='cd c:/Users/Steven/Documents/Development/ALAdvantageGit/ALAApps/common/reusables/js'


# ALA TFS/VisualStudio Repo - ALA Solution and the AzureProject
alias  ALS='cd c:/Users/Public/AL\ Advantage/ALA\ Solution/AzureProject/'

# Clear Console
alias c='clear'


# Check the uptime of the computer, ie when it was last restarted
alias uptime='systeminfo | grep "Boot Time"'


# Build App Boiler plate (older version) - scaled down template
scaffold(){
	git clone https://github.com/EstenGrove/React-Boilerplate-v2.git . && echo "CLONED REPO...INSTALLING DEPS...";

	npm i
}
