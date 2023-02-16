import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/config/app_style.dart';
import '../../../app/config/config.dart';

// ignore: must_be_immutable
class DashBoardSinngleItemDesign extends StatelessWidget {
  String svgPath;
  String title;

  DashBoardSinngleItemDesign(
      {super.key, required this.svgPath, required this.title});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.px),
        child: Container(
          height: 86.px,
          width: 69.px,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kDashboardColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(svgPath),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: kPoppinsSemiBold.copyWith(
                  color: kTextColor,
                  fontSize: 12.px,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
