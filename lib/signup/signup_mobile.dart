import 'package:ecommerce/generalUI/generalUI.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SignUpMobile extends StatefulWidget {
  @override
  _SignUpMobileState createState() => _SignUpMobileState();
}

class _SignUpMobileState extends State<SignUpMobile> {
  String _name, _email, _password, _confirmpassword, _phone;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "Name",
          labelStyle: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          hintText: "Enter your full name",
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
            return "Name can not be empty";
          } else if (!value.contains("^[A-Z]'?[- a-zA-Z]( [a-zA-Z])*")) {
            return "Invalid Name";
          }
        },
        onSaved: (String value) => _name = value, //Enter here everything,
      ),
    );
  }

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
        validator: (String value) {},
        onSaved: (String value) => _email = value, //Enter here everything,
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
          hintText: "Enter your password here (min 6 char)",
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
          //use validator here
        },
        onSaved: (String value) => _password = value, //Enter here everything,
      ),
    );
  }

  Widget _buildConfirmPassword() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "Confirm Password",
          labelStyle: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          hintText: "Confirm your password",
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
          //use validator here
        },
        onSaved: (String value) =>
            _confirmpassword = value, //Enter here everything,
      ),
    );
  }

  Widget _buildPhone() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "Phone",
          labelStyle: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          hintText: "Enter your valid phone number",
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
          //use validator here
        },
        onSaved: (String value) => _phone = value, //Enter here everything,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GeneralUI(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Lottie.asset("assets/signUp.json"),
              ),
              SizedBox(
                height: 30,
              ),
              _buildName(),
              SizedBox(
                height: 20,
              ),
              _buildEmail(),
              SizedBox(
                height: 20,
              ),
              _buildPassword(),
              SizedBox(
                height: 20,
              ),
              _buildConfirmPassword(),
              SizedBox(
                height: 20,
              ),
              _buildPhone(),
              SizedBox(
                height: 20,
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

                      /* if (_email == "bihim" && _password == "123456") {
                        print("Enter");
                      } else {
                        print("Dont enter");
                      } */
                      //apply here all logics
                    },
                    child: Text(
                      "Sign Up",
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
