import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//this section for remove from bookmark

class ShowMoreOptionBottomSheet extends StatelessWidget {
  const ShowMoreOptionBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: EdgeInsets.only(top: 20.px, left: 20.px, right: 20.px),
      child: Wrap(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'More Option',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlueColor,
                      fontSize: 15.px,
                    ),
                  ),
                  InkWell(
                      onTap: () => Get.back(),
                      child: SvgPicture.asset(SvgPath.icClose))
                ],
              ),
              SizedBox(
                height: 17.px,
              ),
              BottomSheetRow(
                svgPath: SvgPath.icBookmark,
                title: 'Remove From Bookmark',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icAdd,
                title: 'Add Hifz',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icCopy,
                title: 'Bangla Copy',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icCopy,
                title: 'English Copy',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icCopy,
                title: 'Arabic Copy',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icShare,
                title: 'Share',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icExclamation,
                title: 'Report',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//this section for add to bookmark
class ShowMoreOptionBottomSheetForAddBookMark extends StatelessWidget {
  const ShowMoreOptionBottomSheetForAddBookMark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: EdgeInsets.only(top: 20.px, left: 20.px, right: 20.px),
      child: Wrap(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'More Option',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlueColor,
                      fontSize: 15.px,
                    ),
                  ),
                  InkWell(
                      onTap: () => Get.back(),
                      child: SvgPicture.asset(SvgPath.icClose))
                ],
              ),
              SizedBox(
                height: 17.px,
              ),
               BottomSheetRow(
                svgPath: SvgPath.icCopy,
                title: 'Bangla Copy', onTap: () {
                  
                },
              ),
               BottomSheetRow(
                svgPath: SvgPath.icCopy,
                title: 'English Copy', onTap: () {
                  
                },
              ),
               BottomSheetRow(
                svgPath: SvgPath.icCopy,
                title: 'Arabic Copy', onTap: () {
                  
                },
              ),
               BottomSheetRow(
                svgPath: SvgPath.icAdd,
                title: 'Add Hifz', onTap: () {
                  
                },
              ),
               BottomSheetRow(
                svgPath: SvgPath.icBookmark,
                title: 'Add to Bookmark', onTap: () {
                  
                },
              ),
               BottomSheetRow(
                svgPath: SvgPath.icShare,
                title: 'Share', onTap: () {
                  
                },
              ),
               BottomSheetRow(
                svgPath: SvgPath.icExclamation,
                title: 'Report', onTap: () {
                  
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//this section for Edit bookmark
class ShowMoreOptionBottomSheetForEditBookmark extends StatelessWidget {
  const ShowMoreOptionBottomSheetForEditBookmark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: EdgeInsets.only(top: 20.px, left: 20.px, right: 20.px),
      child: Wrap(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'More Option',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlueColor,
                      fontSize: 15.px,
                    ),
                  ),
                  InkWell(
                      onTap: () => Get.back(),
                      child: SvgPicture.asset(SvgPath.icClose))
                ],
              ),
              SizedBox(
                height: 17.px,
              ),
              BottomSheetRow(
                svgPath: SvgPath.icEdit,
                title: 'Edit Bookmark',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icDelete,
                title: 'Delete Bookmark',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//this section for Edit plan
class ShowMoreOptionBottomSheetForEditPlan extends StatelessWidget {
  const ShowMoreOptionBottomSheetForEditPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: EdgeInsets.only(top: 20.px, left: 20.px, right: 20.px),
      child: Wrap(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'More Option',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlueColor,
                      fontSize: 15.px,
                    ),
                  ),
                  InkWell(
                      onTap: () => Get.back(),
                      child: SvgPicture.asset(SvgPath.icClose))
                ],
              ),
              SizedBox(
                height: 17.px,
              ),
              BottomSheetRow(
                svgPath: SvgPath.icEdit,
                title: 'Edit Plan',
                onTap: () {},
              ),
              BottomSheetRow(
                svgPath: SvgPath.icDelete,
                title: 'Delete Plan',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomSheetRow extends StatelessWidget {
  final String svgPath;
  final String title;
  final VoidCallback onTap;
  const BottomSheetRow({
    super.key,
    required this.svgPath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.px),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            SvgPicture.asset(svgPath),
            SizedBox(
              width: 16.px,
            ),
            Text(
              title,
              style: kPoppinsSemiBold.copyWith(
                color: kTextColor,
                fontSize: 13.px,
              ),
            )
          ],
        ),
      ),
    );
  }
}
