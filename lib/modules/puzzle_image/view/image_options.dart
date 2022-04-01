import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/config/config.dart';
import 'package:puzzle_hack/modules/puzzle_image/controller/puzzle_image_view_model.dart';

class ImageOptionWidget extends GetWidget<PuzzleImageViewModel> {
  final ValueChanged<int> onTapImage;
  const ImageOptionWidget( {Key? key, required this.onTapImage,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1 / 12,
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OptionItem(assetPath: 'assets/images/green.png', selected: controller.selectedImage == Constant.greenId, onTap: () => onTapImage(Constant.greenId),),
            const SizedBox(width: 16.0),
            OptionItem(assetPath: 'assets/images/yellow.png', selected: controller.selectedImage == Constant.yellowId, onTap: () => onTapImage(Constant.yellowId),),
            const SizedBox(width: 16.0),
            OptionItem(assetPath: 'assets/images/blue.png', selected: controller.selectedImage == Constant.blueId, onTap: () => onTapImage(Constant.blueId),),
          ],
        ),
      ),
    );
  }
}

class OptionItem extends StatelessWidget {
  final String assetPath;
  final bool selected;
  final VoidCallback onTap;
  const OptionItem({Key? key, required this.assetPath, required this.selected, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: selected ? Border.all(color: Colors.white) : null,
        ),
        child: Image.asset(assetPath),
      ),
    );
  }
}

