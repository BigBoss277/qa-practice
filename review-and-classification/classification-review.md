# Bug Classification Review

## Goal

Practice reviewing bug reports and choosing appropriate severity, priority, and issue type.

## Case 1 - Empty email field on login page

**Original Title:** Incorrect error message displayed when email field is empty on Facebook login page  
**Original Classification:** UX / Validation Issue  
**Updated Classification:** Validation Issue  
**Severity:** Low  
**Priority:** Medium

**Reason:**
The issue does not block login for users who enter valid data, but the validation message may confuse users who accidentally leave the email field empty.

**What I Learned:**
Severity describes the impact of the issue, while priority describes how soon the issue should be fixed.

---

## Case 2 - Enter key does not submit login form

**Original Title:** Pressing Enter does not submit the login form  
**Original Classification:** UX Issue  
**Updated Classification:** Functional / UX Issue  
**Severity:** Medium  
**Priority:** High

**Reason:**
Pressing Enter is a common login behavior. The user can still submit the form by clicking the button, so the issue is not critical, but it should be fixed because it affects usability.

**What I Learned:**
Some issues can belong to more than one category. In this case, the behavior is both functional and usability-related.

---

## Case 3 - Cart error after very large quantity input

**Original Title:** Cart shows an error when a very large quantity is entered  
**Original Classification:** Validation Issue  
**Updated Classification:** Validation Issue  
**Severity:** Medium  
**Priority:** Medium

**Reason:**
The cart does not handle unrealistic quantity values clearly. The issue affects cart behavior, but it does not block the main flow for normal quantity values.

**What I Learned:**
Validation issues should include clear test data and expected behavior, especially when testing edge cases.
