# Setup SSH with or with Keys

### Generate SSH keys and Setup Alias for SSH
```bash
## GENERATE NEW SSH KEYS

# change to user root
cd ~

# change into .ssh directory
cd ./ssh

# List out current keys, if applicable
ll

# generate new keys
ssh-keygen -o

# type yes when prompted; then enter a name for the keys' file; then enter a password for the keys
```
- Then upload the public key to the server you'd like to connect to.
- Then to connect using the new key: ```ssh -i .ssh/<key_name> user@hostname -p<port_number>```
  - Example: ```ssh -i .ssh/id_rsa myuser@192.168.0.1 -p1234```
