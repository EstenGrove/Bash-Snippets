
# Formats the terminal prompt, shows: <user>@~/WorkingDirectory [git-branch]$ type command here...
export PATH=$PATH:/Users/stevengore/bin

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\[\033[32m\]\w\[\033[33m\] \$(git_branch)\[\033[00m\]\$ " 



# ALIASES

# Navigating Folders
alias P1='cd /Users/stevengore/Desktop/WebDevelopment/Projects'
alias P2='cd /Users/stevengore/Documents/Projects2'
alias Docs='cd /Users/stevengore/Documents'
alias ALA='cd /Users/stevengore/Documents/AL-Advantage/ALAdvantageGit'
alias LEARN='cd /Users/stevengore/Documents/LEARNING'
alias REACT='cd /Users/stevengore/Documents/AL-Advantage/ALAdvantageGit/ALAApps/common/reusables/js/React'

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'


# HELPER ALIASES
alias c='clear'
alias ls='ls -1a'
alias ll='ls -laG'


# NETWORKING AND RESOURCE-RELATED ALIASES

alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"        # flush dns cache

alias myip='curl https://ipinfo.io/ip'                                               # get public IP

alias netCons='lsof -i'                                                              # show all open TCP/IP sockets

alias memHogs='top -l 1 -o rsize | head -20'                                         # Get the memory hogging processes (ie. most memory-intensive processes)

alias openPorts='sudo lsof -i | grep LISTEN'                                         # Get all LISTENING ports

alias showBlocked='sudo ipfw list'                                                   # Show all ipfw blocked/blacklisted IPs





# Change/Edit the .bash_profile
alias BASH='nano .bash_profile'



######### FUNCTIONS #########


# Git Add, Commit, Push
acp ()
{
        git add -A;git commit -m "$1";git push
}

# Git Fetch, and Pull - get the latest
gfp () {
        git fetch; git pull
}
stevengore@~ $ cat .bash_profile 

# Formats the terminal prompt, shows: <user>@~/WorkingDirectory [git-branch]$ type command here...
export PATH=$PATH:/Users/stevengore/bin

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\[\033[32m\]\w\[\033[33m\] \$(git_branch)\[\033[00m\]\$ " 



# ALIASES

# Navigating Folders
alias P1='cd /Users/stevengore/Desktop/WebDevelopment/Projects'
alias P2='cd /Users/stevengore/Documents/Projects2'
alias Docs='cd /Users/stevengore/Documents'
alias ALA='cd /Users/stevengore/Documents/AL-Advantage/ALAdvantageGit'
alias LEARN='cd /Users/stevengore/Documents/LEARNING'
alias REACT='cd /Users/stevengore/Documents/AL-Advantage/ALAdvantageGit/ALAApps/common/reusables/js/React'

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'


# HELPER ALIASES
alias c='clear'
alias ls='ls -1a'
alias ll='ls -laG'


# NETWORKING AND RESOURCE-RELATED ALIASES

alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"        # flush dns cache

alias myip='curl https://ipinfo.io/ip'                                               # get public IP

alias netCons='lsof -i'                                                              # show all open TCP/IP sockets

alias memHogs='top -l 1 -o rsize | head -20'                                         # Get the memory hogging processes (ie. most memory-intensive processes)

alias openPorts='sudo lsof -i | grep LISTEN'                                         # Get all LISTENING ports

alias showBlocked='sudo ipfw list'                                                   # Show all ipfw blocked/blacklisted IPs





# Change/Edit the .bash_profile
alias BASH='nano .bash_profile'



######### FUNCTIONS #########


# Git Add, Commit, Push
acp ()
{
        git add -A;git commit -m "$1";git push
}

# Git Fetch, and Pull - get the latest
gfp () {
        git fetch; git pull
}
