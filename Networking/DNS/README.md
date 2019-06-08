# DNS Commands & Lookups
- NOTE: some commands may require different packages, however their "non-dependent" alternative will be included along with the command.

## ```WHOIS``` Filtered For *Only* the Important Information
```bash
whois commandlinefu.com | grep -E '^\s{3}'

# Domain Name: COMMANDLINEFU.COM
# Registry Domain ID: 1538321113_DOMAIN_COM-VRSN
# Registrar WHOIS Server: whois.registrar.amazon.com
# Registrar URL: http://registrar.amazon.com
# Updated Date: 2018-05-09T13:10:05Z
# Creation Date: 2009-01-20T13:39:29Z
# Registry Expiry Date: 2020-01-20T13:39:29Z
# Registrar: Amazon Registrar, Inc.
# Registrar IANA ID: 468
# Registrar Abuse Contact Email:
# Registrar Abuse Contact Phone:
# Domain Status: clientTransferProhibited https://icann.org/epp#clientTransferProhibited
# Name Server: NS-1317.AWSDNS-36.ORG
# Name Server: NS-2043.AWSDNS-63.CO.UK
# Name Server: NS-421.AWSDNS-52.COM
# Name Server: NS-858.AWSDNS-43.NET
# DNSSEC: unsigned
# URL of the ICANN Whois Inaccuracy Complaint Form: https://www.icann.org/wicf/
```

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

# Local Machine: Networking Commands

### Change Wifi Settings/Status on Your Machine
```bash
# turn of your wifi on your computer
sudo ifconfig en0 down

# restart wifi on your computer
sudo ifconfig en0 up
```
