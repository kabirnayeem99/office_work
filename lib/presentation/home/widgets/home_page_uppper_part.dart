import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/presentation/home/widgets/sahih_hadith_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
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
              height: Config.screenHeight! * .58,
              // color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: Config.screenHeight! / 2,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff0f8569),
                        Color(0xff2ab795),
                      ]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7.w),
                    bottomRight: Radius.circular(7.w),
                  )),
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
              // bottom: Config.blockSizeVertical! * 13,
              left: 0,
              right: 0,
              top: Config.screenHeight! / 3.9,
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
              top: Config.screenHeight! / 2.4.px,
              left: 15.px,
              right: 15.px,
              child:  HomeDashboard(),
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
