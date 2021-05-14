import 'package:flutter/material.dart';
import 'package:quiz/data/colors.dart';
import 'package:quiz/utils/size_config.dart';

class AppInput extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final Function(String value) onChanged;
  final VoidCallback initInputState;
  final String hint;
  final String label;
  final String initialValue;
  final double widthPercentage;
  final bool obscureText;
  final EdgeInsets contentPadding;
  final Widget suffixIcon;
  final Widget suffixIconButton;
  final Widget prefixIcon;
  final Widget prefixIconButton;
  final EdgeInsets margin;
  final Function validator;
  final Decoration decoration;
  final Color color;
  final Color cursorColor;
  final double fontSize;
  final TextStyle style;
  final FontWeight fontWeight;
  final InputDecoration inputDecoration;
  final int minLines;
  final int maxLength;
  final int maxLines;
  final bool autofocus;

  const AppInput(
      {Key key,
        this.controller,
        this.inputType,
        this.hint,
        this.label,
        this.widthPercentage = 0.9,
        this.obscureText = false,
        this.contentPadding,
        this.suffixIcon,
        this.suffixIconButton,
        this.margin,
        this.validator,
        this.decoration,
        this.inputDecoration,
        this.color,
        this.fontSize,
        this.style,
        this.fontWeight,
        this.minLines,
        this.maxLength,
        this.maxLines,
        this.initialValue,
        this.onChanged,
        this.initInputState,
        this.autofocus = false,
        this.cursorColor,
        this.prefixIcon,
        this.prefixIconButton})
      : super(key: key);

  @override
  _AppInputState createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  void initState() {
    super.initState();
    if (widget.initInputState != null) widget.initInputState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widget.widthPercentage,
      margin: widget.margin ??
          EdgeInsets.only(bottom: 1.23 * SizeConfig.heightMultiplier),
      decoration: widget.decoration,
      child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.inputType,
          obscureText: widget.obscureText,
          validator: widget.validator,
          minLines: widget.minLines,
          maxLines: widget.maxLines ?? 1,
          maxLength: widget.maxLength,
          initialValue: widget.initialValue,
          onChanged: widget.onChanged,
          autofocus: widget.autofocus,
          cursorColor: widget.cursorColor,
          style: widget.style ??
              TextStyle(
                color: widget.color,
                fontSize: widget.fontSize ?? 1.59 * SizeConfig.textMultiplier,
                fontWeight: widget.fontWeight,
              ),
          decoration: widget.inputDecoration ??
              InputDecoration(
                hintText: widget.hint,
                labelText: widget.label,
                labelStyle: TextStyle(color: AppColors.primary),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.primary,
                        width: 0.46 * SizeConfig.widthMultiplier)),
                contentPadding: widget.contentPadding ??
                    EdgeInsets.symmetric(
                        horizontal: 3.19 * SizeConfig.heightMultiplier),
                suffixIcon: widget.suffixIcon ?? widget.suffixIconButton,
                prefixIcon: widget.prefixIcon ?? widget.prefixIconButton,
              )
      ),
    );
  }
}
