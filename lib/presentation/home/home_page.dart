import 'package:flutter/material.dart';

import 'package:office_work/app/config/config.dart';

import 'package:office_work/presentation/home/widgets/all_book_section.dart';
import 'package:office_work/presentation/home/widgets/home_page_uppper_part.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app/config/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const HomePageUpperPart(),
            const SizedBox(height: 7),
            AllBookSection(),
          ],
        ),
      ),
    );
  }
}
