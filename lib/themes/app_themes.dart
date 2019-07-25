import 'package:flutter/material.dart';
import 'package:sound_box/themes/font_family.dart';

class AppThemes {
  static ThemeData AppThemeBlack() {
    return ThemeData(
      accentColor: Colors.transparent,
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      fontFamily: FontFamily.PoppinsRegular,
    );
  }

  static TextTheme getTextThemeForBlack(BuildContext context) {
    return TextTheme(
      headline: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
      title: TextStyle(
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold
      ),
      body1: TextStyle(
        fontSize: 26.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal
      ),
    );
  }
}
