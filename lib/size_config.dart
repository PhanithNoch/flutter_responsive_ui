import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;
// init function use to get information
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context); // get width and height
    print(_mediaQueryData.size.width);

    screenWidth = _mediaQueryData.size.width; // get screen width
    screenHeight = _mediaQueryData.size.height; // get height
    blockSizeHorizontal = screenWidth / 100; // calculate screen width as %
    print("after calc $blockSizeHorizontal");
    blockSizeVertical = screenHeight / 100; // calculate screen height as %

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

double setWidthSize(double value) {
  return SizeConfig.blockSizeHorizontal * value;
}

double setHeightSize(double value) {
  return SizeConfig.blockSizeVertical * value;
}

double setFontSize(double value) {
  return SizeConfig.screenWidth * value / 100;
}
