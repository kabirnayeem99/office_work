import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/core/util/util.dart';
import 'package:office_work/presentation/common/action_button.dart';
import 'package:office_work/presentation/common/default_input_decoration.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddToHifzDialog extends StatelessWidget {
  const AddToHifzDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.px)),
      insetPadding: EdgeInsets.symmetric(horizontal: 18.px),
      //backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 20.px),
        decoration: const BoxDecoration(),
        width: HadithScreen.width() * 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add To Hifz',
              style: kPoppinsBold.copyWith(
                color: kDarkBlueColor,
                fontSize: 16.px,
              ),
            ),
            SizedBox(height: 24.px),
            Container(
              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: defaultInputDecoration(
                  context: context,
                  hintText: 'Add To Previous Plan',
                  suffixIconPath: SvgPath.icDownArrow,
                ),
              ),
            ),
            SizedBox(height: 15.px),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Or Create New Plan',
                style: kPoppinsBold.copyWith(
                    color: HadithColors.blackCoral, fontSize: 14.px),
              ),
            ),
            SizedBox(height: 15.px),
            AddToHifzTextField(
              hintText: 'Type Plan Name',
              hintStyle: kPoppinsMedium.copyWith(
                color: kTextColor,
                fontSize: 14.px,
              ),
            ),
            SizedBox(height: 15.px),
            AddToHifzTextField(
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
                  onTap: () {
                    Get.back();
                  },
                  isFocused: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddToHifzTextField extends StatelessWidget {
  final String hintText;
  final TextStyle hintStyle;
  Widget? suffixIcon;
  AddToHifzTextField({
    super.key,
    required this.hintStyle,
    required this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48.px,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
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
