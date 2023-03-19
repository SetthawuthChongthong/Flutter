import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myproject/Model/Category.dart';
import 'package:myproject/Model/Product.dart';
import 'package:myproject/component/Categories.dart';
import 'package:myproject/component/Detail_screen.dart';
import 'package:myproject/component/ProductCard.dart';
import 'package:myproject/component/Section_title.dart';
import 'package:myproject/component/reuse_box.dart';
import 'package:myproject/component/search_form.dart';
import 'package:myproject/constants.dart';
import 'package:myproject/page1_home.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class LoginHomepage extends StatelessWidget {
  //const Loginpage({Key? key}) : super(key: key);

  final String? txtName;
  final String? txtPassword;
  const LoginHomepage(this.txtName, this.txtPassword);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('ETshop'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Loginpage();
                }),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What are you looking for?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const Text(
              'best musical instrument for you',
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const SizedBox(height: defaultPadding),
            NewProduct(),
          ],
        ),
      ),
      //Drawer
      drawer: Drawer(
        backgroundColor: Colors.orangeAccent,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Etshop'),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Music.jpg"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'User $txtName Login now',
              ),
              trailing: Icon(Icons.account_box),
            ),
            ListTile(
              onTap: () {},
              title: Text('Setting App'),
              trailing: Icon(Icons.settings_applications_outlined),
            ),
            ListTile(
                onTap: () {},
                title: Text('User Setting'),
                trailing: Icon(Icons.people)),
            ListTile(
                onTap: () {},
                title: Text('Cart'),
                trailing: Icon(Icons.shopping_cart_checkout)),
            ListTile(
                onTap: () {},
                title: Text('About App'),
                trailing: Icon(Icons.extension)),
            ListTile(
                onTap: () {},
                title: Text('after sales service'),
                trailing: Icon(Icons.supervised_user_circle)),
          ],
        ),
      ),
    );
  }
}

class NewProduct extends StatelessWidget {
  const NewProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sectiontitle(
          title: " New Product",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(product: demo_product[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
