class Ordermodel {
  int? id;
  int? user_id;
  int? service_id;
  int? fixer_id;
  String? status;
  String? scheduled_atle;
  String? location;
  String? description;
  String? created_at;
  String? updated_at;
  String? before_images;
  String? after_images;
  String? problem_images;
  String? fixer;
  String? service;
  String? name;
  String? category;
  Ordermodel({
    this.id,
    this.user_id,
    this.service_id,
    this.fixer_id,
    this.status,
    this.scheduled_atle,
    this.location,
    this.description,
    this.created_at,
    this.updated_at,
    this.before_images,
    this.after_images,
    this.problem_images,
    this.fixer,
    this.service,
    this.name,
    this.category,
  });
  factory Ordermodel.fromjson(Map<String, dynamic> json) {
    return Ordermodel(
      id: json['id'],
      user_id: json['user_id'],
      service_id: json['service_id'],
      fixer_id: json['fixer_id'],
      status: json['status'],
      scheduled_atle: json['scheduled_atle'],
      location: json['location'],
      description: json['description'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
      before_images: json['before_images'],
      after_images: json['after_images'],
      problem_images: json['problem_images'],
      fixer: json['fixer'],
      service: json['service'],
      name: json['name'],
      category: json['category'],
    );
  }
}
