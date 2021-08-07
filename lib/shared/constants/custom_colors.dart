import 'package:flutter/material.dart';

class CustomColors {
  Color _activePrimaryButton = Color.fromARGB(255, 255, 168, 41);
  Color _activeSecondaryButton = Color.fromARGB(255, 230, 230, 255);
  Color _gradientMainColor = Color(0xff22222a);
  Color _gradientSecColor = Color(0xff22222a);
  Color _appBarMainColor = Color(0xff0A6D92);

  Color getActivePrimaryButtonColor() {
    return _activePrimaryButton;
  }

  Color getActiveSecondaryButton() {
    return _activeSecondaryButton;
  }

  Color getGradientMainColor() {
    return _gradientMainColor;
  }

  Color getGradientSecondaryColor() {
    return _gradientSecColor;
  }

  Color getAppBarMainColor() {
    return _appBarMainColor;
  }
}
