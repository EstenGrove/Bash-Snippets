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
- [Save the cURL result to a file](#save-the-result-of-a-curl-command)

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

