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

## Aliases
```bash
################# WordPress Alias ##################

# Flush the WordPress cache
alias WFC='wp cache flush'

# Purge the Varnish cache
alias WPC='wp vcaching purge --allow-root'

# Open wp-admin in browser
alias ADMIN='wp admin'

# List user abilities
alias WCL='wp cap list'

# Check for WordPress updates
alias CU='wp core check-update'

# Updates WordPress Core
alias WP_UPDATE='wp core update'

# Verifies WP files against checksums - good for malware checking
alias CHECKSUM='wp core verify-checksums'

# Prints the WP Version
alias WPV='wp core version'



##### WP-CONFIG.PHP COMMANDS #####

# Create wp-config.php
alias GENCONF='wp config create'


# Delete wp-config.php
alias DELCONF='wp config delete'


# Edit wp-config.php
alias ECONF='wp config edit'


## Get wp-config.php values

alias GPCONF='wp config get table_prefix --color'
```


### Set DB Credentials in ```wp-config.php```

```bash
SETDB(){
  wp config create --dbname="$1" --dbuser="$2" --dbpass="$3"
}
```

---------------------

# Themes

#### Get Theme Status
```bash
STHEME(){
  wp theme status "$1"
}

# Get status of ALL themes
THEMES(){
  wp theme status
}

# Activate a theme
ATHEME(){
  wp theme activate "$1"
}
```






--------------------

# Plugins

#### List all Plugins
```bash
wp plugin list
```
#### Check if Plugin is Installed
```bash
wp plugin is-installed <plugin>

### Function Snippet ###
ISINST(){
  wp plugin is-installed "$1"
}
```

#### Status of Plugins
```bash
wp plugin status
```

#### Activate a Plugin
```bash
AP(){
        wp plugin activate "$1"
}

# EXAMPLE USAGE: AP "bbpress"


# Install & Activate plugin w/ latest version
wp plugin install bbpress --activate
```

### Deactivate a Single Plugin
```bash
DP(){
  wp plugin deactivate "$1"
}

# EXAMPLE: DP "bbpress"

```

### Deactivate ALL Plugins
```bash
DAP(){
  wp plugin deactivate --all
}
```

### Database Actions
```bash
# Create a new database
wp db create

# Drop a database
wp db drop --yes

# Export a database to STDOUT(this will need to be written to a file)
wp db export

# EXAMPLE OF DB EXPORT SCRIPT
wp db export ./MY_BACKUPS/mydb.sql

# Repair the database
wp db repair

# Get DB size
wp db size

# List the tables in DB
wp db tables

```

### Using the ```WP-OPTIONS``` Command
```bash
# get the siteurl from the options table
wp option get siteurl
```




### Using ```WP MEDIA``` For Images, Video etc.
```bash
# regenerate thumbnails
wp media regenerate --yes

# list all image sizes
wp media image-size


# IMPORT IMAGES FROM LOCAL

# import a local image and set it to be the "featured image" of a post
wp media import ~/Downloads/image.png --post_id=123 --title="A downloaded picture" --featured_image
```

### Working w/ WP Cron Jobs
```bash
# Check active cron job events
wp cron event list
