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
      textTheme: GoogleFonts.nunitoTextTheme().copyWith(
          button: TextStyle(color: constants.kPrimaryColor, fontSize: 16),
          headline6: TextStyle(
              color: constants.kTextPrimaryColor,
              fontSize: 36,
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(color: constants.kTextPrimaryColor, fontSize: 16, fontWeight: FontWeight.normal,),
          bodyText2: TextStyle(color: constants.kTextSecondaryColor),
          // TextFormField style:
          headline1: TextStyle(
              color: constants.kThirdColor,
              fontSize: 14,
              backgroundColor: Colors.grey)));
}

AppBarTheme appBarTheme = AppBarTheme(color: constants.kPrimaryColor);
