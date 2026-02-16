/// Response models for the Interest Rate API.

/// API Response wrapper.
class InterestrateResponse {
  final String status;
  final dynamic error;
  final InterestrateData? data;

  InterestrateResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory InterestrateResponse.fromJson(Map<String, dynamic> json) => InterestrateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? InterestrateData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Interest Rate API.

class InterestrateData {
  String? country;
  String? countryName;
  String? centralBank;
  double? rate;
  String? date;
  String? lastUpdated;

  InterestrateData({
    this.country,
    this.countryName,
    this.centralBank,
    this.rate,
    this.date,
    this.lastUpdated,
  });

  factory InterestrateData.fromJson(Map<String, dynamic> json) => InterestrateData(
      country: json['country'],
      countryName: json['countryName'],
      centralBank: json['centralBank'],
      rate: json['rate'],
      date: json['date'],
      lastUpdated: json['lastUpdated'],
    );
}

class InterestrateRequest {
  String country;

  InterestrateRequest({
    required this.country,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
    };
}
