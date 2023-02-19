import 'package:flutter/material.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/presentation/home/widgets/all_book_section.dart';
import 'package:office_work/presentation/home/widgets/home_page_uppper_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: const [
            HomePageUpperPart(),
            //SizedBox(height: 3.px),
            AllBookSection(),
          ],
        ),
      ),
    );
  }
}
