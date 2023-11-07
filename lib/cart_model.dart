import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocoda", "40", "lib/images2/avocado-colored.jpg", Colors.green],
    ["Banana", "50", "lib/images2/download.jpg", Colors.yellow],
    ["Mango", "200", "lib/images2/images.jpg", Colors.yellowAccent],
    [
      "water",
          "20",
          "lib/images2/bottle-water-cartoon-illustration-53675001.jpg",
      Colors.blue,
    ],
  ];

  List _cartItems = [];
  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i <= _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
