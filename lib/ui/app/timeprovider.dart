import 'package:flutter/material.dart';

import '../../core/app_constant.dart';

class TimeProvider with ChangeNotifier{
   TimeProvider({
    required TickerProvider vsync,
    required this.totalTime,
  }) {
    _animationController = AnimationController(
      vsync: vsync,
      value: 1.0,
      duration: Duration(seconds: totalTime),
    );
  }


  DialogType dialogType = DialogType.non;
  TimerStatus timerStatus = TimerStatus.restart;
  
    @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final int totalTime;
  late final AnimationController _animationController;

  void startTimer() {
    _animationController.reverse();
        timerStatus = TimerStatus.play;
        dialogType = DialogType.non;
  }

}