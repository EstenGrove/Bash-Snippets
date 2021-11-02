# SEO & Robots.txt
This document outlines various web crawling settings for configuring a `robots.txt` file for a website, web app etc.


---

## Allow All Crawl Bots
This means ALL web crawlers will be able to index this entire site.

```txt
# https://www.robotstxt.org/robotstxt.html
User-agent: *
Disallow:
```

---

## Disallow All Crawl Bots
This means NO web crawlers will be able to index this entire site.

```txt
# https://www.robotstxt.org/robotstxt.html
User-agent: *
Disallow: /
```

---

## Allow Specific Directory To Be Crawled

```txt
# https://www.robotstxt.org/robotstxt.html
User-agent: *
Disallow: /my-public-directory/
```

---

## Allow Specific Crawl-Bot Access
This will allow access for a specific crawl bot to index the site.

```txt
# https://www.robotstxt.org/robotstxt.html
User-agent: Googlebot
Disallow: 
```
