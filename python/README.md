Interest Rate API
============

Interest Rate retrieves central bank policy rates for 22 major economies by country code. It delivers the latest interest rate percentage, central bank name, recorded date, and whether the rate moved up, down, or remained unchanged.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-interestrate.svg)](https://pypi.org/project/apiverve-interestrate/)

This is a Python wrapper for the [Interest Rate API](https://apiverve.com/marketplace/interestrate?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-interestrate
```

Using `pip3`:

```bash
pip3 install apiverve-interestrate
```

---

## Configuration

Before using the Interest Rate API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_interestrate.apiClient import InterestrateAPIClient

# Initialize the client with your APIVerve API key
api = InterestrateAPIClient("[YOUR_API_KEY]")

query = {
    "country": "US",
    "date": "2024-06"
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Interest Rate API documentation is found here: [https://docs.apiverve.com/ref/interestrate](https://docs.apiverve.com/ref/interestrate?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_interestrate.apiClient import InterestrateAPIClient

# Initialize the client with your APIVerve API key
api = InterestrateAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "country": "US",
    "date": "2024-06"
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "US",
    "countryName": "United States",
    "centralBank": "Federal Reserve",
    "rate": 4.5,
    "date": "2026-02-05",
    "lastUpdated": "2026-02-05T05:00:00.000Z",
    "lastChanged": "2026-01-29",
    "change": -0.25,
    "changeDirection": "down",
    "previousRate": 4.75
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `InterestrateAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_interestrate.apiClient import InterestrateAPIClient, InterestrateAPIClientError

api = InterestrateAPIClient("[YOUR_API_KEY]")

query = {
    "country": "US",
    "date": "2024-06"
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except InterestrateAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_interestrate.apiClient import InterestrateAPIClient, InterestrateAPIClientError

api = InterestrateAPIClient("[YOUR_API_KEY]")

query = {
    "country": "US",
    "date": "2024-06"
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except InterestrateAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_interestrate.apiClient import InterestrateAPIClient, InterestrateAPIClientError

query = {
    "country": "US",
    "date": "2024-06"
}

# Using context manager ensures proper cleanup
with InterestrateAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except InterestrateAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_interestrate.apiClient import InterestrateAPIClient

# Enable debug mode
api = InterestrateAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "country": "US",
    "date": "2024-06"
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_interestrate.apiClient import InterestrateAPIClient

api = InterestrateAPIClient("[YOUR_API_KEY]")

query = {
    "country": "US",
    "date": "2024-06"
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
