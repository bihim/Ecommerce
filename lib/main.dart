import 'package:ecommerce/login/login.dart';
import 'package:ecommerce/signup/signup.dart';
import 'package:ecommerce/startup/startup.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Startup(),
        "/login": (context) => Login(),
        "/signup": (context) => SignUp(),
      },
    );
  }
}
