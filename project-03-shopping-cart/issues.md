## Issue — Cart shows an error when very large quantity is entered

**Type:** Validation Issue  
**Severity:** Medium  
**Priority:** Medium

**Steps to reproduce:**
1. Add a product to the cart
2. Open the cart
3. Enter a very large quantity value
4. Observe the cart behavior

**Expected Result:**
System should either prevent entering an unrealistic quantity or show a clear validation message.

**Actual Result:**
Cart cannot calculate the total price, shows a cart error, and rolls back to the previous quantity value.

**Notes:**
This may be expected validation behavior, but the error message and rollback behavior should be checked for clarity.
