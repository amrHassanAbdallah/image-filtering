# Project: udagram-api
Feed and User API
# 📁 Collection: Public 


## End-point: /api/v0/feed
Get all the items in the feed
### Method: GET
>```
>{{host}}/api/v0/feed
>```
### Response: 200
```json
{
    "count": 1,
    "rows": [
        {
            "id": 1,
            "caption": "aw3aaaaaaaaaaaa",
            "url": "https://test-677336907491-dev.s3.amazonaws.com/carbon%20%285%29.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAZ3NDM73RUT5CUBV3%2F20211230%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20211230T201247Z&X-Amz-Expires=300&X-Amz-Signature=1c46d85ae0678e86d48f08bd36a0c5fbf4d4586798cb4c8834f35665ea653eee&X-Amz-SignedHeaders=host",
            "createdAt": "2021-12-29T21:48:03.173Z",
            "updatedAt": "2021-12-29T21:48:03.174Z"
        }
    ]
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: /api/v0/feed/:id
Request a specific feed item detail
### Method: GET
>```
>{{host}}/api/v0/feed/:id
>```
### Query Params

|Param|value|
|---|---|
|id|4|


### Response: 200
```json
{
    "id": 3,
    "caption": "hello0.5278862272947393",
    "url": null,
    "createdAt": "2019-03-26T14:16:58.442Z",
    "updatedAt": "2019-03-26T14:16:58.443Z"
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: /api/v0/user/auth valid registration
### Method: POST
>```
>{{host}}/api/v0/users/auth
>```
### Headers

|Content-Type|Value|
|---|---|
|Content-Type|application/json|


### Body (**raw**)

```json
{
	"email":"hello@gmail.com",
	"password":"fancypass"
}
```

### Response: 201
```json
{
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhlbGxvQGdtYWlsLmNvbSIsImlhdCI6MTY0MDg5NTE5NX0.KMwV3cLz6J3b0sxHUZQV6-6-zCW5e7wcruLmuUirl50",
    "user": {
        "email": "hello@gmail.com"
    }
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: /api/v0/user/auth invalid registration
### Method: POST
>```
>{{host}}/api/v0/users/auth
>```
### Headers

|Content-Type|Value|
|---|---|
|Content-Type|application/json|


### Body (**raw**)

```json
{
    "password": "fancypass"
}
```

### Response: 400
```json
{
    "auth": false,
    "message": "Email is missing or malformed."
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: /api/v0/user/auth/login valid
### Method: POST
>```
>{{host}}/api/v0/users/auth/login
>```
### Headers

|Content-Type|Value|
|---|---|
|Content-Type|application/json|


### Body (**raw**)

```json
{
	"email":"hello@gmail.com",
	"password":"fancypass"
}
```

### Response: 200
```json
{
    "auth": true,
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhlbGxvQGdtYWlsLmNvbSIsImlhdCI6MTY0MDg5NjMyMn0.3QKH-SWmNA69b1HdU0wY4sw2todHR27BiC1qB4wq2Tw",
    "user": {
        "email": "hello@gmail.com"
    }
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: /api/v0/user/auth/login invalid
### Method: POST
>```
>{{host}}/api/v0/users/auth/login
>```
### Headers

|Content-Type|Value|
|---|---|
|Content-Type|application/json|


### Body (**raw**)

```json
{}
```

### Response: 400
```json
{
    "auth": false,
    "message": "Email is required or malformed."
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃
# 📁 Collection: Unauthorized 


## End-point: /api/v0/feed unauthorized
Post a new item to the feed
### Method: POST
>```
>{{host}}/api/v0/feed
>```
### Body (**raw**)

```json

```

### Response: 401
```json
{
    "message": "No authorization headers."
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃
# 📁 Collection: Authorized 


## End-point: /api/v0/feed invalid
Post a new item to the feed
### Method: POST
>```
>{{host}}/api/v0/feed
>```
### Headers

|Content-Type|Value|
|---|---|
|Content-Type|application/json|


### Body (**raw**)

```json
{}
```

### Response: 500
```json
{
    "auth": false,
    "message": "Failed to authenticate."
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: /api/v0/feed authorized
Post a new item to the feed
### Method: POST
>```
>{{host}}/api/v0/feed
>```
### Headers

|Content-Type|Value|
|---|---|
|Content-Type|application/json|


### Body (**raw**)

```json
{
    "caption": "Hello",
    "url": "test.jpg"
}
```

### 🔑 Authentication bearer

|Param|value|Type|
|---|---|---|
|token|eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhlbGxvQGdtYWlsLmNvbSIsImlhdCI6MTY0MDg5NjMyMn0.3QKH-SWmNA69b1HdU0wY4sw2todHR27BiC1qB4wq2Tw|string|


### Response: 201
```json
{
    "id": 5,
    "caption": "Hello",
    "url": "https://test-677336907491-dev.s3.amazonaws.com/test.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAZ3NDM73RUT5CUBV3%2F20211230%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20211230T203540Z&X-Amz-Expires=300&X-Amz-Signature=a13787047b4e4dcd54949b2cc8ed42143a26e57047ed83f0c965971bddae066b&X-Amz-SignedHeaders=host",
    "createdAt": "2021-12-30T20:35:40.125Z",
    "updatedAt": "2021-12-30T20:35:40.126Z"
}
```


⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃
_________________________________________________
Powered By: [postman-to-markdown](https://github.com/bautistaj/postman-to-markdown/)
