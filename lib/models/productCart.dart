import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List<String> get getList => _shopItems;
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Kenzo  Chair", "5000", "assets/images/82233526_2424869311156964_9065701259871527965_n.jpg", Colors.green,],
    ["50 sitters Canopy", "23000.00", "assets/images/97554125_1321980761335700_8985391503515915910_n.jpg", Colors.teal],
    ["1,000 sitter canopy", "100000.00", "assets/images/118769413_758270948239434_724700065814994840_n.jpg", Colors.brown],
    ["Vip Table of 6", "2000.00", "assets/images/118787440_310466143551248_1322858051371335889_n.jpg", Colors.blue],
    ["Kenzo  Chair", "5000.00", "assets/images/82233526_2424869311156964_9065701259871527965_n.jpg", Colors.green,],
    ["50 sitters Canopy", "23000.00", "assets/images/97554125_1321980761335700_8985391503515915910_n.jpg", Colors.teal],
    ["1,000 sitter canopy", "100000.00", "assets/images/118769413_758270948239434_724700065814994840_n.jpg", Colors.brown],
    ["Vip Table of 6", "2000.00", "assets/images/118787440_310466143551248_1322858051371335889_n.jpg", Colors.blue],
    
    
  ];
  List get getList => _shopItems;


  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}