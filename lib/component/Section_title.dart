import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class Sectiontitle extends StatelessWidget {
  const Sectiontitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);

  final String title;
  final VoidCallback pressSeeAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
        TextButton(
          onPressed: pressSeeAll,
          child: const Text(
            'See All',
            style: TextStyle(color: Colors.blue, fontSize: 15.0),
          ),
        )
      ],
    );
  }
}
