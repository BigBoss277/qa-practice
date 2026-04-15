# Issues

## Issue 1 — Pressing Enter does not submit the login form

**Environment:**  
Opera GX 128.0.5807.97, Windows

**Severity:** Medium  
**Priority:** High  
**Type:** UX Issue

**Steps to reproduce:**
1. Navigate to the login form
2. Enter valid credentials
3. Press the Enter key

**Expected result:**  
User is logged in successfully.

**Actual result:**  
The website does not respond and nothing happens.

**Notes:**  
This affects usability because pressing Enter is a common way to submit a login form.

---

## Issue 2 — Leading/trailing spaces are not handled correctly

**Environment:**  
Opera GX 128.0.5807.97, Windows

**Severity:** Medium  
**Priority:** Medium  
**Type:** Validation Issue

**Steps to reproduce:**
1. Navigate to the login form
2. Enter valid credentials with leading/trailing spaces in username and password
3. Click the Submit button

**Expected result:**  
The system should trim leading/trailing spaces automatically or handle them without breaking valid login input.

**Actual result:**  
User gets the “Your username is invalid!” message.

**Notes:**  
This may confuse the user because accidental spaces are a common input mistake.
