import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/presentation/home/widgets/sahih_hadith_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/config/app_style.dart';
import '../../../app/config/config.dart';

import 'home_dashboard.dart';

class HomePageUpperPart extends StatelessWidget {
  const HomePageUpperPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              //height: Config.blockSizeHorizontal! * 150,
              height: Config.screenHeight! * .635,
              // color: Colors.red,
            ),
            Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: Config.screenHeight! / 2,
            ),
            Positioned(
              bottom: Config.blockSizeVertical! * 9,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/bg_arabic.png',
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: Config.blockSizeVertical! * 9,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(28)),
                child: Image.asset(
                  'assets/images/bg_bottom.png',
                  width: double.infinity,
                  // fit: BoxFit.fill,
                  //height: Config.blockSizeVertical! * 30,
                ),
              ),
            ),
            _buildMenuButton(),
            const SahihHadithSlider(),
            Positioned(
              bottom: Config.blockSizeVertical! * 3,
              left: 15,
              right: 15,
              child: const HomeDashboard(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMenuButton() {
    return Positioned(
      top: Config.blockSizeVertical! * 6.5,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Config.blockSizeHorizontal! * 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(SvgPath.icMenu),
            Text(
              'Al Hadith',
              style: kPoppinsBold.copyWith(
                color: kWhiteColor,
                fontSize: 20.px,
              ),
            ),
            SvgPicture.asset(
              SvgPath.icSearch,
            ),
          ],
        ),
      ),
    );
  }
}
