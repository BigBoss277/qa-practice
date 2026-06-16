# Test Design Techniques

## Simple Explanation

Test design techniques help a tester decide what to test and how to design a useful set of test cases. The goal is not to test every possible input, but to choose a smaller and meaningful set of scenarios that can find important defects.

Test design techniques are grouped into three main categories:

- Black-box test techniques - design tests based on requirements, inputs, outputs, and visible behavior, without looking at the internal code.
- White-box test techniques - design tests based on internal code structure, logic, branches, paths, or code coverage.
- Experience-based test techniques - design tests based on tester experience, intuition, checklists, common mistakes, and exploratory testing.

Examples of black-box techniques:

- Equivalence partitioning - divide inputs into groups that should behave similarly.
- Boundary value analysis - test values at the edges of valid and invalid ranges.
- Decision table testing - test combinations of conditions and expected results.
- State transition testing - test how the system moves between states after actions.

## Example From My Project

Most of my current examples are black-box and experience-based.

In the login page project, I can use equivalence partitioning:

- valid username and valid password
- invalid username and valid password
- valid username and invalid password
- empty password field
- username with special characters
- username with leading or trailing spaces

I can also use a decision table for login scenarios, because the result depends on combinations of username and password validity.

In the shopping cart project, I can use boundary value analysis for quantity-related checks:

- minimum valid quantity
- normal quantity
- very large quantity
- invalid or unrealistic quantity

My exploratory notes are examples of experience-based testing, because I used observation, curiosity, and edge-case thinking to find unusual behavior, such as empty search feedback, Enter key behavior, and very large quantity input.

I do not have real white-box examples yet because I did not inspect or test internal application code.

## Interview Answer

Test design techniques are methods that help testers create effective test cases in a systematic way.

They help reduce random testing and avoid trying every possible input. Instead, a tester chooses representative values, boundary values, important combinations, states, or scenarios based on requirements and risk.

In my projects, I mostly used black-box and experience-based techniques. For example, I tested login with valid and invalid credentials, checked edge cases like empty fields and leading spaces, and used exploratory testing to find usability and validation issues.

I have not practiced white-box techniques yet, because those require access to the internal code or code structure.
