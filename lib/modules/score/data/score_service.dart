import 'package:get_storage/get_storage.dart';

class ScoreService {
  late GetStorage _getStorage;

  ScoreService() {
    _getStorage = GetStorage();
  }

  void saveHighScoreSecondsToMemory(int seconds) {
    _getStorage.write('highScoreSeconds', seconds);
  }

  int fetchHighScoreSecondsFromMemory() {
    int? value = _getStorage.read('highScoreSeconds');
    value ??= _getStorage.read('highScoreSeconds');
    return value ?? 0;
  }

  void removeHighScoreSecondsFromMemory() {
    _getStorage.remove('highScoreSeconds');
  }


  void saveHighScoreMovesToMemory(int seconds) {
    _getStorage.write('highScoreMoves', seconds);
  }

  int fetchHighScoreMovesFromMemory() {
    int? value = _getStorage.read('highScoreMoves');
    value ??= _getStorage.read('highScoreMoves');
    return value ?? 0;
  }

  void removeHighScoreMovesFromMemory() {
    _getStorage.remove('highScoreMoves');
  }

}