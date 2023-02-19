import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/presentation/common/action_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreatePlanDialog extends StatelessWidget {
  const CreatePlanDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return AlertDialog(
      backgroundColor: kWhiteColor,
      elevation: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 25.px),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        width: Config.screenWidth! - 5.px,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Create Plan',
              style: kPoppinsBold.copyWith(
                color: kDarkBlueColor,
                fontSize: 16.px,
              ),
            ),
            SizedBox(height: 20.px),
            CreatePlanTextField(
              hintText: 'Type Plan Name',
              hintStyle: kPoppinsMedium.copyWith(
                color: kTextColor,
                fontSize: 14.px,
              ),
            ),
            SizedBox(height: 15.px),
            CreatePlanTextField(
              hintText: 'Type estimated days here',
              hintStyle: kInterRegular.copyWith(
                color: const Color(0xff353535).withOpacity(.5),
                fontSize: 14.px,
              ),
            ),
            SizedBox(
              height: 20.px,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 34.px, vertical: 15.px),
                  buttonText: 'Cancel',
                  height: 48.px,
                  width: 120.px,
                  onTap: () {
                    Get.back();
                  },
                  isFocused: false,
                ),
                SizedBox(
                  width: 15.px,
                ),
                ActionButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 34.px, vertical: 15.px),
                  buttonText: 'Apply',
                  height: 48.px,
                  width: 120.px,
                  onTap: () {},
                  isFocused: true,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CreatePlanTextField extends StatelessWidget {
  final String? hintText;
  final TextStyle? hintStyle;
  const CreatePlanTextField({
    super.key,
    required this.hintStyle,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48.px,
      child: TextField(
        style: const TextStyle(color: kTextColor),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.px),
          hintText: hintText,
          hintStyle: hintStyle,
          border: _buildPlanInputBorder(),
          enabledBorder: _buildPlanInputBorder(),
          focusedBorder: _buildPlanInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _buildPlanInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: const Color(0xffE4E4E4),
        width: 1.px,
      ),
    );
  }
}
