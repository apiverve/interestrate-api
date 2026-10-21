# Interest Rate API - Ruby Gem

Interest Rate retrieves central bank policy rates for 22 major economies by country code. It delivers the latest interest rate percentage, central bank name, recorded date, and whether the rate moved up, down, or remained unchanged.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_interestrate'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_interestrate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_interestrate'

# Initialize the client
client = APIVerve::Interestrate::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  country: "US",
  date: "2024-06"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "US", date: "2024-06" })
  puts response["data"]
rescue APIVerve::Interestrate::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Interestrate::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Interestrate::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/interestrate?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/interestrate?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/interestrate?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
