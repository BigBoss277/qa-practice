# Test Design Techniques - Login Page

## Equivalence Partitioning

The login page has one known valid username and one known valid password:

- valid username: `student`
- valid password: `Password123`

Equivalence partitioning helps divide input data into groups that should behave in a similar way.

Valid classes:
- exact valid username: `student`
- exact valid password: `Password123`

Invalid username classes:

- empty username
- incorrect username
- username with special characters
- username with mixed language input
- username with leading or trailing spaces
- any username that is not exactly `student`

Invalid password classes:

- empty password
- incorrect password
- password with leading or trailing spaces
- any password that is not exactly `Password123`

## Boundary Value Analysis

Boundary value analysis is limited for this login page because there are no visible requirements for minimum or maximum username/password length.

The fields do not show exact boundaries such as `minlength`, `maxlength`, or allowed character limits. Because of that, I cannot apply full boundary value analysis in the same way as I could for a field with clear length requirements.

However, I can still use simple edge-case checks:

- empty username
- empty password
- username with only spaces
- password with only spaces
- very long username
- very long password

These are edge-case checks, but not full boundary value analysis because the page does not define exact boundaries.

## Decision Table

The login result depends on the combination of username and password values.

| Username | Password | Expected Result |
|---|---|---|
| valid | valid | successful login |
| invalid | valid | username error |
| valid | invalid | password error |
| empty | valid | username error |
| valid | empty | password error |
| special characters | valid | username error |
| mixed language | valid | username error |
| leading/trailing spaces | valid | username error |

## Positive Testing

Positive testing checks expected behavior with valid input and normal user actions.

- Enter valid username and valid password, then click Submit.
- Verify that the user is logged in successfully.
- Verify that the success page contains the expected logged-in message.
- Verify that the Log out button is displayed after successful login.

Pressing Enter with valid credentials is also a normal user expectation, but in this project it revealed an issue because the form did not respond.

## Negative Testing

- Enter an invalid username with a valid password.
- Enter a valid username with an invalid password.
- Leave the password field empty.
- Enter special characters in the username field.
- Enter mixed language input in the username field.
- Enter valid credentials with leading or trailing spaces.

Negative testing helped verify that the login page shows error messages and does not allow invalid login attempts.

## Summary

In this project, I looked at the page requirements, identified valid and invalid input classes, understood that boundary value analysis is limited, created a decision table for username/password combinations, and separated positive and negative scenarios.

This project mostly uses black-box and experience-based test design techniques because I tested the login page from the user perspective without inspecting the internal application code.
