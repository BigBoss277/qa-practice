# API Test Cases

## API Used

Postman Echo

## Methods Practiced

- GET
- POST
- PUT
- PATCH
- DELETE

---

## TC-API-001 - Verify GET request with valid query parameters

**Priority:** High

**Method:** GET  
**Endpoint:** `https://postman-echo.com/get`

**Query Params:**
- `name = Maksim`
- `role = QA`

**Steps:**
1. Open Postman
2. Select the GET method
3. Enter the base URL: `https://postman-echo.com/get`
4. Open the Params tab
5. Add `name = Maksim`
6. Add `role = QA`
7. Click Send

**Expected Result:**
- Status code is `200 OK`
- Response body contains `args.name = Maksim`
- Response body contains `args.role = QA`
- Response body contains the generated full URL with the sent query parameters

**Actual Result:**
Response returned `200 OK` and included the sent query parameters:

```json
{
  "args": {
    "name": "Maksim",
    "role": "QA"
  },
  "url": "https://postman-echo.com/get?name=Maksim&role=QA"
}
```

**Status:** Pass

---

## TC-API-002 - Verify GET request with an empty query parameter

**Priority:** Medium

**Steps:**
1. Open Postman
2. Select the GET method
3. Enter `https://postman-echo.com/get?name=&role=qa`
4. Click Send

**Expected Result:**
- Status code is `200 OK`
- Response body contains an empty `name` value
- Response body contains `role = qa`

**Actual Result:**
Response returned `200 OK`, kept `name` empty, and returned `role = qa`.

**Status:** Pass

---

## TC-API-003 - Verify POST request with JSON body

**Priority:** High

**Method:** POST  
**Endpoint:** `https://postman-echo.com/post`

**Request Body:**

```json
{
  "name": "Maksim",
  "role": "QA"
}
```

**Steps:**
1. Open Postman
2. Select the POST method
3. Enter `https://postman-echo.com/post`
4. Open Body -> raw -> JSON
5. Send the following request body:

```json
{
  "name": "Maksim",
  "role": "QA"
}
```

**Expected Result:**
- Status code is `200 OK`
- Response body contains the sent JSON data
- `name` value is `Maksim`
- `role` value is `QA`
- Response contains JSON data in the `json` or `data` field

**Actual Result:**
Response returned `200 OK` and included the sent JSON body:

```json
{
  "data": {
    "name": "Maksim",
    "role": "QA"
  },
  "json": {
    "name": "Maksim",
    "role": "QA"
  },
  "url": "https://postman-echo.com/post"
}
```

**Status:** Pass

---

## TC-API-004 - Verify POST request with an empty JSON body

**Priority:** Medium

**Method:** POST  
**Endpoint:** `https://postman-echo.com/post`

**Request Body:**

```json
{}
```

**Steps:**
1. Open Postman
2. Select the POST method
3. Enter `https://postman-echo.com/post`
4. Open Body -> raw -> JSON
5. Send an empty JSON body:

```json
{}
```

**Expected Result:**
- Status code is `200 OK`
- Request is processed without server error
- Response body contains an empty `data` object or otherwise shows that no JSON values were sent

**Actual Result:**
Response returned `200 OK`. The request body was sent as an empty JSON object, and the response showed empty data:

```json
{
  "data": {},
  "json": null,
  "url": "https://postman-echo.com/post"
}
```

**Status:** Pass

---

## TC-API-005 - Verify GET request with special characters

**Priority:** Low

**Steps:**
1. Open Postman
2. Select the GET method
3. Enter `https://postman-echo.com/get?query=qa%20testing%20%26%20bugs`
4. Click Send

**Expected Result:**
- Status code is `200 OK`
- Response body contains the decoded or encoded special-character query value
- Request is processed without server error

**Actual Result:**
Response returned `200 OK` and processed the query value without server error.

**Status:** Pass

---

## TC-API-006 - Verify PUT request with JSON body

**Priority:** Medium

**Method:** PUT  
**Endpoint:** `https://postman-echo.com/put`

**Request Body:**

```json
{
  "name": "BigBoss",
  "role": "Human"
}
```

**Steps:**
1. Open Postman
2. Select the PUT method
3. Enter `https://postman-echo.com/put`
4. Open Body -> raw -> JSON
5. Send the request body with updated values
6. Click Send

**Expected Result:**
- Status code is `200 OK`
- Response body contains the sent JSON data
- `name` value is `BigBoss`
- `role` value is `Human`

**Actual Result:**
Response returned `200 OK` and included the sent JSON body:

```json
{
  "data": {
    "name": "BigBoss",
    "role": "Human"
  },
  "json": {
    "name": "BigBoss",
    "role": "Human"
  },
  "url": "https://postman-echo.com/put"
}
```

**Status:** Pass

---

## TC-API-007 - Verify PATCH request with JSON body

**Priority:** Medium

**Method:** PATCH

**Endpoint:** `https://postman-echo.com/patch`

**Request Body:**

```json
{
  "role": "Junior QA"
}
```

**Steps:**
1. Open Postman
2. Select the PATCH method
3. Enter `https://postman-echo.com/patch`
4. Open Body -> raw -> JSON
5. Send the request body with the updated field
6. Click Send

**Expected Result:**
- Status code is `200 OK`
- Response body contains the sent JSON data
- `role` value is `Junior QA`

**Actual Result:**
Response returned `200 OK` and included the sent JSON body:

```json
{
  "data": {
    "role": "Junior QA"
  },
  "json": {
    "role": "Junior QA"
  },
  "url": "https://postman-echo.com/patch"
}
```

**Status:** Pass

---

## TC-API-008 - Verify DELETE request

**Priority:** Medium

**Method:** DELETE

**Endpoint:** `https://postman-echo.com/delete`

**Steps:**
1. Open Postman
2. Select the DELETE method
3. Enter `https://postman-echo.com/delete`
4. Click Send

**Expected Result:**
- Status code is `200 OK`
- Request is processed without server error
- Response body shows that no JSON body was sent

**Actual Result:**
Response returned `200 OK`. The request was processed, and the response showed no JSON body values:

```json
{
  "data": {},
  "json": null,
  "url": "https://postman-echo.com/delete"
}
```

**Status:** Pass

---

## TC-API-009 - Verify response for unknown endpoint

**Priority:** Medium

**Method:** GET

**Endpoint:** `https://postman-echo.com/unknown`

**Steps:**
1. Open Postman
2. Select the GET method
3. Enter `https://postman-echo.com/unknown`
4. Click Send

**Expected Result:**
- API returns a client-side error because the endpoint does not exist
- Status code is `404 Not Found`

**Actual Result:**
Response returned `404 Not Found`.

**Status:** Pass
