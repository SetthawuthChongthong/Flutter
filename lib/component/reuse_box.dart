import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class ReuseBox extends StatelessWidget {
  //const ReuseBox({Key? key}) : super(key: key);

  const ReuseBox(
      {@required this.color, @required this.icon, @required this.txtDesc});
  //Property
  final String? txtDesc;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: color, // Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon, //Icons.book,
                size: 50.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                '$txtDesc', //'Ordbog',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
