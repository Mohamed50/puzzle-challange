import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/puzzle_view_model.dart';
import '../view/widgets/puzzle_tile.dart';

class PuzzleWidget extends GetWidget<PuzzleViewModel> {
  const PuzzleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: LayoutBuilder(
          builder: (context, constraint) {
            double width = constraint.maxWidth;
            double height = constraint.maxHeight;
            double tileWidth = width / 4;
            double tileHeight = height / 4;
            return GetBuilder<PuzzleViewModel>(
              builder:(controller) => Stack(
                children: List.generate(
                  controller.tiles.length,
                  (index){
                    int positionIndex = controller.tiles[index].index;
                    int realIndex = controller.tiles[index].realIndex;
                    if(realIndex == 15){
                      return Container();
                    }
                    return AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      child: PuzzleTile(
                        puzzleModel: controller.tiles[index],
                      ),
                      width: tileWidth,
                      height: tileHeight,
                      top: ((positionIndex ~/ 4) * tileHeight),
                      left: ((positionIndex % 4) * tileWidth),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
