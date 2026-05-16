# API Test Cases

## API Used

Postman Echo

## Methods Practiced

- GET
- POST

---

## TC-API-001 - Verify GET request with valid query parameters

**Priority:** High

**Steps:**
1. Open Postman
2. Select the GET method
3. Enter `https://postman-echo.com/get?name=Maksim&role=qa`
4. Click Send

**Expected Result:**
- Status code is `200 OK`
- Response body contains `args.name = Maksim`
- Response body contains `args.role = qa`

**Actual Result:**
Response returned `200 OK` and included the sent query parameters.

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

**Steps:**
1. Open Postman
2. Select the POST method
3. Enter `https://postman-echo.com/post`
4. Open Body -> raw -> JSON
5. Send the following request body:

```json
{
  "name": "Maksim",
  "role": "qa"
}
```

**Expected Result:**
- Status code is `200 OK`
- Response body contains the sent JSON data
- `name` value is `Maksim`
- `role` value is `qa`

**Actual Result:**
Response returned `200 OK` and included the sent JSON body.

**Status:** Pass

---

## TC-API-004 - Verify POST request with an empty JSON body

**Priority:** Medium

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
- Response body contains an empty JSON object

**Actual Result:**
Response returned `200 OK` and included an empty JSON object.

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
