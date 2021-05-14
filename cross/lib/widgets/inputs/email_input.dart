import 'package:flutter/material.dart';
import 'common_input.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController controller;
  final EdgeInsets margin;

  const EmailInput({Key key, @required this.controller, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonInput(
      controller: controller,
      inputType: TextInputType.phone,
      label: "Email",
      margin: margin,
      validator: (String email) {
        if (email.isEmpty) {
          return 'Enter your email';
        }
        return null;
      },
    );
  }
}
