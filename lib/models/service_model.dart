import 'package:khadamat/models/offer_model.dart';

class ServiceModel {
  final int id;
  final String name;
  final int categoryId;
  final String? imageUrl;
  final String? iconUrl;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final double basePrice;
  final String currencyCode;
  final String priceType;
  final Category category;
  final String formattedPrice;

  ServiceModel({
    required this.id,
    required this.name,
    required this.categoryId,
    this.imageUrl,
    this.iconUrl,
    this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.basePrice,
    required this.currencyCode,
    required this.priceType,
    required this.category,
    required this.formattedPrice,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'],
      name: json['name'],
      categoryId: json['category_id'],
      imageUrl: json['image_url'],
      iconUrl: json['icon_url'],
      description: json['description'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      basePrice: (json['base_price'] as num).toDouble(),
      currencyCode: json['currency_code'],
      priceType: json['price_type'],
      category: Category.fromJson(json['category']),
      formattedPrice: json['formatted_price'],
    );
  }
}

