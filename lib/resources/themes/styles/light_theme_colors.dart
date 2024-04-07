import 'package:flutter/material.dart';
import '/resources/themes/styles/color_styles.dart';

/* Light Theme Colors
|-------------------------------------------------------------------------- */

class LightThemeColors implements ColorStyles {
  // general
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get primaryContent => const Color(0xFFF0F2F1);
  @override
  Color get primaryAccent => const Color(0xFFFF4800);

  @override
  Color get surfaceBackground => const Color(0xFFF0F2F1);
  @override
  Color get surfaceContent => const Color(0xFFBBBDBB);

  // app bar
  @override
  Color get appBarBackground => Colors.deepOrange;
  @override
  Color get appBarPrimaryContent => Colors.white;

  // buttons
  @override
  Color get buttonBackground => Colors.deepOrange;
  @override
  Color get buttonPrimaryContent => Colors.white;

  // bottom tab bar
  @override
  Color get bottomTabBarBackground => const Color.fromRGBO(255, 255, 255, 1);

  // bottom tab bar - icons
  @override
  Color get bottomTabBarIconSelected => Colors.deepOrange;
  @override
  Color get bottomTabBarIconUnselected => Colors.black54;

  // bottom tab bar - label
  @override
  Color get bottomTabBarLabelUnselected => Colors.black45;
  @override
  Color get bottomTabBarLabelSelected => Colors.black;
}
