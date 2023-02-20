import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:office_work/presentation/config/light_theme.dart';
import 'package:office_work/presentation/main/root.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff128A6D),
        statusBarBrightness: Brightness.dark,
      ),
    );

    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: hadithLightTheme,
        title: 'Flutter Demo',
        home: const MainPage(),
      );
    });
  }
}
