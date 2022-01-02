import 'package:flutter/widgets.dart';

class Sz {
  static late MediaQueryData _mediaQueryData;
  static late double width;
  static late double height;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
  }

  static double getWidth(double inputWidth) {
    final screenWidth = Sz.width;
    return (inputWidth / 375) * screenWidth;
  }

  static double getHeight(double inputHeight) {
    final screenHeight = Sz.height;
    return (inputHeight / 812) * screenHeight;
  }
}
