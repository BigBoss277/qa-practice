# API Observations

## Goal

Practice basic API testing and document request / response behavior.

## What I Checked

- Request method
- Endpoint behavior
- Response status code
- Response body
- Query parameters
- JSON request body
- Empty values
- Special characters

## Observations

- GET requests return query parameters in the `args` field.
- POST requests return sent JSON body data in the response.
- Empty query parameter values can still be processed successfully.
- Special characters may be URL-encoded before being sent.
- API testing is useful because it shows request and response structure directly, without relying on the UI.

## Conclusion

This practice helped me understand how to check status codes, response bodies, query parameters, and JSON payloads in Postman.
