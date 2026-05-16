# Exploratory Testing Notes - Project 03: Shopping Cart

## Feature Tested

Shopping Cart / Product Add-to-Cart Flow  
Test object: `https://sauce-demo.myshopify.com`

## Environment

- Opera GX 130.0.5847.58
- Windows Desktop

## Session Time

More than 1 hour.

## Goal of Session

Explore website behavior with common user flows, unusual input, edge cases, and mixed navigation scenarios.

## What Was Checked

- Opening the home page and catalog page
- Viewing product cards
- Opening product details
- Adding products to cart
- Checking cart page / cart section
- Changing product quantity
- Removing products from cart
- Checking cart total / subtotal
- Using search for product-related queries
- Basic navigation between home, catalog, product details, and cart

## Interesting Behavior Noticed

- Cart opens as a top-page cart section instead of a separate cart page.
- Search is case-insensitive: `Grey jacket` and `grey jacket` return the same result.
- Search does not match `greyjacket` to `Grey jacket` when the words are typed without a space.

## Issues / Observations

- Cart shows an error when a very large quantity value is entered.
- The cart rolls back to the previous valid quantity after the error.

## Conclusion

Core shopping cart functionality worked as expected during the exploratory session. Product navigation, adding items to cart, removing items, and search behavior were mostly stable. One validation issue was found with very large quantity values, and one minor search-related UX observation was noted.
