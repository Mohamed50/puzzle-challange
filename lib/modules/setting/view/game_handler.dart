import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/customs/custom_text.dart';
import 'package:puzzle_hack/modules/setting/controller/setting_view_model.dart';

class GameHandler extends GetWidget<SettingViewModel> {
  final Widget body;
  const GameHandler({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          body,
          Container(
            alignment: Alignment.center,
            child: controller.countDown > 0
                ? CustomText('${controller.countDown}', fontSize: 120.0, color: Colors.white, fontWeight: FontWeight.w700,)
                : Container(),
          ),
        ],
      ),
    );
  }
}
