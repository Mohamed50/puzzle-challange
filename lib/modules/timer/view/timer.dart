import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/customs/custom_text.dart';
import 'package:puzzle_hack/utils/utils.dart';
import '../controller/timer_view_model.dart';

class TimerWidget extends GetWidget<TimerViewModel> {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.timer, size: 40.0, color: Colors.white,),
        Obx((){
          String time = Utils.formatTime(controller.seconds);
          return CustomText(time, fontSize: 32.0, fontWeight: FontWeight.w700, color: Colors.white,);
        }),
      ],
    );
  }



}
