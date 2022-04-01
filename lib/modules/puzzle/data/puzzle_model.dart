
import 'package:flutter/cupertino.dart';

class PuzzleModel {
  final int realIndex;
  int index;
  final bool isEmpty;
  final Image image;

  PuzzleModel({ required this.realIndex, required this.index, required this.image, this.isEmpty = false,});
}
