# Test Types vs Test Levels

## Simple Explanation

Test levels show where testing happens in the software development process and what size of the system is being tested.

Main test levels:
- Component testing - testing a single component or unit in isolation.
- Component integration testing - testing interaction between components.
- System testing - testing the complete system as a whole.
- System integration testing - testing interaction between systems.
- Acceptance testing - checking whether the system is ready for users or business needs.

Test types describe what aspect of quality is being tested.

Main test types:
- Functional testing - checks what the system does.
- Non-functional testing - checks qualities like performance, usability, security, reliability, and compatibility.
- Black-box testing - checks behavior without looking at internal code.
- White-box testing - checks internal structure, code, logic, or paths.

## Example From My Project

My projects are mostly examples of system testing because I tested complete web features from the user perspective: login page, Google Search, and shopping cart.

Most of my test cases are black-box tests because I did not inspect the internal code. I checked inputs, actions, outputs, UI behavior, error messages, and expected results.

My projects also include functional testing because I checked whether features worked correctly:
- valid and invalid login
- search behavior
- adding products to cart
- removing products from cart
- checking cart quantity and price

Some observations can be connected to non-functional testing, especially usability:
- pressing Enter does not submit the login form
- empty search has no visible feedback
- validation messages may confuse the user

I do not have real examples of component testing, integration testing, or white-box testing yet, because I did not test the internal code or separate modules.

## Interview Answer

Test levels describe at what stage or scope testing is performed, for example component, integration, system, or acceptance testing.

Test types describe what quality aspect is being tested, for example functional behavior, usability, performance, security, black-box behavior, or white-box code structure.

In my projects, I mostly practiced system-level black-box functional testing. I tested complete web features from the user perspective, wrote test cases, documented actual results, and reported issues.
