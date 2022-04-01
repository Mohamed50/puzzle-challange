import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SettingViewModel extends GetxController {
  final RxBool _isStarted = false.obs;

  bool get isStarted => _isStarted.value;

  final RxInt _countDown = 0.obs;

  int get countDown => _countDown.value;

  startGame(VoidCallback onSecondPassed) {
    _isStarted.value = true;
    _startCountDown(onSecondPassed);
  }

  stopGame() {
    _isStarted.value = false;
  }

  _startCountDown(VoidCallback onSecondPassed) {
    _countDown.value = 3;
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        onSecondPassed();
        _countDown.value = countDown - 1;
        if(countDown == 0) {
          timer.cancel();
        }
      },
    );
  }
}
