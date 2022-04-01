import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_hack/modules/audio/controller/audio_view_model.dart';

class AudioIcon extends GetWidget<AudioViewModel> {
  const AudioIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.handleAudioClick,
      child: Obx(
        () => Icon(
          controller.isAudioEnabled ? Icons.volume_up : Icons.volume_off,
          size: 24.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
