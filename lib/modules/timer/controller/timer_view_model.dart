import 'dart:async';

import 'package:get/get.dart';

class TimerViewModel extends GetxController{
  static const Duration secondDuration = Duration(seconds: 1);
  Timer? timer;

  final RxInt _seconds = 0.obs;
  int get seconds => _seconds.value;


  void onSecondPass(Timer timer){
    _seconds.value = _seconds.value + 1;
  }

  start(){
    _seconds.value = 0;
    if(timer?.isActive ?? false){
      cancel();
    }
    timer = Timer.periodic(secondDuration, onSecondPass);
  }

  cancel(){
    _seconds.value = 0;
    timer?.cancel();
  }

}