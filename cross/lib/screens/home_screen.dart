import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text("Hello world"),
      ),
    );
  }
}
