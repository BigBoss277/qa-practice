# Incorrect Error Message Displayed When Email Field Is Empty

## Environment

- Chrome 146.0.7680.80 (64-bit)
- Windows Desktop

## Type

UX / Validation Issue

## Severity

Low

## Priority

Medium

## Preconditions

- Facebook login page is opened
- Email field is empty

## Steps to Reproduce

1. Open the Facebook login page
2. Leave the email field empty
3. Enter any password into the password field
4. Click the Log In button

## Expected Result

System should display a validation message asking the user to enter an email address or mobile number.

## Actual Result

System displays the message: "The email or mobile number you entered isn't connected to an account."

## Notes

The message may confuse the user because the problem is an empty email field, not an email address that is not connected to an account.
