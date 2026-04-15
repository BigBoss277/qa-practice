# Test Cases

## TC-001 — Valid username and password

**Priority:** High  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter a valid username and valid password
3. Click the Submit button

**Expected result:**  
User is logged in successfully with valid credentials.

**Actual result:**  
User gets the “Logged In Successfully” message.

**Status:** Pass

---

## TC-002 — Invalid username

**Priority:** High  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter an invalid username and a valid password
3. Click the Submit button

**Expected result:**  
User is not logged in and receives an error message.

**Actual result:**  
User gets the “Your username is invalid!” message and is not logged in.

**Status:** Pass

---

## TC-003 — Invalid password

**Priority:** High  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter a valid username and an invalid password
3. Click the Submit button

**Expected result:**  
User is not logged in and receives an error message.

**Actual result:**  
User gets the “Your password is invalid!” message and is not logged in.

**Status:** Pass

---

## TC-004 — Empty password field

**Priority:** Medium  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter a valid username
3. Leave the password field empty
4. Click the Submit button

**Expected result:**  
User is not logged in and receives an error message.

**Actual result:**  
User gets the “Your password is invalid!” message and is not logged in.

**Status:** Pass

---

## TC-005 — Special characters in username

**Priority:** Medium  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter a username with special characters and a valid password
3. Click the Submit button

**Expected result:**  
User is not logged in and the system shows an appropriate validation or error message.

**Actual result:**  
User gets the “Your username is invalid!” message.

**Status:** Pass

---

## TC-006 — Mixed language input

**Priority:** Low  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter a mixed-language username (Russian + English) and a valid password
3. Click the Submit button

**Expected result:**  
User is not logged in and receives an error message because the username is invalid.

**Actual result:**  
User gets the “Your username is invalid!” message.

**Status:** Pass

---

## TC-007 — Pressing Enter instead of clicking Login

**Priority:** High  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter valid credentials
3. Press the Enter key

**Expected result:**  
User is logged in successfully.

**Actual result:**  
Website does not respond and nothing happens.

**Status:** Fail

---

## TC-008 — Leading/trailing spaces

**Priority:** Medium  
**Preconditions:**
- Login page is accessible
- Browser and internet connection are working
- Login form is visible and interactive

**Steps to reproduce:**
1. Navigate to the login form
2. Enter valid credentials with leading/trailing spaces in username and password
3. Click the Submit button

**Expected result:**  
System should either trim leading/trailing spaces automatically or handle them without breaking valid login input.

**Actual result:**  
User gets the “Your username is invalid!” message.

**Status:** Fail
