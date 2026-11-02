# Interest Rate API

Interest Rate retrieves central bank policy rates for 22 major economies by country code. It delivers the latest interest rate percentage, central bank name, recorded date, and whether the rate moved up, down, or remained unchanged, while paid plans add the 12-month change, the 12-month high, low and average, and the last 12 monthly rates.

[![npm version](https://img.shields.io/npm/v/@apiverve/interestrate.svg)](https://www.npmjs.com/package/@apiverve/interestrate)

This is a JavaScript wrapper for the [Interest Rate API](https://apiverve.com/marketplace/interestrate?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/interestrate
```

Using yarn:
```shell
yarn add @apiverve/interestrate
```

---

## Configuration

Before using the Interest Rate API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Interest Rate API documentation is found here: [https://docs.apiverve.com/ref/interestrate](https://docs.apiverve.com/ref/interestrate?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const interestrateAPI = require('@apiverve/interestrate');
const api = new interestrateAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  country: "US",
  date: "2024-06",
  history: false,
  changes: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  country: "US",
  date: "2024-06",
  history: false,
  changes: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  country: "US",
  date: "2024-06",
  history: false,
  changes: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "US",
    "countryName": "United States",
    "centralBank": "Federal Reserve",
    "rate": 4,
    "date": "2026-10-27",
    "lastUpdated": "2026-10-27T10:00:00.000Z",
    "lastChanged": "2026-09-17",
    "change": 0.25,
    "changeDirection": "up",
    "previousRate": 3.75,
    "change12m": 0,
    "high12m": 4,
    "low12m": 3.75,
    "average12m": 3.8125,
    "history": [
      {
        "period": "2025-11",
        "rate": 4
      },
      {
        "period": "2025-12",
        "rate": 3.75
      },
      {
        "period": "2026-01",
        "rate": 3.75
      },
      {
        "period": "2026-02",
        "rate": 3.75
      },
      {
        "period": "2026-03",
        "rate": 3.75
      },
      {
        "period": "2026-04",
        "rate": 3.75
      },
      {
        "period": "2026-05",
        "rate": 3.75
      },
      {
        "period": "2026-06",
        "rate": 3.75
      },
      {
        "period": "2026-07",
        "rate": 3.75
      },
      {
        "period": "2026-08",
        "rate": 3.75
      },
      {
        "period": "2026-09",
        "rate": 4
      },
      {
        "period": "2026-10",
        "rate": 4
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
