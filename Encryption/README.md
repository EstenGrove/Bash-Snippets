# Collection of Encryption-Related Scripts and Commands


## Generate Public Key *from* Private Key
```bash
ssh-keygen -y -f privatekey.pem > publickey.pem
```

## Random 32-Character Password Generator using ```OPENSSL```
```bash
openssl rand -base64 32
```
