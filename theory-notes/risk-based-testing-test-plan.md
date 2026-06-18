# Risk-Based Testing and Test Plan

## Simple Explanation

Risk-based testing (RBT) is a testing approach where the tester gives more attention to the areas with the highest risk.

Risk usually depends on two things:

- likelihood - how likely the problem is to happen
- impact - how serious the damage would be if it happened

Risk-based testing does not mean ignoring low-risk areas. It means testing the most important and dangerous areas earlier, deeper, and with higher priority.

A test plan is a document that describes what will be tested, how it will be tested, where it will be tested, what is in scope, what is out of scope, what risks exist, and when testing can start or finish.

Common test plan sections:

- goal of testing
- scope and out of scope
- test object
- test types
- environment
- risks
- entry criteria
- exit criteria

## Example From My Project

I have test plan examples in my projects, especially in the login page project and shopping cart project.

I also have basic risk-based testing examples, even if I did not call them RBT before.

In the login page project, login submission is a higher-risk area because users cannot access the system if login does not work. That is why valid login, invalid login, required fields, and validation messages should be tested with higher priority.

The issue "Pressing Enter does not submit the login form" is also connected to risk-based thinking. I classified it as Medium severity and High priority because the user can still log in with the button, but pressing Enter is a common login behavior.

In the shopping cart project, add-to-cart, remove-from-cart, quantity, price, and cart total are higher-risk areas because they affect the main e-commerce flow. Real payment testing was marked as out of scope because it should not be completed on a demo practice website.

My test case priorities are also simple examples of risk-based testing because high-priority cases are more important to execute first.

## Interview Answer

Risk-based testing is an approach where testing is prioritized based on risk. Risk is usually a combination of likelihood and impact.

In practice, QA focuses more time and attention on the areas where failure would hurt the product, users, or business the most. High-risk areas are tested earlier and deeper, while low-risk areas may receive lighter coverage.

A test plan is a document that describes the testing scope, objectives, approach, environment, risks, entry criteria, and exit criteria.

In my projects, I used test plan lite documents and prioritized important user flows, such as login and shopping cart behavior. For example, I treated valid login and add-to-cart scenarios as high priority because they are core user workflows.
