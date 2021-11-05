# SSL: Working w/ SSL Certificates
This document details how to handle SSL certificates such as: generating private/public key pair, generate CSR, converting between different cert formats etc.

---

## Typical Server Config (NGINX and others)

```txt
[req]
distinguished_name = req_distinguished_name
req_extensions = v3_req
prompt = no
[req_distinguished_name]
C = US
ST = AZ
L = SCOTTSDALE
O = AL ADVANTAGE LLC.
OU = IT Dept.
CN = aladvantage.com
[v3_req]
keyUsage = keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names
[alt_names]
DNS.1 = www.aladvantage.com
DNS.2 = aladvantage.com
```

---


## Generate Public/Private Keys from Cert (.crt)
The below instructions are how to generate a CSR & Private Key based off a config file hosted on the target server.

The following command will generate:
- Certificate Signing Request (CSR): certificate.csr
- Private Key: certificate.key

```bash
openssl req -new -out certificate.csr -newkey rsa:2048 -nodes -sha256 -keyout certificate.key -config config.txt
```
