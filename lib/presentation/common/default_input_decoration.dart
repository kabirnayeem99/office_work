import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:office_work/core/util/util.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

InputDecoration defaultInputDecoration({
  required BuildContext context,
  required String hintText,
  String suffixIconPath = "",
  String prefixIconPath = "",
  bool hintBold = false,
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
      left: 20.px,
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
          color: HadithColors.blackCoral,
          fontWeight: FontWeight.w500,
          fontSize: 14.px,

          // fontFamily: GoogleFonts.poppins().fontFamily,
        ),
    suffixIcon: SizedBox(
      height: 18.px,
      width: 18.px,
      child: SvgPicture.asset(
        suffixIconPath,
        height: 18.px,
        width: 18.px,
        fit: BoxFit.scaleDown,
        colorFilter: buildColorFilterToChangeColor(HadithColors.blueUCLABlue),
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
        //colorFilter: buildColorFilterToChangeColor(HadithColors.blueUCLABlue),
      ),
    ),
  );
}
