# Issues - Project 03: Shopping Cart

## Issue 1 - Cart shows an error when a very large quantity is entered

**Type:** Validation Issue  
**Severity:** Medium  
**Priority:** Medium  
**Reproducibility:** Always during the test session

## Environment

- Opera GX 130.0.5847.58
- Windows Desktop
- Test object: `https://sauce-demo.myshopify.com`

## Preconditions

- Product is added to cart
- Cart is opened
- Quantity field is editable

## Steps to Reproduce

1. Add any product to the cart
2. Open the cart
3. Click the quantity field
4. Enter a very large quantity value
5. Observe cart total and system behavior

## Expected Result

System should prevent unrealistic quantity values or show a clear validation message.

## Actual Result

Cart cannot calculate the total price, shows a cart error, and rolls back to the previous quantity value.

## Impact

The behavior may confuse the user because the cart shows an error after the value is entered instead of preventing invalid input earlier or explaining the validation rule clearly.

## Notes

This may be expected validation behavior for a demo website, but the error message and rollback behavior should be checked for clarity.
