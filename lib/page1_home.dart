import 'package:flutter/material.dart';
import 'package:myproject/page2_homemenu.dart';
import 'package:myproject/page3_Register.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ETshop',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Padding(padding: const EdgeInsets.all(20.0)),
              Image.asset(
                'assets/images/ETshop.png',
                width: 200.0,
                height: 200.0,
              ),
              Text(
                'กรอกข้อมูล Username & passwords',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(padding: const EdgeInsets.all(10.0)),
              TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
                controller: name,
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
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                  icon: Icon(Icons.key),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent),
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LoginHomepage(name.text, password.text))),
                      child: Text('Login')),
                  Padding(padding: const EdgeInsets.all(10.0)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registerpage()));
                      },
                      child: Text('Register'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
