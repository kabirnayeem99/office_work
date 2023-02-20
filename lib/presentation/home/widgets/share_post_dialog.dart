import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/core/util/util.dart';
import 'package:office_work/presentation/common/action_button.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SharePostDialog extends StatelessWidget {
  const SharePostDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final TextTheme textTheme = Theme.of(context).textTheme;
    late final TextStyle? titleSmallTextStyle = textTheme.titleSmall;
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
            ShareDialogText(
              text: 'Share This Post',
              fontColor: HadithColors.blackCharcoal,
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: ShareDialogText(
                text: 'Share With Social Media',
                fontSize: 14.px,
                fontColor: HadithColors.blackCoral,
              ),
            ),
            SizedBox(height: 16.px),
            Row(
              children: [
                SocialShareButton(svgPath: SvgPath.icFacebook),
                SocialShareButton(svgPath: SvgPath.icTwitter),
                SocialShareButton(svgPath: SvgPath.icLinkdin),
                SocialShareButton(svgPath: SvgPath.icPinterest),
              ],
            ),
            SizedBox(height: 22.px),
            Align(
              alignment: Alignment.centerLeft,
              child: ShareDialogText(
                text: 'Or Copy Link',
                fontSize: 14.px,
                fontColor: HadithColors.blackCoral,
              ),
            ),
            SizedBox(height: 10.px),
            Container(
              height: 48.px,
              padding: EdgeInsets.all(10.px),
              decoration: BoxDecoration(
                color: HadithColors.ghostWhite,
                borderRadius: BorderRadius.circular(5.px),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShareDialogText(
                    text: 'shortlink.link/fddsafads12',
                    fontSize: 14.px,
                    fontWeight: FontWeight.w500,
                    fontColor: HadithColors.blackCoral.withOpacity(0.5),
                  ),
                  SocialShareButton(
                    onTap: () {
                      log('clicked');
                    },
                    height: 19.px,
                    width: 19.px,
                    svgPath: SvgPath.icCopy,
                    padding: EdgeInsets.only(right: 10.px),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.px),
            ActionButton(
              padding: EdgeInsets.symmetric(horizontal: 34.px, vertical: 10.px),
              buttonText: 'Close',
              height: 45.px,
              width: 120.px,
              isFocused: false,
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ShareDialogText extends StatelessWidget {
  final String text;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;
  ShareDialogText({
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

class SocialShareButton extends StatelessWidget {
  final String svgPath;
  ColorFilter? colorFilter;
  VoidCallback? onTap;
  double? height;
  double? width;
  EdgeInsets padding;

  SocialShareButton({
    super.key,
    required this.svgPath,
    this.colorFilter,
    this.onTap,
    this.height = 28,
    this.width = 28,
    this.padding = const EdgeInsets.only(right: 17),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          svgPath,
          height: height!.px,
          width: width!.px,
          colorFilter: colorFilter,
        ),
      ),
    );
  }
}
