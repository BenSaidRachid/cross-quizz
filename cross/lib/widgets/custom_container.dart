import 'package:flutter/material.dart';
import 'package:quiz/utils/size_config.dart';

class CustomContainer extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget child;

  const CustomContainer({Key key, this.margin, this.padding, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: margin ??
              EdgeInsets.symmetric(
                  horizontal: 8.33 * SizeConfig.widthMultiplier),
          padding: padding ??
              EdgeInsets.only(top: 15.19 * SizeConfig.heightMultiplier),
          child: child),
    );
  }
}