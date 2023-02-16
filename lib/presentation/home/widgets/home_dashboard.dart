import 'package:flutter/material.dart';

import '../../../app/config/app_style.dart';
import '../../../app/config/config.dart';
import '../../../core/assets/svg_path.dart';
import 'dashboard_single_item_design.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    Config().init(context);
    return Container(
      height: Config.blockSizeVertical! * 14,
      //width: Config.blockSizeHorizontal! * 9,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: Config.blockSizeHorizontal! * 3.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DashBoardSinngleItemDesign(
            svgPath: SvgPath.icClock,
            title: 'Last',
          ),
          DashBoardSinngleItemDesign(
            svgPath: SvgPath.icBook,
            title: 'Hifz',
          ),
          DashBoardSinngleItemDesign(
            svgPath: SvgPath.icPaperPlane,
            title: 'Jump',
          ),
          DashBoardSinngleItemDesign(
            svgPath: SvgPath.icHealthcare,
            title: 'Support',
          ),
        ],
      ),
    );
  }
}
