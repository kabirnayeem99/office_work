import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:office_work/presentation/last_read/widgets/last_read_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LastReadPage extends StatelessWidget {
  const LastReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.px),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: lastReadList.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              String firstLetter = lastReadList[index].bookName.substring(6, 7);
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.px),
                child: Container(
                  height: 68.px,
                  padding: EdgeInsets.symmetric(horizontal: 14.px),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10.px),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 44.px,
                        width: 44.px,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              lastReadList[index].icon,
                              colorFilter: ColorFilter.mode(
                                  lastReadList[index].iconColor,
                                  BlendMode.srcATop),
                            ),
                            Text(
                              firstLetter,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.px,
                                color: Theme.of(context).cardColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.px),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lastReadList[index].bookName,
                            style: TextStyle(
                              color: HadithColors.blackCoral,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.px,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                          SizedBox(height: 4.px),
                          Text(
                            'Hadith No: ${lastReadList[index].hadithNo}',
                            style: TextStyle(
                              color:
                                  HadithColors.blackMineShaft.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.px,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
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
    );
  }
}
