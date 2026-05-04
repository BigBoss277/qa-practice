# Exploratory Testing Notes

## Feature tested
Shopping Cart / Product Add-to-Cart Flow
https://sauce-demo.myshopify.com

## Environment
- Opera GX 130.0.5847.58, Windows

## Session time
- More than 1 hour

## Goal of session
Explore website pages behavior with unusual, edge-case, and mixed scenarios.

## What was checked
- opening the home page and catalog page
- viewing product cards
- opening product details
- adding products to cart
- checking cart page
- changing product quantity if available
- removing products from cart if available
- checking cart total / subtotal
- using search for product-related queries
- basic navigation between home, catalog, product page, and cart

## Interesting behavior noticed
- Cart opens as a top-page cart section instead of a separate cart page.
- Search is case-insensitive: `Grey jacket` and `grey jacket` return the same result.
## Possible issues / observations
- Search does not match `greyjacket` to `Grey jacket` when words are typed without a space.
- Cart shows an error when a very large quantity value is entered.

## Conclusion
Core shopping cart functionality worked as expected during the exploratory session. Product navigation, adding items to cart, removing items, and search behavior were mostly stable. One validation issue was found with very large quantity values, and one minor search-related UX observation was noted.
