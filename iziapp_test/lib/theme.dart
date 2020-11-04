import 'package:flutter/material.dart';
import 'contants.dart' as constants;
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: constants.kPrimaryColor,
    colorScheme: ColorScheme.light(secondary: constants.kSecondaryColor),
    backgroundColor: constants.kPrimaryColor,
    iconTheme: IconThemeData(color: constants.kIconPrimaryColor),
    primaryIconTheme: IconThemeData(color: constants.kIconPrimaryColor),
    accentIconTheme: IconThemeData(color: constants.kIconSecondaryColor),
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      button: TextStyle(color: constants.kPrimaryColor),
      headline6: TextStyle(color: constants.kTextPrimaryColor, fontSize: 30, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(color: constants.kTextPrimaryColor),
      bodyText2: TextStyle(color: constants.kTextSecondaryColor)
    )

  );
}

AppBarTheme appBarTheme = AppBarTheme(color: constants.kPrimaryColor);
