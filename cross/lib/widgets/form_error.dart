import 'package:flutter/material.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/widgets/text.dart';

class FormError extends StatelessWidget {
  final String value;
  final double width;
  final EdgeInsets margin;

  const FormError({Key key, this.value, this.width, this.margin = const EdgeInsets.all(0)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppText(
      value: value,
      color: Colors.red,
      width: width,
      alignment: Alignment.centerLeft,
      margin: margin,
      fontSize: 1.47 * SizeConfig.textMultiplier,
    );
  }
}
