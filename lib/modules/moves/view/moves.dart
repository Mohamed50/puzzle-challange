import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/customs/custom_text.dart';
import '../controller/moves_view_model.dart';

class MovesWidget extends GetWidget<MovesViewModel> {
  const MovesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomText(
        'Moves: ${controller.moves}',
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }
}
