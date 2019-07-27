# System Info
Get metrics and data relating to the OS, user logs, history and other system-specific areas.

## Check Login History
```bash
last

# check the 20 most recent logins

last -20
```

## Hardware Info
Various commands for checking info about the computer's hardware

#### Check Memory-Swap Usage
```bash
sysctl vm.swapusage
```

#### Check Number of CPU Cores
```bash
sysctl -n hw.ncpu 
```
#### Check Computer's Load Average
```bash
sysctl vm.loadavg 
```

------------

## Environment

#### Print Environment Variables
```bash
printenv

## OUTPUT ##
# TMPDIR=/var/folders/...
# SHELL=/bin/bash
# USER=some_username
# HOME=/Users/some_username
```
