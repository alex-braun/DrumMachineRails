#A Drum Machine database.

Please see the link for detail on the Ruby on Rail backend for this project.
https://github.com/alex-braun/client-spa-project

For authentication, please see below:

#API

Use this as the basis for your own API documentation. Add a new third-level heading for your custom entities, and follow the pattern provided for the built-in user authentication documentation.

Scripts are included in scripts to test built-in actions. Add your own scripts to test your custom API. As an alternative, you can write automated tests in RSpec to test your API.

#Authentication
```
Verb	URI Pattern	Controller#Action
POST	/sign-up	users#signup
POST	/sign-in	users#signin
PATCH	/change-password/:id	users#changepw
DELETE	/sign-out/:id	users#signout
POST /sign-up
```
#Request:
```
curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
```
scripts/sign-up.sh
Response:
```
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "an@example.email"
  }
}
POST /sign-in
``
Request:
```
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'
```
scripts/sign-in.sh
Response:
``
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "an@example.email",
    "token": "33ad6372f795694b333ec5f329ebeaaa"
  }
}
```
PATCH /change-password/:id

Request:
```
curl --include --request PATCH http://localhost:3000/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'
ID=1 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/change-password.sh
Response:

HTTP/1.1 204 No Content
DELETE /sign-out/:id

Request:

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
ID=1 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/sign-out.sh
Response:

HTTP/1.1 204 No Content
Users
```
Verb	URI Pattern	Controller#Action
GET	/users	users#index
GET	/users/1	users#show
GET /users

Request:
```
curl --include --request GET http://localhost:3000/users \
  --header "Authorization: Token token=$TOKEN"
TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/users.sh
Response:

HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "another@example.email"
    },
    {
      "id": 1,
      "email": "an@example.email"
    }
  ]
}
GET /users/:id

Request:

curl --include --request GET http://localhost:3000/users/$ID \
  --header "Authorization: Token token=$TOKEN"
ID=2 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/user.sh
Response:

HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "another@example.email"
  }
}
```
