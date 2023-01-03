class FoodItem {
  final String name;
  final String price;
  final String imageUrl;

  FoodItem(this.name, this.price, this.imageUrl);
}

List<FoodItem> favorite = [
  FoodItem("Bell Red Pepper", "1kg  \$4", "assets/ata.png"),
  FoodItem("Lamb Meat", "3kg  \$34", "assets/lambmeat.png"),
  FoodItem("Papaya", "3kg  \$44", "assets/paya.png"),
  FoodItem("Red Tomatoes", "1kg  \$45", "assets/pngwing.png"),
  FoodItem("Bell Red Pepper", "5kg  \$64", "assets/pngkey.png"),
  FoodItem("Green Cabbage", "5kg  \$45", "assets/cabbage.png"),
  FoodItem("Green Spinach", "4kg  \$56", "assets/carrot.png"),
  FoodItem("Ginger", "2kg  \$10", "assets/ginger.png"),
  FoodItem("Red Pepper", "5kg  \$7", "assets/ata.png"),
];

class Property {
  final String value;
  final String category;
  final String imageUrl;

  Property(this.value, this.category, this.imageUrl);
}

List<Property> property = [
  Property("100%", "Organic", "assets/organic.png"),
  Property("1 Year", "Expiration", "assets/year.png"),
  Property("80 kcal", "100 Gram", "assets/kilo.png"),
  Property("4.8", "Reviews", "assets/review.png"),
];
