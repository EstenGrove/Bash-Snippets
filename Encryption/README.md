# Collection of Encryption-Related Scripts and Commands


## Generate Public Key *from* Private Key
```bash
ssh-keygen -y -f privatekey.pem > publickey.pem
```

## Random 32-Character Password Generator using ```OPENSSL```
```bash
openssl rand -base64 32
```

----------------


# *For MAC* You Can use ```PWGEN```
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

# *For Windows* You can Use ```OPENSSL```
```bash
# generate 20-character random password

openssl rand –base64 20
```
