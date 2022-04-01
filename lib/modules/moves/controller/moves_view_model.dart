import 'package:get/get.dart';

class MovesViewModel extends GetxController{

  final RxInt _moves = 0.obs;
  int get moves => _moves.value;


  void plus(){
    _moves.value = _moves.value + 1;
  }

  restart(){
    _moves.value = 0;
  }

}