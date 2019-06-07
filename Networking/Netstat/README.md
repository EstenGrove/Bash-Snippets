# Netstat
A collection of ```netstat``` commands

## Check For Listening Ports
```bash
# most useful w/ clean and clear output of ports, active connections TCP/IP and UDP
netstat -a

netstat -tuplen

# check all TCP ports
netstat -at

# list stats for all ports
netstat -s
```
- for windows using ```cmd``` you can run ```ipconfig /all```

## Check For Connections to Specific Ports
```bash
# get count of active connections for port 80
netstat -nt | grep :80 | wc -l

# check port 443(SSL) port for secured connections - get count
netstat -nt | grep :443 | wc -l
```

## Count the Number of Active IP Connections (useful server-side)
```bash
netstat -ntu | print '{print$5}' | cut -d: f1 | sort | uniq -c | sort -rn
```


## Advanced ```NETSTAT```


#### __Count the Number of Connections Per IP__
- this will count the number of connections per IP and sort them from greatest to fewest connections
```bash
netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

# a more readable options of sorting active IP connections count
netstat -ntu | grep ESTAB | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr

# count IP connections thru TCP/IP
netstat -anp |grep 'tcp\|udp' | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n
```
