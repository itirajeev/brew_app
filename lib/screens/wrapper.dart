import 'package:brew_app/models/user.dart';
import 'package:brew_app/screens/authenticate/authenticate.dart';
import 'package:brew_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget.

    final user = Provider.of<User>(context);
    print(user);

    //return home or authenticate

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
