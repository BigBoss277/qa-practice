# Test Cases

## TC-001 — Valid input

**Priority:** High  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Enter a valid search query
3. Click the search button or press Enter

**Expected result:**  
Search is performed successfully and relevant results are displayed.

**Actual result:**  
Actual result matches the expected result.

**Status:** Pass

---

## TC-002 — Empty input

**Priority:** Medium  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Leave the search field empty
3. Click the search button or press Enter

**Expected result:**  
System should provide clear feedback or keep stable behavior when empty search is submitted.

**Actual result:**  
No visible feedback / no response.

**Status:** Fail

---

## TC-003 — Long input

**Priority:** Medium  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Enter a long semantically meaningful search query (around 500 characters)
3. Click the search button or press Enter

**Expected result:**  
Search is performed successfully and relevant results are displayed.

**Actual result:**  
Actual result matches the expected result.

**Status:** Pass

---

## TC-004 — Leading/trailing spaces

**Priority:** Low  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Enter a valid search query with leading/trailing spaces
3. Click the search button or press Enter

**Expected result:**  
Search is performed successfully and extra spaces do not break the request.

**Actual result:**  
Actual result matches the expected result, and spaces were automatically removed from the field.

**Status:** Pass

---

## TC-005 — Special characters

**Priority:** Low  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Enter a query consisting of special characters
3. Click the search button or press Enter

**Expected result:**  
Search request is processed without errors. Results page or no-results-like behavior is displayed.

**Actual result:**  
Actual result matches the expected result.

**Status:** Pass

---

## TC-006 — Mixed language input

**Priority:** Low  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Enter a mixed-language query (Russian + English)
3. Click the search button or press Enter

**Expected result:**  
Search is performed successfully and relevant results are displayed.

**Actual result:**  
Actual result matches the expected result, but most results came from English-language sources regardless of word order.

**Status:** Pass

---

## TC-007 — Pressing Enter instead of clicking the button

**Priority:** Medium  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Enter a valid search query
3. Press Enter instead of clicking the search button

**Expected result:**  
Search is performed successfully and relevant results are displayed.

**Actual result:**  
Actual result matches the expected result.

**Status:** Pass

---

## TC-008 — Quotation marks

**Priority:** Medium  
**Preconditions:**
- Google Search page is accessible
- Browser and internet connection are working
- Search field is visible and interactive

**Steps to reproduce:**
1. Navigate to the search field
2. Enter a valid search query with quotation marks
3. Click the search button or press Enter

**Expected result:**  
Search is performed successfully and relevant results are displayed.

**Actual result:**  
Actual result matches the expected result.

**Status:** Pass
