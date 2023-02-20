import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:office_work/presentation/home/widgets/add_to_bookmark_dialog.dart';
import 'package:office_work/presentation/home/widgets/add_to_hifz_dialog.dart';
import 'package:office_work/presentation/home/widgets/bookList.dart';
import 'package:office_work/presentation/home/widgets/edit_plan_dialog.dart';
import 'package:office_work/presentation/home/widgets/more_options_bottom_sheet.dart';
import 'package:office_work/presentation/home/widgets/remove_modal.dart';
import 'package:office_work/presentation/home/widgets/share_post_dialog.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/config/app_style.dart';
import '../../../app/config/config.dart';

// ignore: must_be_immutable
class AllBookSection extends StatelessWidget {
  const AllBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'All Hadith Book',
            style: kPoppinsBold.copyWith(
              fontSize: 15.px,
              color: kTextColor,
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.only(bottom: 72.px, top: 14.px),
          itemCount: booksList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            String firstLetter = booksList[index].bookName.substring(0, 1);

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: InkWell(
                onTap: () {
                  print(index);
                  index == 0
                      ? Get.bottomSheet(
                          const ShowMoreOptionBottomSheetForEditPlan(),
                          backgroundColor:
                              Theme.of(context).dialogBackgroundColor,
                          isDismissible: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.px)),
                          ),
                          enableDrag: false,
                        )
                      : index == 1
                          ? Get.dialog(
                              const AddToHifzDialog(),
                            )
                          : index == 2
                              ? Get.dialog(
                                  const EditPlanDialog(),
                                )
                              : index == 3
                                  ? Get.dialog(const SharePostDialog())
                                  : index == 4
                                      ? Get.dialog(AddToBookmarkDialog())
                                      : index == 5
                                          ? Get.dialog(const RemoveModal())
                                          : null;
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 70.px,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                booksList[index].icon,
                              ),
                              Text(
                                firstLetter,
                                style: kPoppinsSemiBold.copyWith(
                                  color: kWhiteColor,
                                  fontSize: 18.px,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  booksList[index].bookName,
                                  style: kPoppinsSemiBold.copyWith(
                                    color: kTextColor,
                                    fontSize: 14.px,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  booksList[index].writerName,
                                  style: kInterRegular.copyWith(
                                    color: const Color(0xff353535)
                                        .withOpacity(0.5),
                                    fontSize: 12.px,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              booksList[index].totalHadith.toString(),
                              style: kPoppinsSemiBold.copyWith(
                                color: kTextColor,
                                fontSize: 14.px,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              booksList[index].book,
                              style: kInterRegular.copyWith(
                                color: const Color(0xff353535).withOpacity(0.5),
                                fontSize: 12.px,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(height: 10.w)
      ],
    ).paddingSymmetric(horizontal: 15);
  }
}
