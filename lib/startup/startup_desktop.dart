import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StartupDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/login_anim.json'),
      ),
    );
  }
}
