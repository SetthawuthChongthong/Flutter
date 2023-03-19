import 'package:flutter/material.dart';
import 'package:myproject/page1_home.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class Registerpage extends StatelessWidget {
  Registerpage({Key? key}) : super(key: key);

  TextEditingController username = TextEditingController();
  TextEditingController onepassword = TextEditingController();
  TextEditingController repassword = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          title: Text(
            'ETShop Register',
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create Your account!',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(20.0)),
                    Image.asset(
                      'assets/images/ETshop.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    Text(
                      'InputData Username & passwords',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(10.0)),
                    TextField(
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                      controller: username,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Username',
                        icon: Icon(Icons.person),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(10.0)),
                    TextField(
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                      controller: email,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter email address',
                        icon: Icon(Icons.email),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(10.0)),
                    TextField(
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                      controller: onepassword,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Password',
                        icon: Icon(Icons.key),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(10.0)),
                    TextField(
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                      controller: repassword,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Repeat Password',
                        icon: Icon(Icons.app_registration_outlined),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: const EdgeInsets.all(10.0)),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.grey),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Loginpage()));
                            },
                            child: Text('Register'))
                      ],
                    ),
                  ]),
            ),
          ),
        ));
  }
}
