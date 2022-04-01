import 'package:flutter/material.dart';
import 'package:puzzle_hack/customs/custom_text.dart';
import 'package:puzzle_hack/modules/audio/view/audio_widget.dart';
import 'package:puzzle_hack/modules/home/controller/home_actions.dart';
import 'package:puzzle_hack/modules/moves/view/moves.dart';
import 'package:puzzle_hack/modules/puzzle_image/view/background.dart';
import 'package:puzzle_hack/modules/puzzle_image/view/image_options.dart';
import 'package:puzzle_hack/modules/score/view/moves_high_score.dart';
import 'package:puzzle_hack/modules/score/view/seconds_high_score.dart';
import 'package:puzzle_hack/modules/setting/view/game_handler.dart';
import 'package:puzzle_hack/modules/timer/view/timer.dart';
import '../../puzzle/view/puzzle.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      body: GameHandler(
        body: Background(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MovesHighScoreWidget(),
                        SecondsHighScoreWidget(),
                        AudioWidget(),
                      ],
                    ),
                  ),
                  const Header(),
                  const TimerWidget(),
                  const PuzzleWidget(),
                  ImageOptionWidget(
                    onTapImage: HomeActions.instance.onImageTap,
                  ),
                  InkWell(
                    onTap: shuffle,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 2/3,
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      child: const CustomText('Play', fontWeight: FontWeight.w700, fontSize: 28.0, color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void shuffle() {
    HomeActions.instance.shuffle();
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText(
          'Puzzle Challenge',
          fontSize: 32.0,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        const SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            MovesWidget(),
            CustomText(
              'Tiles: ${15}',
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
