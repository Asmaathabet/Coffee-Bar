import 'package:coffee_bar/screens/authenticate/register.dart';
import 'package:coffee_bar/screens/authenticate/signIn.dart';
import 'package:flutter/material.dart';

class Authenitcate extends StatefulWidget {
  @override
  _AuthenitcateState createState() => _AuthenitcateState();
}

class _AuthenitcateState extends State<Authenitcate> {
  bool showSignIn = true;

  void toggelView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn)
      return SignIn(toggelView: toggelView);
    else
      return Register(toggelView: toggelView);
  }
}
