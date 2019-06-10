# Networking Related Bash Scripts

## ```PING``` Command
__Options__
- ```-s``` is used to test for packet loss; it will continually *send* packets to the host until you kill the request
- ```-t``` is used as a "keep-alive"; it will continue pinging until you kill it
- ```-4``` forces ping to use ```IPv4``` protocol 
- ```-6``` forces ping to use ```IPv6``` protocol
- ```-l``` is for setting the packet size in bytes


#### __```PING``` for Packet Loss__
- test for packet loss, network degradation
```bash
ping -s 1 <host_name>
```

#### __Continual ```PING``` Test__
- this will continue pinging a host until you kill it
```bash
ping -t <host_name>
```

#### __Set the Packet Size of Each Request__
The following command will send 1500 bytes in *each* packet
```bash
ping -l 1500 <host_name>
```

#### __Send Request w/ 1500 Bytes/request With a "Keep-Alive" Message__
The following will ping the host using 1500 bytes per packet and will keep pinging until you kill the request
```bash
ping -t -l 1500 <host_name>
```

----------------------



#### __Display List of Available Printers__
```bash
lpstat -p
```

