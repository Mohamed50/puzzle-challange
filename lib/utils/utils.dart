import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img_lib;

class Utils{

  static String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  static List<Image> splitImage(List<int> input) {
    // convert image to image from image package
    img_lib.Image? image = img_lib.decodeImage(input);
    if(image != null) {
      int x = 0, y = 0;
      int width = (image.width / 4).round();
      int height = (image.height / 4).round();

      // split image to parts
      List<img_lib.Image> parts = <img_lib.Image>[];
      for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
          parts.add(img_lib.copyCrop(image, x, y, width, height));
          x += width;
        }
        x = 0;
        y += height;
      }

      // convert image from image package to Image Widget to display
      List<Image> output = <Image>[];
      for (var img in parts) {
        output.add(Image.memory(img_lib.encodePng(img) as Uint8List, fit: BoxFit.cover,));
      }

      return output;
    }
    return [];
  }

}