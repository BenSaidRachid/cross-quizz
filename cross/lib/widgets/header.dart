import 'package:flutter/material.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/widgets/custom_text.dart';

class Header extends StatelessWidget {
  final String value;
  final EdgeInsets margin;

  const Header({Key key, this.value, this.margin = const EdgeInsets.all(0)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      value: value,
      color: Colors.white,
      alignment: Alignment.centerLeft,
      margin: margin,
      fontSize: 3.68 * SizeConfig.textMultiplier,
    );
  }
}
