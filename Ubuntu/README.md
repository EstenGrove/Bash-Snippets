# Ubuntu v18.04 Bionic Beaver


## Install NodeJS - Specific Version(s)

```bash
# Get the source for v14.0
curl -sL https://deb.nodesource.com/setup_14.0 | sudo -E bash -
# Install via apt-get
sudo apt-get install -y nodejs
```

## Run Update on File-System

```bash
sudo apt-get update
```


## List all Super Users

```bash
grep -Po '^sudo.+:\K.*$' /etc/group

#Output: administrator, newadmin
```

## Reboot 
```bash
sudo systemctl reboot

# Use Older Method: the "-r" flag tells Ubuntu to reboot
sudo shutdown -r

# Shutdown & Reboot after 5 minutes
sudo shutdown -r +5
```

## Cancel Scheduled Shutdown/Reboot

```bash
sudo shutdown -c "Canceling scheduled reboot"
```
