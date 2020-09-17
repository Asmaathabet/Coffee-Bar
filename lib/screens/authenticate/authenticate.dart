import 'package:coffee_bar/screens/authenticate/register.dart';
import 'package:coffee_bar/screens/authenticate/signIn.dart';
import 'package:flutter/material.dart';

class Authenitcate extends StatefulWidget {
  @override
  _AuthenitcateState createState() => _AuthenitcateState();
}

class _AuthenitcateState extends State<Authenitcate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Register(),
    );
  }
}
