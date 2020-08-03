import 'package:ecommerce/login/login_desktop.dart';
import 'package:ecommerce/login/login_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: LoginDesktop(),
      mobile: LoginMobile(),
    );
  }
}
