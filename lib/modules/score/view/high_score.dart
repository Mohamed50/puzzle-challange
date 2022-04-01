import 'package:flutter/material.dart';
import 'package:puzzle_hack/modules/score/view/moves_high_score.dart';
import 'package:puzzle_hack/modules/score/view/seconds_high_score.dart';

class HighScoreWidget extends StatelessWidget {
  const HighScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        MovesHighScoreWidget(),
        SizedBox(width: 16.0),
        SecondsHighScoreWidget(),
      ],
    );
  }
}
