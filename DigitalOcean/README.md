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
```
</details>


---


## Nginx Config
Updating the Nginx Config 

<details>
  <summary>Update the Nginx Config</summary>
  
```bash
# do something here
```

**Test the Changes before Re-starting Nginx:**

```bash
sudo nginx -t
```
  
</details>

---

## File Permissions

<details>
  <summary>Updating File Permissions</summary>
  
```bash
# 755 makes public to the user
sudo chmod -R 755
```
  
</details>

---





















