class Ordermodel {
  final int id;
  final int userId;
  final int serviceId;
  final int? fixerId;
  final String status;
  final DateTime scheduledAt;
  final String location;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic beforeImages;
  final dynamic afterImages;
  final dynamic problemImages;

  Ordermodel({
    required this.id,
    required this.userId,
    required this.serviceId,
    this.fixerId,
    required this.status,
    required this.scheduledAt,
    required this.location,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    this.beforeImages,
    this.afterImages,
    this.problemImages,
  });

  factory Ordermodel.fromJson(Map<String, dynamic> json) {
    return Ordermodel(
      id: json['id'],
      userId: json['user_id'],
      serviceId: json['service_id'],
      fixerId: json['fixer_id'],
      status: json['status'],
      scheduledAt: DateTime.parse(json['scheduled_at']),
      location: json['location'],
      description: json['description'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      beforeImages: json['before_images'],
      afterImages: json['after_images'],
      problemImages: json['problem_images'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'service_id': serviceId,
      'fixer_id': fixerId,
      'status': status,
      'scheduled_at': scheduledAt.toIso8601String(),
      'location': location,
      'description': description,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'before_images': beforeImages,
      'after_images': afterImages,
      'problem_images': problemImages,
    };
  }
}

class OrderResponse {
  final bool success;
  final Ordermodel data;
  final String message;

  OrderResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  factory OrderResponse.fromJson(Map<String, dynamic> json) {
    return OrderResponse(
      success: json['success'],
      data: Ordermodel.fromJson(json['data']),
      message: json['message'],
    );
  }
}






// class Ordermodel {
//   int? id;
//   int? userId;
//   int? serviceId;
//   int? fixerId;
//   String? status;
//   String? scheduledAt;
//   String? location;
//   String? description;
//   String? createdAt;
//   String? updatedAt;
//   String? beforeImages;
//   String? afterImages;
//   String? problemImages;
//   String? fixer;
//   String? serviceName;
//   String? categoryName;
//   Ordermodel({
//     this.id,
//     this.userId,
//     this.serviceId,
//     this.fixerId,
//     this.status,
//     this.scheduledAt,
//     this.location,
//     this.description,
//     this.createdAt,
//     this.updatedAt,
//     this.beforeImages,
//     this.afterImages,
//     this.problemImages,
//     this.fixer,
//     this.serviceName,
//     this.categoryName,
//   });
//   factory Ordermodel.fromjson(Map<String, dynamic> json) {
//     return Ordermodel(
//       id: json['id'],
//       userId: json['user_id'],
//       serviceId: json['service_id'],
//       fixerId: json['fixer_id'],
//       status: json['status'],
//       scheduledAt: json['scheduled_at'],
//       location: json['location'],
//       description: json['description'],
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//       beforeImages: json['before_images'],
//       afterImages: json['after_images'],
//       problemImages: json['problem_images'],
//       fixer: json['fixer']?.toString(),
//       serviceName: json['service']?['name'],
//       categoryName: json['service']?['category']?['name'],
//     );
//   }
  
// }

