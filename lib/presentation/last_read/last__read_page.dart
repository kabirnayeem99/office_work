import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/presentation/bookmark/widgets/bookmark_list.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LastReadPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.px),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: bookmarkList.length,
            itemBuilder: (context, index) {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 44.px,
                            width: 44.px,
                            child:
                                SvgPicture.asset(bookmarkList[index].iconPath),
                          ),
                          SizedBox(
                            width: 15.px,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bookmarkList[index].title,
                                style: TextStyle(
                                  color: HadithColors.blackCoral,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.px,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                              ),
                              SizedBox(
                                height: 4.px,
                              ),
                              Text(
                                bookmarkList[index].subTitle,
                                style: TextStyle(
                                  color: HadithColors.blackMineShaft
                                      .withOpacity(0.5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.px,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset(bookmarkList[index].optionIconPath)
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
