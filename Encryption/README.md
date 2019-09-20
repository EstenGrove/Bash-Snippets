# Collection of Encryption-Related Scripts and Commands
[Here's a great link with details](https://support.ssl.com/Knowledgebase/Article/View/19/0/der-vs-crt-vs-cer-vs-pem-certificates-and-how-to-convert-them)


---------------------

# __SSL__

## View Encoded SSL Files (.pem, .p7b, .cer, .crt, .key)
```bash
openssl x509 -in <file.pem|.cer|.crt> -text -noout
```


## Check SSL Expiry
```bash
echo | openssl s_client -showcerts -servername google.com -connect gnupg.org:443 2>/dev/null | openssl x509 -inform pem -noout -text

# if an error occurs like: unable to load certificate
# then you're trying to load a DER encoded file
```

-----------------

## Generating Keys

### Generate Private Key
NOTE: you should usually SSH into your web server to run these commands, *HOWEVER*, they can be run from **local.**
```bash
openssl genrsa -out filename.key 2048
```

#### Generate Public Key *from* Private Key
```bash
ssh-keygen -y -f privatekey.pem > publickey.pem
```

## Generate a Certifcate-Signing-Request(CSR) w/ ```openssl```
- This will generate **both** the CSR and the private key. 
```bash
openssl req –new –newkey rsa:2048 –nodes –keyout MyPrivateKey.key –out MyCSR.csr

# Example Usage
openssl req –new –newkey rsa:2048 –nodes –keyout myprivate.key –out mycsr.csr
```


-----------

## Generate a Self-Signed Certificate
- useful for working on localhost
```bash
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout privateKey.key -out certificate.crt

# alternate & preferred method
openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj "/C=<Country Code>/ST=<State>/L=<City>/O=<Organization>/CN=<Common Name>" -keyout certificate.key -out certificate.crt
```



----------------

# __Password Generation__

#### Random 32-Character Password Generator using ```OPENSSL```
```bash
openssl rand -base64 32
```

#### *For MAC* You Can use ```PWGEN```
```bash
# first install the package
brew install pwgen

# then add the following to your .bash_profile or .bashrc
# this will generate a password of a "user-defined" length and copy it to clipboard

genpasswd() { 
  pwgen -Bs $1 1 |pbcopy |pbpaste; echo “Has been copied to clipboard”
}

# example: generate a 20 character password and copy to clipboard

genpasswd 20

```


##### *For Windows* You can Use ```OPENSSL```
```bash
# generate 20-character random password

openssl rand –base64 20
```
- OR you can install ```pwgen``` just like for Mac: ```sudo apt-get pwgen```
