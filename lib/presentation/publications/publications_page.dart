import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/presentation/config/hadith_colors.dart';
import 'package:office_work/presentation/publications/widgets/publications_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PublicationsPage extends StatelessWidget {
  const PublicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.px),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: publicationsNameList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                String firstLetter = publicationsNameList[index]
                    .publicationsName
                    .substring(0, 1);
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.px),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 62.px,
                    padding: EdgeInsets.only(
                      left: 14.px,
                      right: 14.px,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10.px),
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              publicationsNameList[index].icon,
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).scaffoldBackgroundColor,
                                  BlendMode.srcATop),
                            ),
                            Text(
                              firstLetter,
                              style: TextStyle(
                                color: HadithColors.blackCoral,
                                fontSize: 18.px,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.px,
                        ),
                        Expanded(
                          child: AboutPageTextDecoration(
                              title:
                                  publicationsNameList[index].publicationsName),
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

class AboutPageTextDecoration extends StatelessWidget {
  final String title;
  const AboutPageTextDecoration({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: HadithColors.blackCoral,
        fontWeight: FontWeight.w600,
        fontSize: 14.px,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}
