import 'package:flutter/animation.dart';
import 'package:math/ui/app/timeprovider.dart';

import '../../core/app_constant.dart';

class GameProvider<T> extends TimeProvider {
  late List<T> list;
  late int index;
  late double currentScore;
  late double oldScore;
  late T currentState;
  late String result;

  final GameCategoryType gameCategoryType;
  GameProvider({required TickerProvider vsync, required this.gameCategoryType})
      : super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));

  List<T> getList(int level) {
    switch (gameCategoryType) {
      case (GameCategoryType.CALCULATOR):
        {
          
        }
        break;

      default:
        {}
    }
  }
}
