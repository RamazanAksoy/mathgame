import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math/ui/page/game.dart';
import 'package:math/ui/widget/button_home.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: true,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Container(
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 12),
                            Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.white
                                      : Color(0xff212121),
                                  borderRadius: BorderRadius.circular(18)),
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/ic_trophy.svg",
                                    width: 24,
                                    height: 24,
                                  ),
                                  SizedBox(width: 5),
                                  Text("10",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Bounceable(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              Theme.of(context).brightness == Brightness.light
                                  ? "assets/images/ic_dark_mode.svg"
                                  : "assets/images/ic_light_mode.svg",
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Math Matrix",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Train Your Brain, Improve Your Math Skill",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontSize: 14),
                  ),
                  SizedBox(height: 10.h),
                  DashboardButtonView(onTab: () {
                    print("ramo");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen(),));
                    
                  }, title: "Math Puzzle"),
                  DashboardButtonView(onTab: () {}, title: "Memory Puzzle"),
                  DashboardButtonView(onTab: () {}, title: "Train Your Brain"),
                  SizedBox(height: 15.h),
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.brightness ==
                                Brightness.light
                            ? Color(0xFFf7f7f7)
                            : Color(0xff212121),
                        borderRadius: BorderRadius.circular(18)),
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text("Math Matrix by Nividata",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontWeight: FontWeight.normal)),
                          ),
                          SizedBox(width: 12),
                          Text("1.0",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(fontSize: 14)),
                        ]),
                  ),
                ],
              ),
            )));
  }
}
