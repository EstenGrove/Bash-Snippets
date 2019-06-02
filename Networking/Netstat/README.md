# Netstat
A collection of ```netstat``` commands

## Check For Listening Ports
```bash
netstat -tuplen

# check all TCP ports
netstat -at

# list stats for all ports
netstat -s
```

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
