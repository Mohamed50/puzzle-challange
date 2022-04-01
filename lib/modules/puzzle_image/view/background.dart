import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/modules/puzzle_image/controller/puzzle_image_view_model.dart';

class Background extends GetWidget<PuzzleImageViewModel> {
  final Widget body;

  const Background({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: controller.color,
        child: body,
      ),
    );
  }
}
