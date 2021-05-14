import 'package:flutter/material.dart';
import 'common_input.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;
  final EdgeInsets margin;

  const PasswordInput({Key key, @required this.controller, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonInput(
      controller: controller,
      obscureText: true,
      margin: margin,
      label: "Password",
      validator: (String password) {
        if (password.isEmpty) {
          return 'Enter your password';
        } else if (password.length < 6) {
          return 'Password should contain at least 6 characters';
        }
        return null;
      },
    );
  }
}