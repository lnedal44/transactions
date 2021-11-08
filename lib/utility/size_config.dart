import 'package:flutter/cupertino.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  static double width = 0.0;
  static double height = 0.0;
  static double blockSizeHorizontal = 0.0;
  static double blockSizeVertical = 0.0;
  static double width05 = 0.0;
  static double width04 = 0.0;
  static double width03 = 0.0;
  static double width075 = 0.0;
  static double width1 = 0.0;
  static double height05 = 0.0;
  static double height1 = 0.0;
  static double height4 = 0.0;

  static double _safeAreaHorizontal = 0.0;
  static double _safeAreaVertical = 0.0;
  static double safeBlockHorizontal = 0.0;
  static double safeBlockVertical = 0.0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
    blockSizeHorizontal = width / 100;
    blockSizeVertical = height / 100;
    width04 = width * 0.04;
    width03 = width * 0.03;
    width05 = width * 0.05;
    width075 = width * 0.075;
    width1 = width * 0.1;
    height05 = height * 0.05;
    height1 = height * 0.1;
    height4 = height * 0.4;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (width - _safeAreaHorizontal) / 100;
    safeBlockVertical = (height - _safeAreaVertical) / 100;
  }
}
