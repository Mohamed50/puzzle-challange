import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String? prefix;
  final String? suffix;
  final Color? color;
  final double fontSize;
  final double? letterSpacing;
  final double? height;
  final int? maxLines;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;

  const CustomText(
    this.text, {
    Key? key,
    this.prefix = '',
    this.suffix = '',
    this.color,
    this.fontSize = 14,
    this.fontWeight,
    this.height,
    this.letterSpacing,
    this.fontFamily,
    this.textAlign,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$prefix${text.tr}$suffix',
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height,
        fontFamily: fontFamily,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
