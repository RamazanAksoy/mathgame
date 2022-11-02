import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math/page/gamedetails.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonGame extends StatelessWidget {
  final Function onTab;
  final String title;
  final String titleIcon;
  final String score;

  const ButtonGame({
    required this.onTab,
    required this.title,
    required this.titleIcon,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameDetails(title: title),
            ));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        width: 95.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/btnlightgreen.png"),
                fit: BoxFit.fitWidth)),
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      titleIcon,
                      width: 28,
                      height: 28,
                    ),
                    SizedBox(width: 22),
                    Text(title,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Divider(
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Color(0xFFeeeeee)
                        : Color(0xFFeeeeee),
                height: 1,
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text("Score:",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontSize: 14, color: Colors.white)),
                        SizedBox(width: 14),
                        SvgPicture.asset(
                          "assets/images/ic_trophy.svg",
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(width: 4),
                        Text(score.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 14, color: Colors.white)),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/images/ic_play_circle_filled.svg",
                    color: Colors.white,
                    height: 39,
                    width: 39,
                  )
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
