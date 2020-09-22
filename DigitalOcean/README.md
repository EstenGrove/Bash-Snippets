# Digital Ocean Docs & Commands

---

## Quick Access

- [Server Commands](#server-commands)
- [Nginx Config](#nginx-config)
- [File Permissions](#file-permissions)


---

## Server Commands

<details>
  <summary>Server Commands (restart, shutdown etc)</summary>


**Restart Nginx**
This is usually required after before config or server-related changes take effect.

```bash
# Restart Nginx
sudo service nginx restart

# Alternate method to restart nginx
nginx -s reload
```
</details>


---


## Nginx Config

<details>
  <summary>Update the Nginx Config</summary>
  

```bash
# Update which sites are publicly available
nano /etc/nginx/sites-available/default
```

**Test the Changes before Re-starting Nginx:**

```bash
sudo nginx -t
```
  
</details>

<details>
  <summary>Location of Config(s)</summary>
  
**Location of Nginx Configs**
NOTE: the `default` files are literally the default configs. It's best NOT to modify them, but rather clone them, then make changes to the cloned copy.

- `/etc/nginx/sites-enabled/default`: handles which sites (ie domains) are enabled in nginx.
- `/etc/nginx/sites-available/default`: handles which sites (ie domains) are publicly accessible in nginx.

  
  
</details>

---

## File Permissions

<details>
  <summary>Updating File Permissions</summary>
  
**Change Files Permissions to: Read, Write**

```bash
# 755 makes public to the user
sudo chmod -R 755
```

**Assign Permissions to Current User**

```bash
# Assigns public folder to current user's ownership
sudo chown -R $USER:$USER /var/www/example.com/html
```
  
</details>

---





















