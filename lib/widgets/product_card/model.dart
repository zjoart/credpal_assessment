sealed class ProductCardModel {
  final String imageUrl;
  final String title;
  final String price;
  final String discount;

  const ProductCardModel({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discount,
  });
}

class DefaultProductCardModel extends ProductCardModel {
  final String logoUrl;
  const DefaultProductCardModel({
    required this.logoUrl,
    required super.imageUrl,
    required super.title,
    required super.price,
    required super.discount,
  });
}

class DiscountedProductCardModel extends ProductCardModel {
  final double discountPercentage;
  const DiscountedProductCardModel({
    required this.discountPercentage,
    required super.imageUrl,
    required super.title,
    required super.price,
    required super.discount,
  });
}
