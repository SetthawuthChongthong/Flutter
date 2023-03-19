import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/Product1.png",
    title: "Gusta 01 HH",
    price: 3200,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/Product2.png",
    title: "Fender",
    price: 31500,
  ),
  Product(
    image: "assets/images/Product3.png",
    title: "Curved ",
    price: 18000,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/Product_4.png",
    title: "Casual",
    price: 50000,
    bgColor: const Color(0xFFEEEEED),
  ),
];
