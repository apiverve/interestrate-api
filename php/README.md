# Interest Rate API - PHP Package

Interest Rate is a tool for retrieving current and historical central bank policy interest rates for major economies worldwide. It returns the latest rate along with the central bank name and effective date.

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
    'date' => '2024-06'
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
    $response = $client->execute(['country' => 'US', 'date' => '2024-06']);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/interestrate?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/interestrate?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/interestrate?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
