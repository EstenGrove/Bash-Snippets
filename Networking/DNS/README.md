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
nslookup <domain>
           # OR
nslookup <dns-record> <domain>

# examples
nslookup google.com      # get the A record      (host)
nslookup -query
