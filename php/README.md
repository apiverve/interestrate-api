# Interest Rate API - PHP Package

Interest Rate retrieves central bank policy rates for 22 major economies by country code. It delivers the latest interest rate percentage, central bank name, recorded date, and whether the rate moved up, down, or remained unchanged, while paid plans add the 12-month change, the 12-month high, low and average, and the last 12 monthly rates.

## Installation

Install via Composer:

```bash
composer require apiverve/interestrate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Interestrate\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'country' => 'US',
    'date' => '2024-06',
    'history' => true,
    'changes' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Interestrate\Client;
use APIVerve\Interestrate\Exceptions\APIException;
use APIVerve\Interestrate\Exceptions\ValidationException;

try {
    $response = $client->execute(['country' => 'US', 'date' => '2024-06', 'history' => true, 'changes' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/interestrate?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/interestrate?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/interestrate?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
