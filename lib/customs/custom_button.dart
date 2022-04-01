import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:puzzle_hack/config/config.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;

  const AuthButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text.tr,
          style: const TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w700, color: white),
        ),
        style: authButtonStyle,
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool? enabled;
  final ButtonStyle? style;

  const DefaultButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.style, this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: onPressed,
      child: Text(
        text.tr,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: white,
        ),
      ),
      style: style ?? defaultButtonStyle,
    );
  }
}

class AuthTextButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final double width;

  const AuthTextButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: authTextButtonStyle,
      onPressed: onPressed,
      child: Text(text ?? ''),
    );
  }
}
