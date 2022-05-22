import 'package:flutter/material.dart';

class SizeConfig {
  static double? _screenWidth;
  static double? _screenHeight;
  static double? _blockWidth;
  static double? _blockHeight;

  static double? textMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;
  static bool? isPortrait = true;
  static bool? isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth! < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = _screenWidth! / 100;
    _blockHeight = _screenHeight! / 100;

    textMultiplier = _blockHeight;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;

    print("The Height of your phone is " + heightMultiplier.toString());
    print("The Width of your phone is " + widthMultiplier.toString());
  }
}
