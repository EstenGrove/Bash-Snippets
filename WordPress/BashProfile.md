# WordPress Bash Profile 
This is the WordPress bash profile currently in use on SiteGround.



## ```.bash_profile``` on SiteGround


```bash
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH


# Backup command to generate a *tar.gz file from a folder - KEEPS ORIGINAL
# EXAMPLE USAGE: zipit "zipped-file.tar.gz" "file-to-zip.txt"

zipit(){
        tar -zcvf  "$1" "$2"
}


################## ALIASES ##################

alias PUB='cd /home/aladvant/public_html'

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias ld='ls -Fhla --color=auto'

alias c='clear'

################# WordPress Alias ##################

# Download and Install WordPress
DLWPI(){
  wp core download;
  wp core install --url="$1"  --admin_name="$2" --admin_password="$3" --admin_email="$4"
}

DLWP(){
  wp core download
}

# ONLY Download Core WP
alias 

# Flush the WordPress cache
alias WFC='wp cache flush'

# Purge the Varnish cache
alias WPC='wp vcaching purge --allow-root'

# Open wp-admin in browser
alias ADMIN='wp admin'

# List user abilities
alias WCL='wp cap list'

# Check for WordPress updates
alias WPCU='wp core check-update'

# Updates WordPress Core
alias WP_UPDATE='wp core update'

# Verifies WP files against checksums - good for malware checking
alias WPCHECKSUM='wp core verify-checksums'

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


# List all wp-config.php values
alias CONF_LIST='wp config list'

# SET DB CREDENTIALS IN WP-CONFIG.PHP
setDB(){
        wp config create --dbname="$1" --dbuser="$2" --dbpass="$3"
}


######### THEMES ##########

# Install a theme and activate it
ITHEME(){
        wp theme install "$1" --activate
}


# Activate a theme
ATHEME(){
        wp theme activate "$1"
}

# Deactivate a theme
DTHEME(){
        wp theme deactivate "$1"
}

# Get status of theme
STHEME(){
        wp theme status "$1"
}

# Get Status of ALL Themes
THEMES(){
        wp theme status
}

######### Permalinks ##########

# Flush rewrite rules
alias FRW='wp rewrite flush'

# List permalink strucutre
alias RWLIST='wp rewrite list'



########### PLUGINS ############

# List plugins
alias LP='wp plugin list'

# Check plugins status
alias WPPS='wp plugin status'

# Check if plugin is installed
ISINST(){
        wp plugin is-installed "$1"
}

# Update plugin
PLUGUP(){
        wp plugin update "$1"
}

## Update ALL plugins
PLUGUPALL(){
        wp plugin update --al
}

# Install and Activate a plugin
ADD_PLUGIN(){
        wp plugin install "$1" --activate
}

# Activate Plugin
AP(){
        wp plugin activate "$1"
}

# Deactivate a plugin
DP(){
        wp plugin deactivate "$1"
}

# deactivate all plugins
DAP(){
        wp plugin deactivate --all
}

############### WP-OPTIONS TABLE #################

# Get the home & siteurl
HSURL(){
        wp option get home && wp option get siteurl;
}


#################### PROCESSES: CPU, MEM etc. ###########################

# Get the MEM Hogs from top
alias memHogsTOP='top -l 1 -o rsize | head -20'

# Get the MEM Hogs a Processes
alias memHogsPS='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

# Get the CPU Hogs as processes
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'


# Get the CPU Hogs, CONTINUOSLY: This will run every 10seconds. Less Intensive
alias ttop="top -R -F -s 10 -o rsize"

# Check the uptime of the computer, ie when it was last restarted
alias uptime='systeminfo | grep "Boot Time"'

```
