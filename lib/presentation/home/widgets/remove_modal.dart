import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_work/core/util/util.dart';
import 'package:office_work/presentation/common/action_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RemoveModal extends StatelessWidget {
  const RemoveModal({
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
        padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 22.px),
        decoration: const BoxDecoration(),
        width: HadithScreen.width() * 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Are You Sure? Do you want to remove from Bookmark?',
              style: TextStyle(
                color: const Color(0xff353535),
                fontWeight: FontWeight.w400,
                fontSize: 14.px,
              ),
            ),
            SizedBox(height: 24.px),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(
                  buttonText: 'Cancel',
                  height: 45.px,
                  width: 130.px,
                  isFocused: false,
                  onTap: () {
                    Get.back();
                  },
                ),
                SizedBox(width: 15.px),
                ActionButton(
                  buttonText: 'Remove',
                  // padding: EdgeInsets.,
                  height: 45.px,
                  width: 130.px,
                  isFocused: true,
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
