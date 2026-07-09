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
- Query parameters must be attached to a valid base URL. If only Params are entered without a valid endpoint URL, Postman cannot send the request and shows an invalid URL error.
- For the first successful GET request, the base URL was `https://postman-echo.com/get`, and Postman generated the full URL with query parameters: `https://postman-echo.com/get?name=Maksim&role=QA`.

## Conclusion

This practice helped me understand how to check status codes, response bodies, query parameters, and JSON payloads in Postman.
