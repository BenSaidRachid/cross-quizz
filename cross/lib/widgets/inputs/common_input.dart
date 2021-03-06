import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz/data/colors.dart';
import 'package:quiz/widgets/text.dart';
import 'package:quiz/widgets/input.dart';
import 'package:quiz/utils/size_config.dart';

class CommonInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final Function validator;
  final EdgeInsets margin;
  final EdgeInsets contentPadding;
  final String label;
  final String hint;
  final TextStyle hintStyle;
  final bool obscureText;
  final Widget prefixIcon;
  final double fontSize;

  const CommonInput(
      {Key key,
      this.controller,
      this.inputType,
      this.validator,
      this.label = "",
      this.obscureText = false,
      this.margin = const EdgeInsets.all(0),
      this.hint,
      this.prefixIcon,
      this.contentPadding,
      this.fontSize,
      this.hintStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          if (label.isNotEmpty)
            AppText(
              value: label,
              fontSize: fontSize ?? 1.96 * SizeConfig.textMultiplier,
              alignment: Alignment.centerLeft,
              margin:
                  EdgeInsets.only(bottom: 1.96 * SizeConfig.heightMultiplier),
              color: AppColors.brightGray,
            ),
          AppInput(
            controller: controller,
            inputType: inputType,
            color: Colors.white,
            fontSize: 1.96 * SizeConfig.textMultiplier,
            fontWeight: FontWeight.w500,
            cursorColor: AppColors.secondary,
            inputDecoration: InputDecoration(
              filled: true,
              hintText: hint,
              hintStyle: hintStyle,
              fillColor: AppColors.steelGray,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.secondary,
                    width: 0.46 * SizeConfig.widthMultiplier),
                borderRadius:
                    BorderRadius.circular(2.45 * SizeConfig.heightMultiplier),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.steelGray,
                    width: 0.46 * SizeConfig.widthMultiplier),
                borderRadius:
                    BorderRadius.circular(2.45 * SizeConfig.heightMultiplier),
              ),
              contentPadding: contentPadding ??
                  EdgeInsets.symmetric(
                      horizontal: 4.63 * SizeConfig.widthMultiplier,
                      vertical: 2.94 * SizeConfig.heightMultiplier),
              prefixIcon: prefixIcon,
            ),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(2.45 * SizeConfig.heightMultiplier),
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}