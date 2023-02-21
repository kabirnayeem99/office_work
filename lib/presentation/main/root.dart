import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/app/config/config.dart';
import 'package:office_work/buisness_logic/controllers/home_controller.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/presentation/about_writer/about_writer_page.dart';
import 'package:office_work/presentation/bookmark/bookmark_page.dart';
import 'package:office_work/presentation/home/home_page.dart';
import 'package:office_work/presentation/last_read/last_read_page.dart';
import 'package:office_work/presentation/memories/show_memories_page.dart';
import 'package:office_work/presentation/publications/publications_page.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/third_party_libs/floating_nav_bar/floating_nav_bar.dart';
import '../../core/third_party_libs/floating_nav_bar/floating_nav_bar_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  HomeController homeController = Get.put(HomeController());

  List pages = [
    const HomePage(),
    const BookmarkPage(),
    const ShowMemoriesPage(),
    const LastReadPage(),
    const AboutWriterPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Obx(() => pages[homeController.currentIndex.value]),
      backgroundColor: const Color(0xffF4F4F4),
      extendBody: true,
      bottomNavigationBar: Obx(
        () => FloatingNavbar(
          backgroundColor: kWhiteColor,
          borderRadius: 10.px,
          selectedBackgroundColor: Colors.transparent,
          selectedItemColor: const Color(0xff1AA483),
          unselectedItemColor: Colors.transparent,
          width: Config.screenWidth! - 30,
          padding: EdgeInsets.symmetric(vertical: 5.px),
          items: [
            _navItem(icon: SvgPath.icHome, index: 0),
            _navItem(icon: SvgPath.icBooks, index: 1),
            _navItem(icon: SvgPath.icNote, index: 2),
            _navItem(icon: SvgPath.icSave, index: 3),
            _navItem(icon: SvgPath.icUser, index: 4),
          ],
          currentIndex: homeController.currentIndex.value,
          onTap: (index) {
            homeController.currentIndex.value = index;
            print(homeController.currentIndex.value.toString());
          },
        ),
      ),
    );
  }

  FloatingNavbarItem _navItem({required String icon, int? index}) {
    return FloatingNavbarItem(
      customWidget: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          homeController.currentIndex.value == index
              ? const Color(0xff128A6D)
              : const Color(0x0000FAFA),
          BlendMode.srcATop,
        ),
      ),
    );
  }
}
