import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../page/game.dart';

class DashboardButtonView extends StatelessWidget {
  final Function onTab;
  final String title;

  const DashboardButtonView({
    required this.onTab,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen()));
      },
      child: Container(
        width: 80.w,
        height: 15.h,
        alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 1.h),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            image: DecorationImage(
                image: AssetImage("assets/images/button.png"),
                fit: BoxFit.fitWidth)),
        child: Text(
          title,
          style: GoogleFonts.inder(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 19.sp),
        ),
      ),
    );
  }
}
