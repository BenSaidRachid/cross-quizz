import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFF4F4F4),
      100: Color(0xFFE8E8E9),
      200: Color(0xFFC6C6C8),
      300: Color(0xFFA3A3A7),
      400: Color(0xFF5E5E65),
      500: Color(_primaryValue),
      600: Color(0xFF171720),
      700: Color(0xFF13131A),
      800: Color(0xFF0F0F15),
      900: Color(0xFF0C0C11),
    },
  );

  static const MaterialColor secondary = MaterialColor(
    _secondaryValue,
    <int, Color>{
      50: Color(0xFFFFFBF2),
      100: Color(0xFFFEF8E6),
      200: Color(0xFFFDEDC0),
      300: Color(0xFFFCE19A),
      400: Color(0xFFF9CB4E),
      500: Color(_secondaryValue),
      600: Color(0xFFDEA302),
      700: Color(0xFFB98802),
      800: Color(0xFF946D01),
      900: Color(0xFF795901),
    },
  );

  static const MaterialColor dark = MaterialColor(
    _darkValue,
    <int, Color>{
      50: Color(0xFFF4F4F5),
      100: Color(0xFFE8E9EA),
      200: Color(0xFFC6C8CB),
      300: Color(0xFFA4A7AC),
      400: Color(0xFF60666E),
      500: Color(_darkValue),
      600: Color(0xFF19202B),
      700: Color(0xFF151B24),
      800: Color(0xFF11161D),
      900: Color(0xFF0E1218),
    },
  );

  static const MaterialColor steelGray = MaterialColor(
    _steelGrayValue,
    <int, Color>{
      50: Color(0xFFF4F4F5),
      100: Color(0xFFE9E9EA),
      200: Color(0xFFC8C8CC),
      300: Color(0xFFA6A6AD),
      400: Color(0xFF64646F),
      500: Color(_steelGrayValue),
      600: Color(0xFF1E1E2C),
      700: Color(0xFF191925),
      800: Color(0xFF14141D),
      900: Color(0xFF101018),
    },
  );

  static const MaterialColor brightGray = MaterialColor(
    _brightGrayValue,
    <int, Color>{
      50: Color(0xFFF6F6F6),
      100: Color(0xFFECECEE),
      200: Color(0xFFD0D0D3),
      300: Color(0xFFB3B3B9),
      400: Color(0xFF7A7A85),
      500: Color(_brightGrayValue),
      600: Color(0xFF3B3B48),
      700: Color(0xFF31313C),
      800: Color(0xFF272730),
      900: Color(0xFF202027),
    },
  );

  static const MaterialColor red = MaterialColor(
    _redValue,
    <int, Color>{
      50: Color(0xFFFEF7F7),
      100: Color(0xFFFDEEEE),
      200: Color(0xFFFBD5D5),
      300: Color(0xFFF8BCBC),
      400: Color(0xFFF28A8A),
      500: Color(_redValue),
      600: Color(0xFFD54F4F),
      700: Color(0xFFB24242),
      800: Color(0xFF8E3535),
      900: Color(0xFF742B2B),
    },
  );

  static const MaterialColor green = MaterialColor(
    _greenValue,
    <int, Color>{
      50: Color(0xFFF9FEF8),
      100: Color(0xFFF2FDF1),
      200: Color(0xFFDFF9DC),
      300: Color(0xFFCCF6C6),
      400: Color(0xFFA5EF9C),
      500: Color(_greenValue),
      600: Color(0xFF72D166),
      700: Color(0xFF5FAE55),
      800: Color(0xFF4C8B44),
      900: Color(0xFF3E7237),
    },
  );

  static const int _primaryValue = 0xFF191923;
  static const int _secondaryValue = 0xFFF7B502;
  static const int _darkValue = 0xFF1C2430;
  static const int _steelGrayValue = 0xFF212131;
  static const int _brightGrayValue = 0xFF414150;
  static const int _redValue = 0xFFED5858;
  static const int _greenValue = 0xFF7FE871;

  static LinearGradient getLinearGradient({
    Color firstColor = Colors.orange,
    Color secondColor = Colors.yellow,
    double firstOpacity = 1.0,
    double secondOpacity = 1.0,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      stops: [0.0, 1.0],
      colors: [
        firstColor.withOpacity(firstOpacity),
        secondColor.withOpacity(secondOpacity)
      ], // red to yellow
    );
  }
}
