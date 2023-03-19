// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class CheckCart extends StatefulWidget {
  const CheckCart({Key? key}) : super(key: key);

  @override
  State<CheckCart> createState() => _CheckCartState();
}

class _CheckCartState extends State<CheckCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The product has already been put in the cart.',
                  style: TextStyle(fontSize: 17, color: Colors.green),
                ),
                Padding(padding: const EdgeInsets.all(20.0)),
                Image.asset(
                  'assets/images/cart.png',
                  height: 250,
                ),
                Padding(padding: const EdgeInsets.all(20.0)),
                Text(
                  'Please go to the shopping cart to checkout.',
                  style: TextStyle(fontSize: 17, color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
