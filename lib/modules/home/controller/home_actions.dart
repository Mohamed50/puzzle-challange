import 'package:get/get.dart';
import 'package:puzzle_hack/modules/audio/controller/audio_view_model.dart';
import 'package:puzzle_hack/modules/moves/controller/moves_view_model.dart';
import 'package:puzzle_hack/modules/puzzle/controller/puzzle_view_model.dart';
import 'package:puzzle_hack/modules/puzzle_image/controller/puzzle_image_view_model.dart';
import 'package:puzzle_hack/modules/score/controller/score_view_model.dart';
import 'package:puzzle_hack/modules/setting/controller/setting_view_model.dart';
import 'package:puzzle_hack/modules/timer/controller/timer_view_model.dart';

class HomeActions {
  static final HomeActions _mInstance = HomeActions._();

  static HomeActions get instance => _mInstance;

  late SettingViewModel _settingViewModel;
  late PuzzleImageViewModel _puzzleImageViewModel;
  late PuzzleViewModel _puzzleViewModel;
  late MovesViewModel _movesViewModel;
  late TimerViewModel _timerViewModel;
  late AudioViewModel _audioViewModel;
  late ScoreViewModel _scoreViewModel;

  HomeActions._() {
    _settingViewModel = Get.find();
    _puzzleImageViewModel = Get.find();
    _puzzleViewModel = Get.find();
    _movesViewModel = Get.find();
    _timerViewModel = Get.find();
    _audioViewModel = Get.find();
    _scoreViewModel = Get.find();
  }

  /// <<<------------------------------- actions methods

  void shuffle() async {
    _settingViewModel.startGame((){
      _puzzleViewModel.shuffle();
      _audioViewModel.shuffleSound();
    });
    _movesViewModel.restart();
    _timerViewModel.start();
  }

  void move(int index) async {
    _puzzleViewModel.swap(index);
    _movesViewModel.plus();
    _audioViewModel.moveSound();
    _checkIfSolved();
  }

  void _checkIfSolved(){
    if(_puzzleViewModel.checkIfSolved()){
      Get.snackbar('Congrats', 'You Win!!!');
      _audioViewModel.winSound();
      _scoreViewModel.isHighScore(_timerViewModel.seconds, _movesViewModel.moves);
    }
  }

  finishGame(){
    _timerViewModel.cancel();
  }


  void onImageTap(int value) {
    _puzzleImageViewModel.selectImage(value);
    _puzzleViewModel.selectImage(_puzzleImageViewModel.assetPath);
    finishGame();
  }

/// actions methods ------------------------------->>>


}