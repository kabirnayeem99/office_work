import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/core/util/util.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:office_work/presentation/home/widgets/more_options_bottom_sheet.dart';
import 'package:office_work/presentation/memories/widgets/memories_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShowMemoriesPage extends StatelessWidget {
  const ShowMemoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: SvgPicture.asset(
          SvgPath.icAdd,
          height: 20.px,
          width: 16.px,
          colorFilter:
              ColorFilter.mode(Theme.of(context).cardColor, BlendMode.srcATop),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.px),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: memoriesList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.px),
                  child: Container(
                    height: 164.px,
                    padding: EdgeInsets.only(
                        left: 14.px, right: 14.px, top: 15.px, bottom: 9.px),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10.px),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Plan ${memoriesList[index].planNo}',
                              style: TextStyle(
                                color: HadithColors.blackCoral,
                                fontSize: 14.px,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.bottomSheet(
                                  const ShowMoreOptionBottomSheetForEditPlan(),
                                  backgroundColor:
                                      Theme.of(context).dialogBackgroundColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.px)),
                                  ),
                                  enableDrag: false,
                                );
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                color: Colors.transparent,
                                width: 24.px,
                                child: SvgPicture.asset(
                                  memoriesList[index].optionIconPath,
                                  colorFilter: ColorFilter.mode(
                                    HadithColors.blackMineShaft.withOpacity(.3),
                                    BlendMode.srcATop,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.px,
                        ),
                        MemoriesPageTextDecoration(
                          title:
                              'Total Hadith: ${memoriesList[index].totalHadith}',
                        ),
                        MemoriesPageTextDecoration(
                          title:
                              'Days Remaining: ${memoriesList[index].remainingDays}',
                        ),
                        MemoriesPageTextDecoration(
                          title:
                              'Completed Hadith: ${memoriesList[index].completedhadith}',
                        ),
                        SizedBox(
                          height: 10.px,
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.3),
                                borderRadius: BorderRadius.circular(12)),
                            height: 7.px,
                            width: double.infinity,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(12)),
                                width: HadithScreen.width() *
                                    double.parse(memoriesList[index]
                                        .completed
                                        .toString()) /
                                    100,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4.px),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            memoriesList[index].completed == 0
                                ? Text(
                                    'Please Add Hadith',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.px,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            MemoriesPageTextDecoration(
                              title:
                                  '${memoriesList[index].completed}% completed',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MemoriesPageTextDecoration extends StatelessWidget {
  final String title;
  const MemoriesPageTextDecoration({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.px),
      child: Text(
        title,
        style: TextStyle(
          color: HadithColors.blackMineShaft.withOpacity(.5),
          fontWeight: FontWeight.w400,
          fontSize: 12.px,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      ),
    );
  }
}
