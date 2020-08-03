import 'package:flutter/material.dart';

class GeneralUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -67,
          child: Image.asset("assets/login_m1.png"),
        ),
        Center(
          child: Image.asset("assets/login_m2.png"),
        ),
        Positioned(
          bottom: -67,
          left: -20,
          child: Image.asset("assets/login_m3.png"),
        ),
      ],
    );
  }
}
