class Product {
  final String name;
  final double price;
  final String imagePath;
  final String quantity;
  final String? description;
  final ProductCategory category;

  Product({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.quantity,
    this.description,
    required this.category,
  });
}

// product categories
enum ProductCategory {
  fruitsAndVegetables,
  cookingOil,
  meatAndFish,
  bakeryAndSnacks,
  dairyAndEggs,
  beverages,
}