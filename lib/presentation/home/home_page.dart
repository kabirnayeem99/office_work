import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:office_work/app/config/config.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/data/model/books_model.dart';
import 'package:office_work/presentation/home/widgets/all_book_section.dart';
import 'package:office_work/presentation/home/widgets/home_page_uppper_part.dart';

import '../../app/config/app_style.dart';
import 'widgets/dashboard_single_item_design.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomePageUpperPart(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'All Hadith Book',
                  style: kPoppinsBold.copyWith(
                    fontSize: Config.blockSizeHorizontal! * 4.1,
                    color: kTextColor,
                  ),
                ),
              ),
            ),
            AllBookSection(),
          ],
        ),
      ),
    );
  }
}
