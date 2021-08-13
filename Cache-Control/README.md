# Cache-Control and Cache Busting via NGINX Server Blocks


---

## Setting Cache-Control Headers & Expiry Headers in Config

<details>
  <summary>Cache-Control & Expiry Headers</summary>
  
[Useful Resource/Tutorial](https://www.digitalocean.com/community/tutorials/how-to-implement-browser-caching-with-nginx-s-header-module-on-ubuntu-20-04)
  
```bash
. . .
  
# Expires map: sets expiry(s) by asset type
map $sent_http_content_type $expires {
    default                    off;
    text/html                  epoch;
    text/css                   max;
    application/javascript     max;
    ~image/                    max;
    ~font/                     max;
}

server {
    listen 80 default_server;
    listen [::]:80 default_server;

    expires $expires;
. . .
  
```
  
  
  
</details>


















