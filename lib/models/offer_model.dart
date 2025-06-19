class OfferModel {
  final int id;
  final String name;
  final int? categoryId;
  final String? imageUrl;
  final String? iconUrl;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final num basePrice;
  final String currencyCode;
  final String priceType;
  final Category? category;
  final String formattedPrice;

  OfferModel({
    required this.id,
    required this.name,
    this.categoryId,
    this.imageUrl,
    this.iconUrl,
    this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.basePrice,
    required this.currencyCode,
    required this.priceType,
    this.category,
    required this.formattedPrice,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'],
      name: json['name'],
      categoryId: json['category_id'],
      imageUrl: json['image_url'],
      iconUrl: json['icon_url'],
      description: json['description'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      basePrice: json['base_price'],
      currencyCode: json['currency_code'],
      priceType: json['price_type'],
      category: json['category'] != null ? Category.fromJson(json['category']) : null,
      formattedPrice: json['formatted_price'],
    );
  }


}
class Category {
  final int id;
  final String name;
  final int? parentId;

  Category({
    required this.id,
    required this.name,
    this.parentId,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      parentId: json['parent_id'],
    );
  }
}