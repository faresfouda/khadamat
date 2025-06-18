class TopLevelCategory {
  int? id;
  String? name;
  String? image_url;
  String? description;
  TopLevelCategory({
    this.id,
    this.name,
    this.image_url,
    this.description,
  });
  factory TopLevelCategory.fromJson(Map<String, dynamic> json) {
    return TopLevelCategory(
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


