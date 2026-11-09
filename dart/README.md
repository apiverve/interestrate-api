# Interest Rate API - Dart/Flutter Client

Interest Rate retrieves central bank policy rates for 22 major economies by country code. It delivers the latest interest rate percentage, central bank name, recorded date, and whether the rate moved up, down, or remained unchanged, while paid plans add the 12-month change, the 12-month high, low and average, and the last 12 monthly rates.

[![pub package](https://img.shields.io/pub/v/apiverve_interestrate.svg)](https://pub.dev/packages/apiverve_interestrate)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Interest Rate API](https://apiverve.com/marketplace/interestrate?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_interestrate: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_interestrate/apiverve_interestrate.dart';

void main() async {
  final client = InterestrateClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'country': 'US',
      'date': '2024-06',
      'history': true,
      'changes': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Interest Rate API](https://apiverve.com/marketplace/interestrate?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/interestrate](https://docs.apiverve.com/ref/interestrate?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
