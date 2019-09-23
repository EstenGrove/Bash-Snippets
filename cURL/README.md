# Using ```cURL```
```cURL``` is great tool for quickly testing network related things such as a new API, SSL connections and FTP uploads. 

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

