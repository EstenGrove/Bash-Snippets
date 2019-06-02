# Processes and Other Scripts


### Memory Hogs 
- Processes that are using lots of memory
```bash
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
```
### CPU Hogs
- Processes that are using lots of CPU.

```bash
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
```

### Continous "top" Command
- Will run the following ```top``` every ten seconds to check the CPU hogs.
```bash
alias topForever='top -l 9999999 -s 10 -o cpu'
```

##### Recommended/Alternative ```top``` Method
- This method is the less expensive(ie resource intensive) method.
```bash
 alias ttop="top -R -F -s 10 -o rsize"
 ```
