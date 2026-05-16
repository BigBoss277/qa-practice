# Test Cases - Project 03: Shopping Cart

## TC-001 - Open home page

**Priority:** High

**Preconditions:**
- Internet connection is stable
- Browser is opened

**Steps:**
1. Enter `https://sauce-demo.myshopify.com` in the browser address bar
2. Press Enter

**Expected Result:**
Home page opens successfully.

**Actual Result:**
Home page opened successfully.

**Status:** Pass

---

## TC-002 - Open catalog page

**Priority:** High

**Preconditions:**
- Home page is opened

**Steps:**
1. Click the catalog navigation link
2. Observe the opened page

**Expected Result:**
Catalog page opens and product cards are displayed.

**Actual Result:**
Catalog page opened successfully and product cards were displayed.

**Status:** Pass

---

## TC-003 - Open product details page

**Priority:** High

**Preconditions:**
- Catalog page is opened
- Product cards are visible

**Steps:**
1. Select any product from the catalog
2. Click the product card or product title
3. Observe the product details page

**Expected Result:**
Product details page opens and shows product information.

**Actual Result:**
Product details page opened successfully and product information was displayed.

**Status:** Pass

---

## TC-004 - Navigate back from product page to catalog

**Priority:** Medium

**Preconditions:**
- Product details page is opened

**Steps:**
1. Click the catalog navigation link
2. Observe the opened page

**Expected Result:**
User returns to the catalog page.

**Actual Result:**
Catalog page opened successfully.

**Status:** Pass

---

## TC-005 - Open cart page / cart section

**Priority:** High

**Preconditions:**
- Home page or catalog page is opened

**Steps:**
1. Click the cart icon or cart button
2. Observe the cart area

**Expected Result:**
Cart opens successfully.

**Actual Result:**
Cart opened as a top-page cart section.

**Status:** Pass

---

## TC-006 - Continue shopping from cart

**Priority:** Medium

**Preconditions:**
- Cart is opened
- At least one product is added to cart

**Steps:**
1. Click the continue shopping option or return to the catalog
2. Select another product

**Expected Result:**
User can continue browsing products without losing the current cart state.

**Actual Result:**
User returned to shopping and the cart state was kept.

**Status:** Pass

---

## TC-007 - Add product to cart from product details page

**Priority:** High

**Preconditions:**
- Product details page is opened

**Steps:**
1. Click the add-to-cart button
2. Open the cart
3. Check whether the selected product appears in the cart

**Expected Result:**
Selected product is added to cart.

**Actual Result:**
Selected product was added to cart successfully.

**Status:** Pass

---

## TC-008 - Verify product name in cart

**Priority:** Medium

**Preconditions:**
- Product is added to cart

**Steps:**
1. Remember the product name in the catalog or product details page
2. Open the cart
3. Compare the product name in cart with the original product name

**Expected Result:**
Product name in cart matches the selected product name.

**Actual Result:**
Product name in cart matched the selected product name.

**Status:** Pass

---

## TC-009 - Verify product price in cart

**Priority:** Medium

**Preconditions:**
- Product is added to cart

**Steps:**
1. Remember the product price in the catalog or product details page
2. Open the cart
3. Compare the product price in cart with the original product price

**Expected Result:**
Product price in cart matches the selected product price.

**Actual Result:**
Product price in cart matched the selected product price.

**Status:** Pass

---

## TC-010 - Verify product quantity in cart

**Priority:** Medium

**Preconditions:**
- Product is added to cart
- Cart is opened

**Steps:**
1. Check the product quantity value in cart
2. Compare it with the selected quantity

**Expected Result:**
Product quantity in cart matches the selected quantity.

**Actual Result:**
Product quantity in cart matched the selected quantity.

**Status:** Pass

---

## TC-011 - Remove product from cart

**Priority:** High

**Preconditions:**
- Product is added to cart
- Cart is opened

**Steps:**
1. Click the remove button for the product
2. Observe the cart

**Expected Result:**
Product is removed from cart.

**Actual Result:**
Product was removed from cart successfully.

**Status:** Pass

---

## TC-012 - Check cart after page refresh

**Priority:** High

**Preconditions:**
- Product is added to cart
- Cart is opened

**Steps:**
1. Refresh the page
2. Open the cart again if needed
3. Check whether the added product is still present

**Expected Result:**
Cart keeps the added product after page refresh.

**Actual Result:**
Cart kept the added product after page refresh.

**Status:** Pass

---

## TC-013 - Search for a non-existing product

**Priority:** Low

**Preconditions:**
- Home page is opened
- Search field is available

**Steps:**
1. Click the search field
2. Enter `tomato pasta`
3. Submit the search

**Expected Result:**
System shows a clear no-results message or empty search result state.

**Actual Result:**
No matching product was found.

**Status:** Pass

---

## TC-014 - Search for an existing product

**Priority:** Medium

**Preconditions:**
- Home page is opened
- Search field is available

**Steps:**
1. Click the search field
2. Enter `Grey jacket`
3. Submit the search

**Expected Result:**
Search results show the matching product.

**Actual Result:**
Search found the matching product.

**Status:** Pass

---

## TC-015 - Enter a very large quantity value in cart

**Priority:** Medium

**Preconditions:**
- Product is added to cart
- Cart is opened
- Quantity field is editable

**Steps:**
1. Click the quantity field
2. Enter a very large quantity value
3. Observe cart total and validation behavior

**Expected Result:**
System prevents unrealistic quantity values or shows a clear validation message.

**Actual Result:**
Cart could not calculate the total price, showed an error, and rolled back to the previous quantity value.

**Status:** Fail
