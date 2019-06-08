# Collection of Encryption-Related Scripts and Commands



---------------------

# __SSL__


#### Check SSL Expiry
```bash
echo | openssl s_client -showcerts -servername google.com -connect gnupg.org:443 2>/dev/null | openssl x509 -inform pem -noout -text
```

#### Generate Public Key *from* Private Key
```bash
ssh-keygen -y -f privatekey.pem > publickey.pem
```

#### Generate a Self-Signed Certificate
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
