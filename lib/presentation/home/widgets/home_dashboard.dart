import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
      // height: Config.blockSizeVertical! * 14,
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
            onTap: () {
              Get.dialog(
                AlertDialog(
                  backgroundColor: kWhiteColor,
                  elevation: 0,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.px, vertical: 15.px),
                      
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  content: SizedBox(
                    width: Config.screenWidth! - 5.px,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Plan',
                          style: kPoppinsBold.copyWith(
                            color: kDarkBlueColor,
                            fontSize: 16.px,
                          ),
                        ),
                        SizedBox(height: 5.px),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Type Plan Name',
                            hintStyle: kPoppinsMedium.copyWith(
                              color: kTextColor,
                              fontSize: 14.px,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xffEFF2F4),
                                width: 2.px,
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Type estimated days here',
                            hintStyle: kInterRegular.copyWith(
                              color: kTextColor,
                              fontSize: 14.px,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: const Color(0xff353535).withOpacity(.5),
                                width: 2.px,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                'Cancel',
                                style: kPoppinsMedium.copyWith(
                                  fontSize: 14.px,
                                  color: const Color(0xff404040).withOpacity(
                                    0.5,
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Apply',
                                style: kPoppinsMedium.copyWith(
                                  fontSize: 14.px,
                                  color: const Color(0xff1AA483),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
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
