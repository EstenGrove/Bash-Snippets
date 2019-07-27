# Checking Memory
NOTE: many of these solutions are Mac ro Unix specific.

NOTE: some commands may be specific to Unix-based machines

## Check Available(free) Memory
```bash
free -m
```
- Alternative for Mac:
```bash
# show memory swap usage
sysctl vm.swapusage 

# show memory usage on mac
vm_stat   options include: vm_stat -c 20
```

## Check Load Average
```bash
sysctl vm.loadavg 
```

## Check the Number of CPU Cores
```bash
sysctl -n hw.ncpu 
```
