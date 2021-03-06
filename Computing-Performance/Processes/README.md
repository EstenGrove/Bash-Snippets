# Processes and Other Scripts

## Git Bash Versions


#### Get a List of All Tasks
```bash
tasklist

# output

# Name            PID         Session #          Mem Usage
# Registry      17965          Services                 8k
# node.exe      12708          Services            32,540k

```

#### Kill a Process w/ Taskkill
- NOTE: ```taskkill``` requires ```//``` for declaring flags or options.
```bash
taskkill //F //PID <pid>

# example
taskkill //F //PID 99462
```


------------


## Checking Processes
```bash
# list all
ps -ax

# find a processes by a search query like: application name or PID
ps -ax | grep <search-param>

# show all processes w/ their system hierarchy
ps aux --forest

# show processes for a user
ps -u <username>

# count concurrent processes by name
ps aux | grep <proc-name/service> | wc -l 
            # OR
ps -A | grep <proc-name/service> | wc -l           

# print memory usage
cat /proc/meminfo
```

## Checking Processes w/ ```top```
```bash
# check all current processes using top
top -c  
           # OR for unix
top -a          

# check all processes for a user - if no user is defined will check current user's processes
top -u

# filter results by cpu, mem, time and any available param filter using $
top $cpu
top $mem
top $time
```
- Alternatives for Mac
```bash
# check your computer's load average
sysctl vm.loadavg 

# show the number of cores in your computer
sysctl -n hw.ncpu 

# show memory usage with a count of 20 lines
vm_stat   options include: vm_stat -c 20

```
## Kill a Process
```bash
# kill process by ID
kill <process-ID>

## Usage Example: kills ProcessID(PID) 8136
kill -9 8136

# kill all processes
killall

# kill all processes by name: like all chrome processes
killall chrome
```
