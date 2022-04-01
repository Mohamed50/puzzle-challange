import 'package:flutter/material.dart';
import 'package:puzzle_hack/modules/home/controller/home_actions.dart';
import '../../data/puzzle_model.dart';

class PuzzleTile extends StatelessWidget {
  final PuzzleModel puzzleModel;

  const PuzzleTile({Key? key, required this.puzzleModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _move,
      child: Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: puzzleModel.image,
      ),
    );
  }

  void _move() {
    HomeActions.instance.move(puzzleModel.realIndex);
  }
}
