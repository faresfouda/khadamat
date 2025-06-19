class SubCategory {
  int? id;
  String? name;
  String? image_url;
  String? description;
  SubCategory({
    this.id,
    this.name,
    this.image_url,
    this.description,
  });
  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      id: json['id'],
      name: json['name'],
      image_url: json['image_url'],
      description: json['description'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image_url': image_url,
      'description': description,
    };
  }
}