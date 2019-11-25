# 301 & 302 Apache Redirects (```.htaccess```)
[Helpful guide w/ syntax here](http://httpd.apache.org/docs/2.2/en/mod/mod_rewrite.html#rewritecond)

## Custom Regex for Redirects (ALA)

```bash
# MATCH: https://info.aladvantage.com
^https:\/\/info.aladvantage.com

# MATCH: http://test.info.aladvantage.com
^http:\/\/test.info.aladvantage.com

# MATCH: https://info.aladvantage.com/ANY-PATH-HERE
^https:\/\/info.aladvantage.com\/\S*
```

## Current 301's

```bash
# Previous Version
Options +FollowSymLinks
RewriteEngine On
RewriteRule ^(.*) http://www.aladvantage.com%{REQUEST_URI} [R=302,NC]


# Updated Version as of 11-25-2019
Options +FollowSymLinks
RewriteEngine On
RewriteCond %{HTTP_HOST} ^info\.aladvantage\.com$
RewriteCond %{REQUEST_URI} !^/[0-9]+\..+\.cpaneldcv$
RewriteCond %{REQUEST_URI} !^/\.well-known/pki-validation/[A-F0-9]{32}\.txt(?:\ Comodo\ DCV)?$
RewriteRule ^(.*)$ "https\:\/\/www\.aladvantage\.com\/$1" [R=301,L]

```
