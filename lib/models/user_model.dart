class UserModel {
  final String name;
  final String currency;
  final String? avatarUrl;

  UserModel({
    required this.name,
    this.currency = 'USD',
    this.avatarUrl,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'currency': currency,
    'avatarUrl': avatarUrl,
  };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json['name'],
    currency: json['currency'] ?? 'USD',
    avatarUrl: json['avatarUrl'],
  );
}
