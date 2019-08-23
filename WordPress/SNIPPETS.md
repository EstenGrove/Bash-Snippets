# ```WP-CLI``` Snippets, Commands and Aliases

### Download & install WordPress
```bash
DLWP(){
  wp core download;
  wp core install --url="$1"  --admin_name="$2" --admin_password="$3" --admin_email="$4"
}

## EXAMPLE USAGE:
# Command => "domain" => "admin username" => "password" => "email"

DLWP "https://mydomain.com" "myadmin" "P@ssw0rd1234" "myemail@gmail.com"
```


### Set DB Credentials in ```wp-config.php```

```bash
SETDB(){
  wp config create --dbname="$1" --dbuser="$2" --dbpass="$3"
}
```
### Deactivate a Single Plugin
```bash
DP(){
  wp plugin deactivate "$1"
}

# EXAMPLE: deactivates the 'bbpress' plugin

DP "bbpress"
```

### Deactivate ALL Plugins
```bash
DAP(){
  wp plugin deactivate --all
}
```
