import 'package:get/get.dart';
import 'package:puzzle_hack/modules/score/data/score_service.dart';

class ScoreViewModel extends GetxController{

  late final ScoreService _scoreService;

  final RxInt _highScoreSeconds = 0.obs;
  int get highScoreSeconds => _highScoreSeconds.value;

  final RxInt _highScoreMoves = 0.obs;
  int get highScoreMoves => _highScoreMoves.value;


  ScoreViewModel(this._scoreService){
    _fetchData();
  }

  _fetchData(){
    _fetchHighScoreSeconds();
    _fetchHighScoreMoves();
  }

  refreshData(){
    _fetchData();
  }

  _fetchHighScoreSeconds(){
    _highScoreSeconds.value = _scoreService.fetchHighScoreSecondsFromMemory();
  }

  _fetchHighScoreMoves(){
    _highScoreMoves.value = _scoreService.fetchHighScoreMovesFromMemory();
  }

  _saveHighScoreSeconds(int seconds){
    _scoreService.saveHighScoreSecondsToMemory(seconds);
  }

  _saveHighScoreMoves(int moves){
    _scoreService.saveHighScoreMovesToMemory(moves);
  }

  bool isHighScore(int seconds, int moves){
    if(_isHighScoreSeconds(seconds) && _isHighScoreMoves(moves)){
      _fetchData();
      return true;
    }
    return false;
  }

  bool _isHighScoreSeconds(int seconds){
    if(seconds < highScoreSeconds || highScoreSeconds == 0){
      _saveHighScoreSeconds(seconds);
      return true;
    }
    return false;
  }

  bool _isHighScoreMoves(int moves){
    if(moves < highScoreMoves || highScoreMoves == 0){
      _saveHighScoreMoves(moves);
      return true;
    }
    return false;
  }

}