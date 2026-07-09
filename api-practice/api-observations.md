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
- POST requests can send data in the request body. When `Content-Type` is `application/json`, Postman Echo returns the sent values in the response `data` and `json` fields.
- Changing a request method from GET to POST only updates the saved collection item after the request is saved.
- An empty JSON body `{}` can still return `200 OK` in Postman Echo. In this case, the response showed `data: {}` and `json: null`, so the request was processed but no JSON values were returned.
- PUT requests should be sent to an endpoint that supports PUT. Sending a PUT request to `/post` returned `404 Not Found`, but changing the endpoint to `https://postman-echo.com/put` returned `200 OK`.
- Postman Echo does not permanently update stored data. It returns the sent request body back in the response, which is useful for practicing request and response validation.

## Conclusion

This practice helped me understand how to check status codes, response bodies, query parameters, and JSON payloads in Postman.
