class FixerModel {
  final int id;
  final String name;
  final String role;
  final String? email;
  final String phone;
  final String? avatarUrl;
  final double averageRating;

  FixerModel({
    required this.id,
    required this.name,
    required this.role,
    this.email,
    required this.phone,
    this.avatarUrl,
    required this.averageRating,
  });

  factory FixerModel.fromJson(Map<String, dynamic> json) {
    return FixerModel(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      email: json['email'],
      phone: json['phone'],
      avatarUrl: json['avatar_url'],
      averageRating: (json['averageRating'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'email': email,
      'phone': phone,
      'avatar_url': avatarUrl,
      'averageRating': averageRating,
    };
  }
}
