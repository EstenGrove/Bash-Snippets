# Using ```cURL```
```cURL``` is great tool for quickly testing network related things such as a new API, SSL connections and FTP uploads. 

## Quick Access

- [Requests](#requests)
  - [GET](#get)
  - [POST](#post)
  - [PUT](#put)
  - [DELETE](#delete)
- [Testing 301 Redirects](#testing-301-redirects)
- [Sending Data](#sending-data)
- [Setting Headers](#using--setting-headers)
  - [Return ONLY headers](#return-only-the-headers)
  - [Make request w/ specific headers](#make-request-w-specific-headers)
- [Requests With Spaces](#requests-with-spaces)
- [Save the cURL result to a file](#save-the-result-of-a-curl-command)
- [File Uploads](#file-uploads)

## Requests

#### GET
```bash
curl http://localhost:3000
```

#### POST
```bash
curl -X POST http://localhost:3000
```

#### PUT
```bash
curl -X PUT http://localhost:3000
```

#### DELETE
```bash
curl -X DELETE http://localhost:3000
```

----------

## Testing 301 Redirects
```bash
curl -I https://info.aladvantage.com

#HTTP/2 301 
#server: nginx
#date: Tue, 01 Oct 2019 04:46:07 GMT
#content-type: text/html; charset=iso-8859-1
#location: https://www.aladvantage.com/  <== "new location"
#cache-control: max-age=15552000
#expires: Sun, 29 Mar 2020 04:46:07 GMT
#host-header: b7440e60b07ee7b8044761568fab26e8
```


----------

## Testing Cache-Control Headers & Cache Expiry(s)
NOTE: IF 'Cache-Control' headers and/or 'Expiry' headers have been set they will appear in each of the responses below when executing each cURL command.

```bash
# Request some site's info (make note of the Etag value)
curl -I https://portaltest.aladvantage.com

## RESPONSE:
HTTP/1.1 200 OK
Server: nginx/1.14.0 (Ubuntu)
Date: Fri, 13 Aug 2021 22:29:37 GMT
Content-Type: text/html
Content-Length: 4567
Last-Modified: Fri, 13 Aug 2021 13:51:31 GMT
Connection: keep-alive
ETag: "611678e3-11d7"
Accept-Ranges: bytes

```

```bash
# Re-request and add value from Etag below in quotes 
curl -I -H 'If-None-Match: "611678e3-11d7"' https://portaltest.aladvantage.com

## RESPONSE:
HTTP/1.1 304 Not Modified
Server: nginx/1.14.0 (Ubuntu)
Date: Fri, 13 Aug 2021 22:30:26 GMT
Last-Modified: Fri, 13 Aug 2021 13:51:31 GMT
Connection: keep-alive
ETag: "611678e3-11d7"

```



----------

## Requests With Spaces

```bash
# The following is equal to a GET request w/ param(s): "http://localhost:8080/sites/site?siteName=Dummy%Example"

# This is how you could encode a space in a GET request
curl -G "http://localhost:8080/sites/site" --data-urlencode "siteName=Dummy Example"
```



----------


## Sending Data

```bash
curl -X POST http://localhost:3000/api/users -d 'username=myusername&password=mypassword'
```

---------

## Using & Setting Headers

#### Return ONLY the Headers
```bash
curl -I http://localhost:3000/api/users
```

#### Make Request With Certain Headers
```bash
curl -H "X-Header: Value" http://localhost:3000
```
-----------


## Save the Result of a ```cURL``` Command
```bash
curl -o MyFileToSaveTo.txt http://localhost:3000/api/users
```

-----------


## File Uploads

#### Syntax
```bash
curl -F 'data=@path/to/local/file' UPLOAD_ADDRESS

# EXAMPLE USAGE

curl -F 'my_img=@/users/EstenGrove/documents/my_img.png' https://mydomain.com/media
```

