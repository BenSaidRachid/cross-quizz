import 'package:flutter/material.dart';
import 'package:quiz/data/colors.dart';
import 'package:quiz/utils/size_config.dart';

class CircularProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
          AppColors.primary),
      strokeWidth: 0.69 * SizeConfig.widthMultiplier,
    );
  }
}
