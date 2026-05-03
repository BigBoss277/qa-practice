# Exploratory Testing Notes

## Feature tested
Practice Test Shopping cart website  
https://sauce-demo.myshopify.com

## Environment
- Opera GX 130.0.5847.58, Windows

## Session time
- More than 1 hour

## Goal of session
Explore website pages behavior with unusual, edge-case, and mixed scenarios.

## What was checked
- Valid username and password
- Invalid username
- Invalid password
- Empty field
- Special characters
- Mixed language input
- Pressing Enter instead of clicking Login
- Leading/trailing spaces

## Interesting behavior noticed
- The page provides precise validation messages
- If the username is wrong, the system shows “Your username is invalid!”
- If the password is wrong, the system shows “Your password is invalid!”
- Compared to other login pages I tested, this validation feedback felt more accurate and more specific
- However, pressing Enter did not submit the form, which stood out as unusual

## Possible issues / observations
- No response when submitting the form with the Enter key
- Leading/trailing spaces are not trimmed automatically
- The system may treat spaces as part of the username instead of handling them gracefully

