# DNS Commands & Lookups
- NOTE: some commands may require different packages, however their "non-dependent" alternative will be included along with the command.

## ```DIG```

#### Perform a DNS Lookup 

- Using ```dig```
```bash
dig <domain> <dns-record>

# examples
dig google.com a     # get the A record    (host)
dig google.com mx    # get the MX record   (email)
dig google.com cname # get the CNAME       (alias for host)
dig google.com ns    # get the nameservers (authoritative nameservers)
dig google.com txt   # get the TXT record  (typically used for SPF/DKIM/DMARC records for email)
dig google.com soa   # get the SOA record  (holds info about the zone records, like parent domain etc)
```
- Using ```nslookup```
```bash
nslookup <domain>
           # OR
nslookup -type=<dns-record> <domain>

# examples
nslookup google.com                # get the A record      (host)
nslookup -type=mx google.com       # get the MX record     (email)
nslookup -type=cname google.com    # get the CNAME         (alias for host)
nslookup -type=ns google.com       # get the nameservers   (authoritative nameservers - control the zone files)
nslookup -type=txt google.com      # get the TXT record    (typically used for SPF/DKIM/DMARC records for email)
nslookup -type=soa google.com      # get the SOA record    (holds info about the zone records, like the parent domain etc)

nslookup -type=any google.com      # get all dns records  

```

## ```PING```
```ping``` is used to send a "message" of packet to a host and track the response. This is useful when tracking response times and checking if a server is up, or if DNS is having an issues etc.
```bash
ping <host/IP>

# examples
ping google.com
ping 74.221.83.182
```
