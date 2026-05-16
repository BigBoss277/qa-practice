# Exploratory Testing Notes

## Feature tested
Practice Test Login page  
`https://practicetestautomation.com/practice-test-login/`

## Environment
- Opera GX 128.0.5807.97, Windows

## Session time
- More than 1 hour

## Goal of session
Explore login page behavior with unusual, edge-case, and mixed input scenarios.

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

## Conclusion
The login page is generally stable and provides clear validation messages.  
The most notable issues are missing response on Enter key submission and incorrect handling of leading/trailing spaces.  
Compared to previous tested sites, this login page gives more precise feedback for invalid username and password cases.
