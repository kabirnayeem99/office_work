import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_work/presentation/home/widgets/create_plan_dialog.dart';
import 'package:office_work/presentation/home/widgets/more_options_bottom_sheet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/config/app_style.dart';
import '../../../app/config/config.dart';
import '../../../core/assets/svg_path.dart';
import 'dashboard_single_item_design.dart';

class HomeDashboard extends StatelessWidget {
  String? _selectedItem;

  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  HomeDashboard({
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
                const CreatePlanDialog(),
              );
            },
          ),
          DashBoardSinngleItemDesign(
            svgPath: SvgPath.icBook,
            title: 'Hifz',
            onTap: () {
              Get.bottomSheet(
                const ShowMoreOptionBottomSheet(),
                backgroundColor: Theme.of(context).dialogBackgroundColor,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.px)),
                ),
                enableDrag: false,
              );
            },
          ),
          DashBoardSinngleItemDesign(
            svgPath: SvgPath.icPaperPlane,
            title: 'Jump',
            onTap: () {
              Get.bottomSheet(
                const ShowMoreOptionBottomSheetForAddBookMark(),
                backgroundColor: Theme.of(context).dialogBackgroundColor,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.px)),
                ),
                enableDrag: false,
              );
            },
          ),
          DashBoardSinngleItemDesign(
            svgPath: SvgPath.icHealthcare,
            title: 'Support',
            onTap: () {
              Get.bottomSheet(
                const ShowMoreOptionBottomSheetForEditBookmark(),
                backgroundColor: Theme.of(context).dialogBackgroundColor,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.px)),
                ),
                enableDrag: false,
              );
            },
          ),
        ],
      ),
    );
  }
}
