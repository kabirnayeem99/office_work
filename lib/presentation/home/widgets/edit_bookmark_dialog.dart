import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/core/util/util.dart';
import 'package:office_work/presentation/common/action_button.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:office_work/presentation/home/widgets/color_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditBookmarkDialog extends StatelessWidget {
  const EditBookmarkDialog({
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
            EditBookmarkText(
              text: 'Edit Bookmark',
              fontColor: HadithColors.blackCharcoal,
              fontSize: 16.px,
            ),
            SizedBox(height: 24.px),
            Align(
              alignment: Alignment.centerLeft,
              child: EditBookmarkText(
                text: 'Choose Folder',
                fontColor: HadithColors.blackCoral,
                fontSize: 14.px,
              ),
            ),
            SizedBox(height: 10.px),
            Container(
              alignment: Alignment.center,
              child: TextField(
                decoration: _bookmarkDialogInputDecoration(
                  context: context,
                  hintText: 'Folder Name',
                  prefixIconPath: SvgPath.icRedFolder,
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
                      EdgeInsets.symmetric(horizontal: 34.px, vertical: 10.px),
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

class EditBookmarkText extends StatelessWidget {
  final String text;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;
  EditBookmarkText({
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
