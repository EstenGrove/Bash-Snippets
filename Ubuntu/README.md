# Ubuntu v18.04 Bionic Beaver


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
