import 'package:ecommerce/startup/startup_desktop.dart';
import 'package:ecommerce/startup/startup_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Startup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: StartupDesktop(),
      mobile: StartupMobile(),
    );
  }
}
