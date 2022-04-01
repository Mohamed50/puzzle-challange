import 'package:flutter/material.dart';
import 'package:puzzle_hack/modules/audio/view/audio_icon.dart';
import 'package:puzzle_hack/modules/audio/view/music_icon.dart';

class AudioWidget extends StatelessWidget {
  const AudioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        AudioIcon(),
        SizedBox(width: 8.0),
        MusicIcon()
      ],
    );
  }
}
