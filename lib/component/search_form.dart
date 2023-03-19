import 'package:flutter/material.dart';
import 'package:myproject/constants.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search items...',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              'assets/images/search.png',
              width: 8.0,
              height: 8.0,
            ),
          ),
          suffixIcon: SizedBox(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(defaultPadding)))),
              child: Image.asset(
                'assets/images/filter.png',
                width: 35.0,
                height: 70.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
