# Ubuntu v18.04 Bionic Beaver

## Quick Access

- [Install NodeJS](#install-nodejs--specific-versions)
- [Run Server Update(apt-get)](#run-update-on-file--system)
- [Upgrade NodeJS Version](#upgrade-nodejs-version)


---

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


---

# Nginx Comment

```bash
# Stop server
sudo systemctl stop nginx

# Start server
sudo systemctl start nginx

# Stop, then start
sudo systemctl restart nginx

# Reload, used for config changes
sudo systemctl reload nginx

```


---

# Apache2 Commands

## Reboot 
```bash
# Stop & restart
sudo systemctl restart apache2

# Reload
sudo systemctl reboot

# Stop 
sudo systemctl stop apache2

# Start
sudo systemctl start apache2

# Re-enable service on startup
sudo systemctl enable apache2



# Use Older Method: the "-r" flag tells Ubuntu to reboot
sudo shutdown -r

# Shutdown & Reboot after 5 minutes
sudo shutdown -r +5
```

## Cancel Scheduled Shutdown/Reboot

```bash
sudo shutdown -c "Canceling scheduled reboot"
```


---

## Upgrade NodeJS Version

**Available Node Versions (Debian/Ubuntu)**
[Available Versions](https://github.com/nodesource/distributions)

```bash
# 1st: Download target version from source
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh

# 2nd: Run the package setup script
sudo bash nodesource_setup.sh

# 3rd: Upgrade apt-get deps
sudo apt-get upgrade

# 4th: Install new NodeJS & NPM versions
sudo apt-get -y install nodejs

# Confirm desired versions
node -v
npm -v
```















