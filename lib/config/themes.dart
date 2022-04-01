import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzle_hack/utils/themes.dart';
import 'config.dart';

ThemeData theme = createTheme(
  brightness: Brightness.light,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  primarySwatch: primarySwatch,
  background: backgroundColor,
  primaryText: Colors.black,
  secondaryText: Colors.white,
  accentColor: secondaryColor,
  divider: secondaryColor,
  buttonBackground: blue,
  buttonText: white,
  disabled: secondaryColor,
  error: red,
  fontFamily: 'noto'
);