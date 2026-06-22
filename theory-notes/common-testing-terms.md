# Common Testing Terms

## Regression Testing

### Simple Explanation

Regression testing is testing existing functionality after code changes, bug fixes, or new features to make sure that nothing that worked before was broken.

### Example From My Project

I do not have a real post-fix regression testing example yet because I am practicing independently and do not have a developer team changing the application.

However, I can apply regression testing in the login page project. For example, after fixing the Enter key login issue, I would check not only the fixed issue, but also the main login scenarios again: valid login, invalid username, invalid password, empty fields, and validation messages.

### Interview Answer

Regression testing checks existing functionality after changes to make sure the changes did not break anything that worked before.

## Retesting

### Simple Explanation

Retesting is testing a specific failed test case or bug again after it was fixed to confirm that the fix works.

### Example From My Project

I do not have a real developer-fixed bug example yet because I am practicing independently.

However, in the login page project, if the Enter key login issue was fixed, I would retest that specific issue by pressing Enter again and checking whether the login form is submitted.

### Interview Answer

Retesting is testing the same issue again after it was fixed to make sure the fix works.

## Smoke Testing

### Simple Explanation

Smoke testing is a quick, basic test of the main functionality to check whether a new build is stable enough for deeper testing.

It does not check everything in detail. It answers the question: "Is this build testable?"

### Example From My Project

In the login page project, smoke testing could include opening the login page, checking that username and password fields are visible, entering valid credentials, clicking the login button, and confirming that the user can log in.

In the shopping cart project, smoke testing could include opening the website, viewing products, adding one product to the cart, opening the cart, and removing the product.

### Interview Answer

Smoke testing is a quick check of the main functionality to make sure a build is stable enough for further testing.

## Sanity Testing

### Simple Explanation

Sanity testing is a narrow and focused test after a small change or bug fix. It checks whether the specific changed area works as expected.

It does not test the whole system. It answers the question: "Does this specific change make sense and work correctly?"

### Example From My Project

In the login page project, if the Enter key issue was fixed, sanity testing would focus on checking whether pressing Enter now submits the login form correctly.

In the shopping cart project, if quantity validation was changed, sanity testing would focus on checking quantity behavior and cart total calculation after that change.

### Interview Answer

Sanity testing is a focused check after a small change or bug fix to make sure the changed area works correctly.

## Exploratory Testing

### Simple Explanation

Exploratory testing is a testing approach where the tester learns the product, designs tests, and executes tests at the same time without strict predefined test cases.

### Example From My Project

I used exploratory testing in all three manual testing projects.

For example, in the shopping cart project, I tried unusual quantity values, mixed navigation scenarios, search behavior, and cart behavior after different actions. I documented my observations in exploratory notes.

### Interview Answer

Exploratory testing is testing where the tester explores the application, learns how it works, and designs tests during the testing process.
