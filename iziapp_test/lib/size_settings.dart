import 'package:flutter/material.dart';

class SizeSettings {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

double pHeight(double inHeight) {
  double screenHeight = SizeSettings.screenHeight;
  return ((inHeight / 812) * screenHeight); 
}

double pWidth(double inWidth) {
  double screenWidth = SizeSettings.screenWidth;
  return ((inWidth / 375) * screenWidth); 
}

