import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:office_work/presentation/main/root.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark),
    );

    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MainPage(),
      );
    });
  }
}
