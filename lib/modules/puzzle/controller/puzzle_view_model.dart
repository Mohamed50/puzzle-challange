import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/utils/utils.dart';
import '../data/puzzle_model.dart';

class PuzzleViewModel extends GetxController {
  int clicks = 0;


  final List<PuzzleModel> _tiles = <PuzzleModel>[];

  List<PuzzleModel> get tiles => _tiles;

  int emptyTileIndex = 15;

  PuzzleViewModel(String assetPath) {
    _fetchImage(assetPath);
  }

  Future _fetchImage(String assetPath) async {
    final byteData = await rootBundle.load(assetPath);
    List<Image> images = Utils.splitImage(byteData.buffer.asUint8List());
    int index = 0;
    for (var element in images) {
      _tiles.add(PuzzleModel(
          realIndex: index,
          index: index,
          image: element,
          isEmpty: index == 15));
      index++;
    }
    update();
  }

  selectImage(String assetPath) async {
    _tiles.clear();
    _fetchImage(assetPath);
  }

  shuffle() {
    List<PuzzleModel> temp = [];
    temp.addAll(_tiles);
    temp.shuffle();
    for (var element in _tiles) {
      element.index = temp.indexWhere((tempElement) => element.realIndex == tempElement.realIndex);
    }
    emptyTileIndex = _tiles.indexWhere((element) => element.realIndex == 15);
    update();
  }

  swap(int index) {
    int to = emptyTileIndex;
    int from = index;
    int toPosition = _tiles[to].index;
    int fromPosition = _tiles[from].index;
    if ((fromPosition == toPosition + 4) ||
        (fromPosition == toPosition - 4) ||
        (fromPosition == toPosition + 1) ||
        (fromPosition == toPosition - 1)) {
      _tiles[from].index = toPosition;
      _tiles[to].index = fromPosition;
      update();
    }
  }

  bool checkIfSolved() {
    for (int index = 0; index < _tiles.length; index++) {
      if (_tiles[index].index != index) {
        return false;
      }
    }
    return true;
  }
}
