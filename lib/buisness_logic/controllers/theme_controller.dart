import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_work/app/config/app_style.dart';

class ThemeController extends GetxService {
  var currentTheme = 1.obs;
  // var currentFont = "Kalpurush";

  List<ThemeData> themes = [
    ///////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////  Default Theme   //////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////

    ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDEDEDE))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        focusColor: Color(0xff3BB06E),
        labelStyle: TextStyle(color: Color(0xff3BB06E)),
        hoverColor: Color(0xff3BB06E),
        fillColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: const Color(0xff3BB06E),
        selectionColor: const Color(0xff3BB06E).withOpacity(0.5),
        selectionHandleColor: const Color(0xff3BB06E),
      ),
      disabledColor: const Color(0xff7F909F),
      dividerColor: const Color(0xffDEDEDE),
      primaryColorLight: Colors.black,
      secondaryHeaderColor: const Color(0xff3BB06E),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xff808080)),
      buttonTheme: const ButtonThemeData(buttonColor: Color(0xff1AA483)),
      //fontFamily: currentFont,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: kScaffoldBackgroundColor,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Color(0xFFF3F3F3),
      ),
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.white,
          backgroundColor: Color(0xff0B9D4A),
          foregroundColor: Color(0xff477848),
          // color: Color(0xff0B9D4A),
          iconTheme: IconThemeData(color: Color(0xffA7A7A7))),
      textTheme:
          const TextTheme(titleMedium: TextStyle(color: Color(0x000fffff))),
      colorScheme: const ColorScheme.light(
          background: Color(0xFFF3F3F3),
          brightness: Brightness.light,
          primary: Color(
            0xff1AA483,
          )),
    ),

    ///////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////  Dark Theme   /////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////

    ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xff7F909F)),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xff122337),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Color(0xff7F909F)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF585868))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        focusColor: Color(0xff3BB06E),
        labelStyle: TextStyle(color: Color(0xff3BB06E)),
        hoverColor: Color(0xff3BB06E),
        fillColor: Color(0xff223449),
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff3BB06E),
          selectionColor: const Color(0xff3BB06E).withOpacity(0.5),
          selectionHandleColor: const Color(0xff3BB06E)),
      disabledColor: const Color(0xff7F909F),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: const Color(0xff3BB06E),
      cardColor: const Color(0xff223449),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Color(0xff122337),
        modalBackgroundColor: Color(0xff223449),
      ),
      primaryColor: const Color(0xff223449),
      scaffoldBackgroundColor: const Color(0xff223449),
      primaryColorDark: const Color(0xff122337),
      dividerColor: const Color(0xFF585868),
      iconTheme: const IconThemeData(color: Color(0xff7F909F)),
      appBarTheme: const AppBarTheme(
          shadowColor: Color(0xff223449),
          foregroundColor: Colors.white,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      colorScheme: const ColorScheme.dark(
              primary: Color(0xff3BB06E), secondary: Color(0xff3BB06E))
          .copyWith(background: const Color(0xff122337)),
    )
  ];
}
