# Useful Custom Aliases

## Navigation Aliases

#### Go Back Mulitple Levels
```bash
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
```


## Helper Aliases
```bash
# HELPER ALIASES  

alias c='clear'                     # clear console
alias ls='ls -1a'                   # long list a concise output
alias ll='ls -laG'                  # long list w/ colorized output
alias BASH='nano .bash_profile'     # Change/Edit the .bash_profile
```


## Networking Aliases
```bash
# NETWORKING AND RESOURCE-RELATED ALIASES

alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"        # flush dns cache

alias myip='curl https://ipinfo.io/ip'                                               # get public IP

alias netCons='lsof -i'                                                              # show all open TCP/IP sockets

alias memHogs='top -l 1 -o rsize | head -20'                                         # Get the memory hogging processes (ie. most memory-intensive processes)

alias openPorts='sudo lsof -i | grep LISTEN'                                         # Get all LISTENING ports

alias showBlocked='sudo ipfw list'                                                   # Show all ipfw blocked/blacklisted IP
```
