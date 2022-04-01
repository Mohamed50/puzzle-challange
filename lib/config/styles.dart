import 'package:flutter/material.dart';

import 'config.dart';

ButtonStyle homeButtonStyle = OutlinedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 18),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
);

ButtonStyle authButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
  primary: blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
);

ButtonStyle defaultButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.all(8.0),
  primary: primaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  ),
);

ButtonStyle disabledButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.all(8.0),
  primary: darkGrey,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  ),
);

ButtonStyle positiveButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.all(8.0),
  primary: green,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  ),
);

ButtonStyle negativeButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.all(8.0),
  primary: red,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  ),
);

ButtonStyle authTextButtonStyle = TextButton.styleFrom(
  padding: const EdgeInsets.all(4.0),
  primary: blue,
  textStyle: const TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w700
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
);