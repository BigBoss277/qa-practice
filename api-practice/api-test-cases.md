# API Test Cases

API practice notes.

```md
# API Practice Notes

## API used
Postman Echo

## Methods practiced
- GET
- POST

## Test Cases

### TC-API-001 — Verify GET request with valid query parameters
**Steps:**
1. Open Postman
2. Select GET method
3. Enter `https://postman-echo.com/get?name=Maksim&role=qa`
4. Click Send

**Expected Result:**
- Status code is 200
- Response body contains:
  - `args.name = Maksim`
  - `args.role = qa`

---

### TC-API-002 — Verify GET request with empty query parameter
**Steps:**
1. Open Postman
2. Select GET method
3. Enter `https://postman-echo.com/get?name=&role=qa`
4. Click Send

**Expected Result:**
- Status code is 200
- Response body contains empty `name` value
- `role = qa`

---

### TC-API-003 — Verify POST request with JSON body
**Steps:**
1. Open Postman
2. Select POST method
3. Enter `https://postman-echo.com/post`
4. Open Body → raw → JSON
5. Send:
```json
{
  "name": "Maksim",
  "role": "qa"
}
