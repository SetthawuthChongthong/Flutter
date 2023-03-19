import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:myproject/Model/Category.dart';
import 'package:myproject/constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: Categorycard(
              icon: demo_categories[index].icon,
              title: demo_categories[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class Categorycard extends StatelessWidget {
  const Categorycard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 4, vertical: defaultPadding / 8),
        child: Column(
          children: [
            Image.asset(icon),
            const SizedBox(height: defaultPadding / 4),
            Text(
              title,
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black45),
            )
          ],
        ),
      ),
    );
  }
}
