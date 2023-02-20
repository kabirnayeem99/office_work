import 'package:flutter/material.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.buttonText,
    this.isFocused = true,
    required this.height,
    required this.width,
    this.padding = const EdgeInsets.symmetric(horizontal: 34.5, vertical: 14),
    required this.onTap,
  });

  final String buttonText;
  final bool isFocused;
  final Function() onTap;
  final double height;
  final double width;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.px),
          color: isFocused
              ? Theme.of(context).primaryColor
              : HadithColors.whiteAntiFlash,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 14.px,
              color: isFocused
                  ? Theme.of(context).colorScheme.onBackground
                  : HadithColors.blackOlive,
              fontWeight: FontWeight.w500,
            ),
            // style: kPoppinsSemiBold.copyWith(
            //   fontSize: 14.px,

            // ),
          ),
        ),
      ),
    );
  }
}
