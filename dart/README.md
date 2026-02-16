# Interest Rate API - Dart/Flutter Client

Interest Rate is a tool for retrieving current central bank policy interest rates for major economies worldwide. It returns the latest rate along with the central bank name and effective date.

[![pub package](https://img.shields.io/pub/v/apiverve_interestrate.svg)](https://pub.dev/packages/apiverve_interestrate)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Interest Rate API](https://apiverve.com/marketplace/interestrate?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_interestrate: ^1.1.14
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
      'country': 'US'
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
    "rate": 3.75,
    "date": "2026-02-05",
    "lastUpdated": "2026-02-05T05:00:00.000Z"
  }
}
```

## API Reference

- **API Home:** [Interest Rate API](https://apiverve.com/marketplace/interestrate?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/interestrate](https://docs.apiverve.com/ref/interestrate?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
