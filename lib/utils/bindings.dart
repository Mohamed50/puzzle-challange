import 'package:get/get.dart';
import 'package:puzzle_hack/config/config.dart';
import 'package:puzzle_hack/modules/audio/controller/audio_view_model.dart';
import 'package:puzzle_hack/modules/moves/controller/moves_view_model.dart';
import 'package:puzzle_hack/modules/puzzle/controller/puzzle_view_model.dart';
import 'package:puzzle_hack/modules/puzzle_image/controller/puzzle_image_view_model.dart';
import 'package:puzzle_hack/modules/score/controller/score_view_model.dart';
import 'package:puzzle_hack/modules/score/data/score_service.dart';
import 'package:puzzle_hack/modules/timer/controller/timer_view_model.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(PuzzleImageViewModel());
    Get.put(PuzzleViewModel(Constant.greenPath));
    Get.put(TimerViewModel());
    Get.put(MovesViewModel());
    Get.put(AudioViewModel());
    Get.put(ScoreService());
    Get.put(ScoreViewModel(Get.find<ScoreService>()));
  }

}