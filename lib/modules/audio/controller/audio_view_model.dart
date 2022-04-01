import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:soundpool/soundpool.dart';

class AudioViewModel extends GetxController {
  int? winSoundId;
  int? moveSoundId;
  int? shuffleSoundId;

  final RxBool _isAudioEnabled = true.obs;

  bool get isAudioEnabled => _isAudioEnabled.value;

  final RxBool _isMusicEnabled = true.obs;

  bool get isMusicEnabled => _isMusicEnabled.value;

  AudioPlayer audioPlayer = AudioPlayer(playerId: 'fifty_puzzle', mode: PlayerMode.LOW_LATENCY);
  late AudioCache audioCache;

  Soundpool pool = Soundpool.fromOptions(
      options: const SoundpoolOptions(streamType: StreamType.notification));

  AudioViewModel() {
    audioCache = AudioCache(respectSilence: true, fixedPlayer: audioPlayer);
    init();
  }

  init() async {
    moveSoundId = await rootBundle
        .load("assets/sounds/move.wav")
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    winSoundId = await rootBundle
        .load("assets/sounds/win.mp3")
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    shuffleSoundId = await rootBundle
        .load("assets/sounds/shuffle.wav")
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    _enableMusic();
  }

  void _enableAudio() {
    _isAudioEnabled.value = true;
  }

  void _disableAudio() {
    _isAudioEnabled.value = false;
  }

  void _enableMusic() {
    _isMusicEnabled.value = true;
    _playMusic();
  }

  void _disableMusic() {
    _isMusicEnabled.value = false;
    _pauseMusic();
  }

  void moveSound() async {
    if (isAudioEnabled) {
      pool.play(moveSoundId!);
    }
  }

  void winSound() {
    if (isAudioEnabled) {
      pool.play(winSoundId!);
    }
  }

  void shuffleSound() {
    if (isAudioEnabled) {
      pool.play(shuffleSoundId!);
    }
  }

  void _playMusic() {
    audioCache.loop('sounds/music.mp3', volume: 0.1, stayAwake: false);
  }

  void _pauseMusic() {
    audioPlayer.stop();
  }

  void handleAudioClick() {
    if(isAudioEnabled){
      _disableAudio();
    }
    else{
      _enableAudio();
    }
  }

  void handleMusicClick() {
    if(isMusicEnabled){
      _disableMusic();
    }
    else{
      _enableMusic();
    }
  }

}
