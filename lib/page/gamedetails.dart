import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class GameDetails extends StatefulWidget {
  GameDetails({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _GameDetailsState createState() => _GameDetailsState();
}

class _GameDetailsState extends State<GameDetails> {
  String text = '';
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.2,
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Bounceable(
            onTap: () {
              _controller.start();
            },
            child: Container(
              margin: EdgeInsets.only(top: 3.h),
              height: 15.h,
              child: CircularCountDownTimer(
              
                duration: 20,
              
                initialDuration: 0,
                controller:_controller,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
                ringColor: Colors.grey[300]!,
                ringGradient: null,
                fillColor: Colors.purpleAccent[100]!,
                fillGradient: null,
                backgroundColor: Colors.purple[500],
                backgroundGradient: null,
                strokeWidth: 20.0,
                strokeCap: StrokeCap.round,
                textStyle: TextStyle(
                    fontSize: 33.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textFormat: CountdownTextFormat.S,
                isReverse: true,
                isReverseAnimation: false,
                isTimerTextShown: true,
                autoStart: true,
                onStart: () {
                  debugPrint('Countdown Started');
                },
                onComplete: () {
                  debugPrint('Countdown Ended');
                },
                onChange: (String timeStamp) {
                  debugPrint('Countdown Changed $timeStamp');
                },
                timeFormatterFunction: (defaultFormatterFunction, duration) {
                  if (duration.inSeconds == 0) {
                    return "Start";
                  } else {
                    return Function.apply(defaultFormatterFunction, [duration]);
                  }
                },
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('bottom'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.px),
                            topRight: Radius.circular(50.px))),
                    height: 70.h,
                    child: Padding(
                      padding: EdgeInsets.all(20.px),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'bar',
                            style: TextStyle(color: Colors.black),
                          ),
                          GestureDetector(
                            child: Container(
                                alignment: Alignment.center,
                                color: Colors.orange,
                                width: 30.w,
                                height: 5.h,
                                child: const Text('kapat!')),
                            onTap: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
          Container(
              alignment: Alignment.center,
              height: 4.h,
              width: 20.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.w), color: Colors.green.shade400),
              child: Text(
                "5/1",
                style: GoogleFonts.inder(fontSize: 18, color: Colors.white),
              )),
          Container(
              alignment: Alignment.center,
              height: 4.h,
              width: 50.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.w), color: Colors.green.shade400),
              child: Text(
                text,
                style: GoogleFonts.inder(fontSize: 18, color: Colors.white),
              )),
          NumericKeyboard(
            onKeyboardTap: _onKeyboardTap,
            textColor: Colors.green.shade400,
            rightButtonFn: () {
              setState(() {
                text = text.substring(0, text.length - 1);
              });
            },
            rightIcon: Icon(
              Icons.backspace,
              color: Colors.green.shade400,
            ),
            leftButtonFn: () {
              print('left button clicked');
            },
            leftIcon: Icon(
              Icons.check,
              color: Colors.green.shade400,
            ),
          ),
        ],
      ),
    );
  }



  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }



}


