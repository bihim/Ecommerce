import 'package:ecommerce/generalUI/generalUI.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartupMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GeneralUI(),
          /* Positioned(
            top: -67,
            child: Image.asset("assets/login_m1.png"),
          ), */
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                ),
                Text(
                  "Welcome to \n BazarCommerce",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nanumGothic(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.deepPurple,
                  ),
                )
              ],
            ),
          ),
          /* Center(
            child: Image.asset("assets/login_m2.png"),
          ), */
          Center(
            child: Image.asset(
              "assets/startup.png",
              height: 300,
              width: 300,
            ),
          ),
          /* Positioned(
            bottom: -67,
            left: -20,
            child: Image.asset("assets/login_m3.png"),
          ), */
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 30,
                          letterSpacing: 1,
                        ),
                      ),
                      color: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.roboto(
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                      color: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
