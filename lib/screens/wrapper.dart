import 'package:coffee_bar/models/user.dart';
import 'package:coffee_bar/screens/authenticate/authenticate.dart';
import 'package:coffee_bar/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserData>(context);
    print(user);

    return Authenitcate();
  }
}
