import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/modules/audio/controller/audio_view_model.dart';

class MusicIcon extends GetWidget<AudioViewModel> {
  const MusicIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.handleMusicClick,
      child: Obx(
        () => Icon(
          controller.isMusicEnabled ? Icons.music_note : Icons.music_off,
          size: 24.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
