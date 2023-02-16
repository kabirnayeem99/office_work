import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app/config/app_style.dart';
import '../../../app/config/config.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          // height: 90,
          // width: 69,

          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kLightWhiteColor,
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
                  fontSize: Config.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
