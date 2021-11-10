# Ubuntu v18.04 Bionic Beaver

**NOTE: When deploying React apps to an Ubuntu server it is required that NGINX be used as the reverse proxy to enable using React Router as the router instead of the default Apache router system.**


---

## Quick Access

- [Install NodeJS](#install-nodejs---specific-versions)
- [Run Server Update(apt-get)](#run-update-on-file-system)
- [Upgrade NodeJS Version](#upgrade-nodejs-version)
- [NGINX Commands](#nginx-commands)
- [Apache2 Commands](#apache2-commands)
- [List ALL Super Users](#list-all-super-users)


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

# Nginx Commands

**Check Config:**

```bash
sudo nginx -t

## Then if config is ok, restart server block
sudo systemctl restart nginx
```

**System Start/Stop Commands:**

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


---

## Nginx Config w/ React Router

<details>
  <summary>Nginx Config</summary>

```bash
# Expires map - added 11/8/2021 at 8:29 AM
## Cache-Busting Expiry
map $sent_http_content_type $expires {
        default                    off;     # No cache for unknown file types
        text/html                  epoch;   # Explicit no caching for html files (means everything is fresh from server)
        text/css                   max;     # Caches css files for as long as possible in the browser
        application/javascript     max;     # Caches css files for as long as possible in the browser
        ~image/                    max;     # Caches css files for as long as possible in the browser
        ~font/                     max;     # Caches css files for as long as possible in the browser
}



server {

        root /var/www/portal.aladvantage.com/html;
        index index.html index.htm index.nginx-debian.html;

        server_name portal.aladvantage.com;

        # Expires declaration - added 11/8/2021 at 8:29 AM
        expires $expires;

        # Added 10/19/2021 at 9:34 AM
        ## Error page handling (works w/ React Router)
        error_page 404 /index.html;

        location / {
                try_files $uri $uri/ =404;
        }

    listen [::]:443 ssl; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/portal.aladvantage.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/portal.aladvantage.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}
server {
    if ($host = portal.aladvantage.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


        listen 80;
        listen [::]:80;

        server_name portal.aladvantage.com;
    return 404; # managed by Certbot


}
```

</details>










