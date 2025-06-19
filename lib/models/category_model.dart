class CategoryModel {
  int? id;
  String? name;
  String? image_url;
  String? description;
  CategoryModel({
    this.id,
    this.name,
    this.image_url,
    this.description,
  });
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
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