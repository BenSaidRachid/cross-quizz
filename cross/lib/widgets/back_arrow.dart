import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz/utils/size_config.dart';
import 'package:quiz/data/colors.dart';
import 'package:quiz/data/images.dart';

class BackArrow extends StatelessWidget {
  final Function onTap;
  final EdgeInsets margin;

  const BackArrow({Key key, this.onTap, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          EdgeInsets.only(left: 8.33 * SizeConfig.widthMultiplier, top: 6.13 * SizeConfig.heightMultiplier),
      child: GestureDetector(
        child: Container(
          alignment: Alignment.centerLeft,
          child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 1.47 * SizeConfig.heightMultiplier,
                  horizontal: 3.24 * SizeConfig.widthMultiplier),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(1.23 * SizeConfig.heightMultiplier),
                color: AppColors.steelGray,
              ),
              child: SvgPicture.asset(
                Images.backArrow,
                width: 2.78 * SizeConfig.widthMultiplier ,
                height: 1.47 * SizeConfig.heightMultiplier,
                fit: BoxFit.contain,
              )
          ),
        ),
        onTap: onTap ??
                () {
              Get.back();
            },
      ),
    );
  }
}