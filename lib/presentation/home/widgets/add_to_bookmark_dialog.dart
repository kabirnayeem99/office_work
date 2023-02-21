import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/buisness_logic/controllers/drop_down_controller.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/core/util/util.dart';
import 'package:office_work/presentation/common/action_button.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:office_work/presentation/home/widgets/color_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class AddToBookmarkDialog extends StatelessWidget {
  DropDownController dropDownController = Get.put(DropDownController());
  AddToBookmarkDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            AddToBookmarkText(
              text: 'Add To Bookmark',
              fontColor: HadithColors.blackCharcoal,
              fontSize: 16.px,
            ),
            SizedBox(height: 24.px),
            Align(
              alignment: Alignment.centerLeft,
              child: AddToBookmarkText(
                text: 'Choose Folder',
                fontColor: HadithColors.blackCoral,
                fontSize: 14.px,
              ),
            ),
            SizedBox(height: 10.px),
            GestureDetector(
              onTap: () {
                Get.dialog(
                  Dialog(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.px)),
                    insetPadding: EdgeInsets.symmetric(horizontal: 18.px),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.px, vertical: 20.px),
                      decoration: const BoxDecoration(),
                      width: HadithScreen.width() * 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Select Folder',
                            style: TextStyle(
                              color: HadithColors.blackCharcoal,
                              fontSize: 16.px,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                          SizedBox(height: 15.px),
                          ListView.builder(
                            itemCount: dropDownController.dropDownList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.px),
                                child: GestureDetector(
                                  onTap: () => Get.back(),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 14.px),
                                    height: 48.px,
                                    decoration: BoxDecoration(
                                        color: HadithColors.whiteAntiFlash,
                                        borderRadius:
                                            BorderRadius.circular(5.px)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          dropDownController
                                              .dropDownList[index].icon,
                                        ),
                                        SizedBox(
                                          width: 10.px,
                                        ),
                                        Text(
                                          dropDownController
                                              .dropDownList[index].title,
                                          style: TextStyle(
                                            color: HadithColors.blackCoral,
                                            fontSize: 13.px,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 15.px),
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                color: HadithColors.blackCharcoal,
                                fontSize: 14.px,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: TextField(
                  decoration: _bookmarkDialogInputDecoration(
                    enabled: false,
                    context: context,
                    hintText: 'Select Folder',
                    suffixIconPath: SvgPath.icDownArrow,
                    prefixIconPath: SvgPath.icRedFolder,
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.px),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'OR, Create a New Folder',
                style: TextStyle(
                  color: HadithColors.blackCoral,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.px,
                ),
                // style: kPoppinsBold.copyWith(
                //     color: HadithColors.blackCoral, fontSize: 14.px),
              ),
            ),
            SizedBox(height: 10.px),
            Container(
              alignment: Alignment.center,
              child: TextField(
                style: const TextStyle(
                  color: HadithColors.blackCoral,
                  decoration: TextDecoration.none,
                ),
                decoration: _bookmarkDialogInputDecoration(
                  context: context,
                  hintText: 'Example Name',
                  prefixIconPath: SvgPath.icGreenFolder,
                ),
              ),
            ),
            SizedBox(height: 22.px),
            Container(
              alignment: Alignment.centerLeft,
              height: 30.px,
              child: ListView.builder(
                itemCount: colorList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 12.px),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(7.px),
                      width: 30.px,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.px),
                        color: colorList[index],
                      ),
                      child: index == 0
                          ? Icon(
                              Icons.check_circle,
                              size: 16.px,
                              color: Colors.white,
                              fill: 0,
                            )
                          : null,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40.px),
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
                  buttonText: 'Create',
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

  InputDecoration _bookmarkDialogInputDecoration({
    required BuildContext context,
    required String hintText,
    bool enabled = true,
    String suffixIconPath = "",
    String prefixIconPath = "",
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.px),
        borderSide: BorderSide(
          width: .8,
          color: Theme.of(context).dividerColor,
        ), // BorderSide
      ),
      // OutlineInputBorder
      enabled: enabled,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.px),
        borderSide: BorderSide(
          width: .8,
          color: Theme.of(context).dividerColor,
        ), // BorderSide
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.px),
        borderSide: BorderSide(
          width: .8,
          color: Theme.of(context).dividerColor,
        ), // BorderSide
      ),
      contentPadding: EdgeInsets.only(
        left: 10.px,
        top: 13.px,
        bottom: 13.px,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.px),
        borderSide: BorderSide(
          width: .8,
          color: HadithColors.blueUCLABlue.withOpacity(0.8),
        ), // BorderSide
      ),
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: HadithColors.blackCoral.withOpacity(0.5),
            fontWeight: FontWeight.w500,
          ),

      suffixIcon: SizedBox(
        height: 18.px,
        width: 18.px,
        child: SvgPicture.asset(
          suffixIconPath,
          height: 18.px,
          width: 18.px,
          fit: BoxFit.scaleDown,
          colorFilter: buildColorFilterToChangeColor(
            HadithColors.blueUCLABlue,
          ),
        ),
      ),
      prefixIcon: SizedBox(
        height: 18.px,
        width: 18.px,
        child: SvgPicture.asset(
          prefixIconPath,
          height: 18.px,
          width: 18.px,
          fit: BoxFit.scaleDown,
          // color: colorList[2],
          //colorFilter: buildColorFilterToChangeColor(colorList[2]),
        ),
      ),
    );
  }
}

class AddToBookmarkTextField extends StatelessWidget {
  final String hintText;
  final TextStyle hintStyle;
  Widget? suffixIcon;
  AddToBookmarkTextField({
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

class AddToBookmarkText extends StatelessWidget {
  final String text;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;
  AddToBookmarkText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w600,
    this.fontColor = HadithColors.blackCoral,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    late final TextTheme textTheme = Theme.of(context).textTheme;
    late final TextStyle? titleSmallTextStyle = textTheme.titleSmall;
    return Text(
      text,
      style: titleSmallTextStyle?.copyWith(
        fontWeight: fontWeight,
        fontSize: fontSize!.px,
        color: fontColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}
