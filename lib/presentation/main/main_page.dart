import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/presentation/home/home_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/third_party_libs/floating_nav_bar/floating_nav_bar.dart';
import '../../core/third_party_libs/floating_nav_bar/floating_nav_bar_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: const HomePage(),
      backgroundColor: const Color(0xffF4F4F4),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: kWhiteColor,
        borderRadius: 10.px,
        selectedBackgroundColor: Colors.transparent,
        selectedItemColor: const Color(0xff1AA483),
        unselectedItemColor: Colors.transparent,
        width: Config.screenWidth! - 30,
        padding: EdgeInsets.symmetric(vertical: 5.px),
        items: [
          FloatingNavbarItem(
            customWidget: SvgPicture.asset(SvgPath.icHome),
          ),
          FloatingNavbarItem(
            customWidget: SvgPicture.asset(SvgPath.icBooks),
          ),
          FloatingNavbarItem(
            customWidget: SvgPicture.asset(SvgPath.icNote),
          ),
          FloatingNavbarItem(
            customWidget: SvgPicture.asset(SvgPath.icSave),
          ),
          FloatingNavbarItem(
            customWidget: SvgPicture.asset(SvgPath.icUser),
          ),
        ],
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
