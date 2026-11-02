/// Response models for the Interest Rate API.

/// API Response wrapper.
class InterestrateResponse {
  final String status;
  final dynamic error;
  final InterestrateData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  InterestrateResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory InterestrateResponse.fromJson(Map<String, dynamic> json) => InterestrateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? InterestrateData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Interest Rate API.

class InterestrateData {
  String? country;
  String? countryName;
  String? centralBank;
  num? rate;
  String? date;
  String? lastUpdated;
  String? lastChanged;
  num? change;
  String? changeDirection;
  num? previousRate;
  num? change12m;
  num? high12m;
  num? low12m;
  num? average12m;
  List<InterestrateDataHistoryItem>? history;

  InterestrateData({
    this.country,
    this.countryName,
    this.centralBank,
    this.rate,
    this.date,
    this.lastUpdated,
    this.lastChanged,
    this.change,
    this.changeDirection,
    this.previousRate,
    this.change12m,
    this.high12m,
    this.low12m,
    this.average12m,
    this.history,
  });

  factory InterestrateData.fromJson(Map<String, dynamic> json) => InterestrateData(
      country: json['country'],
      countryName: json['countryName'],
      centralBank: json['centralBank'],
      rate: json['rate'],
      date: json['date'],
      lastUpdated: json['lastUpdated'],
      lastChanged: json['lastChanged'],
      change: json['change'],
      changeDirection: json['changeDirection'],
      previousRate: json['previousRate'],
      change12m: json['change12m'],
      high12m: json['high12m'],
      low12m: json['low12m'],
      average12m: json['average12m'],
      history: (json['history'] as List?)?.map((e) => InterestrateDataHistoryItem.fromJson(e)).toList(),
    );
}

class InterestrateDataHistoryItem {
  String? period;
  num? rate;

  InterestrateDataHistoryItem({
    this.period,
    this.rate,
  });

  factory InterestrateDataHistoryItem.fromJson(Map<String, dynamic> json) => InterestrateDataHistoryItem(
      period: json['period'],
      rate: json['rate'],
    );
}

class InterestrateRequest {
  String country;
  String? date;
  bool? history;
  bool? changes;

  InterestrateRequest({
    required this.country,
    this.date,
    this.history,
    this.changes,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
      if (date != null) 'date': date,
      if (history != null) 'history': history,
      if (changes != null) 'changes': changes,
    };
}
