class User {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? role;
  String? token;

  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.role,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'role': role,
    };
  }
}
