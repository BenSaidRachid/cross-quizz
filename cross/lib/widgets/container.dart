import 'package:flutter/material.dart';
import 'package:quiz/utils/size_config.dart';

class AppContainer extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget child;

  const AppContainer({Key key, this.margin, this.padding, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: margin,
          padding: padding ?? EdgeInsets.symmetric(horizontal:  8.33 * SizeConfig.widthMultiplier),
          child: child
      ),
    );
  }
}