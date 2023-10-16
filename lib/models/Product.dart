// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:renta/screens/product%20display/display.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  // final Function()? onPressed;

  // final dynamic press;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    // required this.onPressed
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/118850103_651986965697601_3957675463991625002_n.jpg",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Alumni Set",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    
  ),
  Product(
    id: 2,
    images: [
      "assets/images/118769413_758270948239434_724700065814994840_n.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "1,000 sitter Canopy",
    price: 600000.00,
    description: description,
    rating: 4.1,
    isPopular: true,
    
    // press:  Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => const Productdisplay()),)

  ),
  Product(
    id: 3,
    images: [
      "assets/images/118787440_310466143551248_1322858051371335889_n.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vip Table of 6",
    price: 10000.00,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    
    // press:  Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => const Productdisplay()),)

  ),
  Product(
    id: 4,
    images: [
      "assets/images/118850103_651986965697601_3957675463991625002_n.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Plastic Tables",
    price: 1000,
    description: description,
    rating: 4.1,
    isFavourite: true,
    
    // press:  Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => const Productdisplay()),)

  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";



