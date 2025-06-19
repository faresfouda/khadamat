class Ordermodel {
  int? id;
  int? userId;
  int? serviceId;
  int? fixerId;
  String? status;
  String? scheduledAt;
  String? location;
  String? description;
  String? createdAt;
  String? updatedAt;
  String? beforeImages;
  String? afterImages;
  String? problemImages;
  String? fixer;
  String? serviceName;
  String? categoryName;
  Ordermodel({
    this.id,
    this.userId,
    this.serviceId,
    this.fixerId,
    this.status,
    this.scheduledAt,
    this.location,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.beforeImages,
    this.afterImages,
    this.problemImages,
    this.fixer,
    this.serviceName,
    this.categoryName,
  });
  factory Ordermodel.fromjson(Map<String, dynamic> json) {
    return Ordermodel(
      id: json['id'],
      userId: json['user_id'],
      serviceId: json['service_id'],
      fixerId: json['fixer_id'],
      status: json['status'],
      scheduledAt: json['scheduled_at'],
      location: json['location'],
      description: json['description'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      beforeImages: json['before_images'],
      afterImages: json['after_images'],
      problemImages: json['problem_images'],
      fixer: json['fixer']?.toString(),
      serviceName: json['service']?['name'],
      categoryName: json['service']?['category']?['name'],
    );
  }
}
