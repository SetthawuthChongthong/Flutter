import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:myproject/Model/Product.dart';
import 'package:myproject/component/Check_cart.dart';
import 'package:myproject/component/ColorDot.dart';
import 'package:myproject/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/icon/heart.png",
                    height: 20,
                  )))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.fromLTRB(defaultPadding,
                defaultPadding * 2, defaultPadding, defaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadius * 3),
                topRight: Radius.circular(defaultBorderRadius * 3),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Text(
                      "\฿" + product.price.toString(),
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                      "Old-school DNA gets supercharged in the all-new Charvel Limited Edition Super Stock SC1—a stylish and modified for high-performance tonal machine that’s ready to conquer"),
                ),
                const Text(
                  'Colors',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Row(
                  children: [
                    ColorDot(
                      color: const Color(0xFFBEE8EA),
                      isActive: false,
                      press: () {},
                    ),
                    ColorDot(
                      color: const Color(0xFFB141B4A),
                      isActive: true,
                      press: () {},
                    ),
                    ColorDot(
                      color: const Color(0xFFF4E5C3),
                      isActive: false,
                      press: () {},
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding * 1.0),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => CheckCart())),
                      child: Text('Add cart'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
