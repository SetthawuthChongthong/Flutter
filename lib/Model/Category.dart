import 'package:flutter/material.dart';

class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "assets/images/Guitar.png",
    title: "Guitar",
  ),
  Category(
    icon: "assets/images/Bass.png",
    title: "Bass",
  ),
  Category(
    icon: "assets/images/Drum.png",
    title: "Drum",
  ),
  Category(
    icon: "assets/images/Violence.png",
    title: "Violence",
  ),
];
