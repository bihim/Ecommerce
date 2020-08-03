import 'package:ecommerce/generalUI/generalUI.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginMobile extends StatefulWidget {
  @override
  _LoginMobileState createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "Email",
          labelStyle: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          hintText: "Enter your email here",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Email is empty';
          }
        },
        onSaved: (String value) => _email = value,
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "Password",
          labelStyle: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          hintText: "Enter your password here",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Password is empty';
          } else if (value.length < 6) {
            return 'Password is too short';
          }
        },
        obscureText: true,
        onSaved: (String value) => _password = value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GeneralUI(),
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Lottie.asset(
                    "assets/loginUp.json",
                    height: 280,
                    width: 280,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                _buildEmail(),
                SizedBox(
                  height: 50,
                ),
                _buildPassword(),
                SizedBox(
                  height: 50,
                ),
                Flexible(
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();

                        print(_email);
                        print(_password);

                        if (_email == "bihim" && _password == "123456") {
                          print("Enter");
                        } else {
                          print("Dont enter");
                        }
                        //apply here all logics
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
                  child: FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Still not a member? Sign Up!",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
