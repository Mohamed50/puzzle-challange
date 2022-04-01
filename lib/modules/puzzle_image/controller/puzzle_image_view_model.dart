import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/config/constant.dart';



class PuzzleImageViewModel extends GetxController{

  final RxString _assetPath = Constant.greenPath.obs;
  String get assetPath => _assetPath.value;

  final Rx<Color> _color = Constant.green.obs;
  Color get color => _color.value;

  final RxInt _selectedImage = Constant.greenId.obs;
  int get selectedImage => _selectedImage.value;

  selectImage(int id){
    switch(id){
      case Constant.greenId:
        _color.value = Constant.green;
        _selectedImage.value = Constant.greenId;
        _assetPath.value = Constant.greenPath;
        break;
      case Constant.yellowId:
        _color.value = Constant.yellow;
        _selectedImage.value = Constant.yellowId;
        _assetPath.value = Constant.yellowPath;
        break;
      case Constant.blueId:
        _color.value = Constant.blue;
        _selectedImage.value = Constant.blueId;
        _assetPath.value = Constant.bluePath;
        break;
    }
  }

}