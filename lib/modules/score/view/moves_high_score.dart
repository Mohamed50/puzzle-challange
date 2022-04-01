import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/customs/custom_text.dart';
import 'package:puzzle_hack/modules/score/controller/score_view_model.dart';

class MovesHighScoreWidget extends GetWidget<ScoreViewModel> {
  const MovesHighScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.workspaces_filled, size: 18.0, color: Colors.white.withOpacity(0.8),),
        const SizedBox(width: 2.0),
        Obx(
          () => CustomText(
            '${controller.highScoreMoves}',
            color: Colors.white.withOpacity(0.8),
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
