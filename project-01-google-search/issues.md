# Issues

## Issue 1 — Repeated click triggers CAPTCHA

**Environment:**  
Opera GX 128.0.5807.97, Windows

**Severity:** Medium  
**Priority:** Medium  
**Type:** Observation

**Steps to reproduce:**
1. Navigate to the Google Search page
2. Enter any query in the search field
3. Click the search button many times in a short period

**Expected result:**  
System may apply anti-bot protection after excessive repeated submissions.

**Actual result:**  
After many repeated clicks on the search button, Google triggered CAPTCHA.

**Notes:**  
This may affect testing because CAPTCHA appears after a certain number of repeated submissions regardless of the query.

---

## Issue 2 — No visible feedback on empty input

**Environment:**  
Opera GX 128.0.5807.97, Windows

**Severity:** Low  
**Priority:** Medium  
**Type:** UX / Validation Issue

**Steps to reproduce:**
1. Navigate to the Google Search page
2. Leave the search field empty
3. Click the search button

**Expected result:**  
System should provide clear feedback or maintain understandable behavior when empty search is submitted.

**Actual result:**  
No visible feedback is shown after submitting an empty search.

**Notes:**  
This may confuse the user because the system appears unresponsive even though the action was triggered.

---

## Issue 3 — Autocomplete suggestion appears weakly related to the typed query

**Environment:**  
Opera GX 128.0.5807.97, Windows

**Severity:** Low  
**Priority:** Medium  
**Type:** UX Issue

**Steps to reproduce:**
1. Navigate to the Google Search page
2. Start typing the query: `как найти жену`
3. Observe autocomplete suggestions

**Expected result:**  
Autocomplete suggestions should remain clearly related to the typed phrase and help refine the user’s search intent.

**Actual result:**  
Autocomplete suggested a continuation related to `...барона ведьмак 3`, which appeared weakly connected to the original phrase `как найти жену`.

**Notes:**  
This may confuse the user because the suggestion changes the apparent context of the query instead of refining it naturally.
