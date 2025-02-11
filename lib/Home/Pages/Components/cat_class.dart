import 'package:fusionxcar/consts/contant.dart';

class Category {
  String name;
  String description;
  String image;
  String price;

  Category({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });
}

// fusionxcarwash data for categories
List<Category> carCleaningProducts = [
  Category(
      name: "Interior Cleaning",
      description: "Complete interior vacuum and cleaning",
      image: imgFc2,
      price: "\$25"),
  Category(
      name: "Exterior Cleaning",
      description: "Exterior washing and waxing",
      image: imgFc2,
      price: "\$35"),
];

List<Category> carWashingProducts = [
  Category(
      name: "Basic Wash",
      description: "Exterior car washing",
      image: imgFc2,
      price: "\$15"),
  Category(
      name: "Deluxe Wash",
      description: "Exterior wash with waxing and tire cleaning",
      image: imgFc2,
      price: "\$40"),
];

List<Category> carPolishingProducts = [
  Category(
      name: "Basic Polish",
      description: "Exterior car Polishing",
      image: imgFc2,
      price: "\$15"),
  Category(
      name: "Deluxe Polish",
      description: "Exterior polishing with waxing and tire polishing",
      image: imgFc2,
      price: "\$40"),
];

// You can define similar lists for the remaining categories.
