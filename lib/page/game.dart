import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math/widget/button_game.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Math Puzzle",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0.2),
        body: SafeArea(
            bottom: true,
            child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 8),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 62,
                        child: Text(
                          "Each Game with simple calculation with diffrent approach.",
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                    ButtonGame(
                        onTab: () {},
                        title: "Calculator",
                        titleIcon: "assets/images/ic_calculator.svg",
                        score: "4"),
                    ButtonGame(
                        onTab: () {},
                        title: "Guess the sign?",
                        titleIcon: "assets/images/ic_guess_the_sign.svg",
                        score: "0"),
                    ButtonGame(
                        onTab: () {},
                        title: "Correct answer",
                        titleIcon: "assets/images/ic_correct_answer.svg",
                        score: "0"),
                    ButtonGame(
                        onTab: () {},
                        title: "Quick calculation",
                        titleIcon: "assets/images/ic_quick_calculation.svg",
                        score: "0"),
                  ],
                ))));
  }
}
