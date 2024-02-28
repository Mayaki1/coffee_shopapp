import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: "#200",
      imagePath: "lib/images/black.png",
    ),
    Coffee(
      name: 'Latte',
      price: "#400",
      imagePath: "lib/images/latte.png",
    ),
    Coffee(
      name: 'Iced Coffee',
      price: "#600",
      imagePath: "lib/images/iced_coffee.png",
    ),
    Coffee(
      name: 'Espresso',
      price: "#800",
      imagePath: "lib/images/espresso.png",
    ),
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffessShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  void removeItemCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}
