# Using the ```WP-CLI```


## Common Commands in ```WP-CLI```

#### Handling Plugins from ```WP-CLI```
```bash
# Install & activate plugin
wp install plugin <plugin_name> --activate

# Example
wp install plugin bbpress --activate

# Deactivate Plugin
wp plugin deactivate <plugin>

# Deactivate ALL Plugins
wp plugin deactivate --all
```




----------------------


## Command	Index & Description

**wp admin** -	
Open /wp-admin/ in a browser.

**wp cache** -	
Adds, removes, fetches, and flushes the WP Object Cache object.

**wp cap** -	
Adds, removes, and lists capabilities of a user role.

**wp cli** -	
Review current WP-CLI info, check for updates, or see defined aliases.

**wp comment**	-
Creates, updates, deletes, and moderates comments.

**wp config**	-
Generates and reads the wp-config.php file.

**wp core**	-
Downloads, installs, updates, and manages a WordPress installation.

**wp cron**	-
Tests, runs, and deletes WP-Cron events; manages WP-Cron schedules.

**wp db**	-
Performs basic database operations using credentials stored in wp-config.php.

**wp dist-archive**	-
Create a distribution archive based on a project’s .distignore file.

**wp embed**	-
Inspects oEmbed providers, clears embed cache, and more.

**wp eval**	-
Executes arbitrary PHP code.

**wp eval-file**	-
Loads and executes a PHP file.

**wp export**	-
Exports WordPress content to a WXR file.

**wp find**	-
Find WordPress installations on the filesystem.

**wp help**	-
Get help on WP-CLI, or on a specific command.

**wp i18n**	-
Provides internationalization tools for WordPress projects.

**wp import**	-
Imports content from a given WXR file.

**wp language**	-
Installs, activates, and manages language packs.

**wp maintenance-mode**	-
Activates, deactivates or checks the status of the maintenance mode of a site.

**wp media**	-
Imports files as attachments, regenerates thumbnails, or lists registered image sizes.

**wp menu**	-
Lists, creates, assigns, and deletes the active theme’s navigation menus.

**wp network**	-
Perform network-wide operations.

**wp option**	-
Retrieves and sets site options, including plugin and WordPress settings.

**wp package**	-
Lists, installs, and removes WP-CLI packages.

**wp plugin**	-
Manages plugins, including installs, activations, and updates.

**wp post**	-
Manages posts, content, and meta.

**wp post-type** -
Retrieves details on the site’s registered post types.

**wp profile**	
**wp rewrite**	-
Lists or flushes the site’s rewrite rules, updates the permalink structure.

**wp role**	-
Manages user roles, including creating new roles and resetting to defaults.

**wp scaffold**	-
Generates code for post types, taxonomies, plugins, child themes, etc.

**wp search-replace**	-
Searches/replaces strings in the database.

**wp server**	-
Launches PHP’s built-in web server for a specific WordPress installation.

**wp shell**	-
Opens an interactive PHP console for running and testing PHP code.

**wp sidebar**	-
Lists registered sidebars.

**wp site**	-
Creates, deletes, empties, moderates, and lists one or more sites on a multisite installation.

**wp super-admin**	-
Lists, adds, or removes super admin users on a multisite installation.

**wp taxonomy**	-
Retrieves information about registered taxonomies.

**wp term**	-
Manages taxonomy terms and term meta, with create, delete, and list commands.

**wp theme**	-
Manages themes, including installs, activations, and updates.

**wp transient**	-
Adds, gets, and deletes entries in the WordPress Transient Cache.

**wp user**	-
Manages users, along with their roles, capabilities, and meta.

**wp widget**	
Manages widgets, including adding and moving them within sidebars.
