import 'package:drinkapp/core/utils/assets_path.dart';

class DrinkModel {
  final String image;
  final String name;
  final String price;
  final String title;

  DrinkModel({
    required this.image,
    required this.name,
    required this.price,
    required this.title,
  });

  static List<DrinkModel> drinks = [
    DrinkModel(
      image: AssetsPath.banana,
      name: "Banana",
      price: "20",
      title: "Banana Flavor",
    ),
    DrinkModel(
      image: AssetsPath.brownie,
      name: "Brownie Island",
      price: "10",
      title: "Brownie Island Flavor",
    ),
    DrinkModel(
      image: AssetsPath.carmel,
      name: "Caramel",
      price: "8",
      title: "Caramel Flavor",
    ),
    DrinkModel(
      image: AssetsPath.chocolate,
      name: "Chocolate",
      price: "11",
      title: "Chocolate Flavor",
    ),
    DrinkModel(
      image: AssetsPath.peanut,
      name: "Peanut",
      price: "16",
      title: "Peanut Flavor",
    ),
    DrinkModel(
      image: AssetsPath.saltedCaramel,
      name: "Salted Caramel",
      price: "12",
      title: "Salted Caramel Flavor",
    ),
    DrinkModel(
      image: AssetsPath.strawberry,
      name: "Strawberry",
      price: "12",
      title: "Strawberry Flavor",
    ),
    DrinkModel(
      image: AssetsPath.banana,
      name: "Banana",
      price: "20",
      title: "Banana Flavor",
    ),
    DrinkModel(
      image: AssetsPath.brownie,
      name: "Brownie Island",
      price: "10",
      title: "Brownie Island Flavor",
    ),
    DrinkModel(
      image: AssetsPath.carmel,
      name: "Caramel",
      price: "8",
      title: "Caramel Flavor",
    ),
    DrinkModel(
      image: AssetsPath.chocolate,
      name: "Chocolate",
      price: "11",
      title: "Chocolate Flavor",
    ),
    DrinkModel(
      image: AssetsPath.peanut,
      name: "Peanut",
      price: "16",
      title: "Peanut Flavor",
    ),
    DrinkModel(
      image: AssetsPath.saltedCaramel,
      name: "Salted Caramel",
      price: "12",
      title: "Salted Caramel Flavor",
    ),
    DrinkModel(
      image: AssetsPath.strawberry,
      name: "Strawberry",
      price: "12",
      title: "Strawberry Flavor",
    ),
  ];
}
