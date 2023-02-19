import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxService {
  var currentTheme = 1.obs;
  // var currentFont = "Kalpurush";

  List<ThemeData> themes = [
    ///////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////  Default Theme   //////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////

    ThemeData(
        checkboxTheme: CheckboxThemeData(
            side: BorderSide(color: Colors.grey),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        bannerTheme:
            MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
        dialogTheme: DialogTheme(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
        inputDecorationTheme: InputDecorationTheme(
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
            cursorColor: Color(0xff3BB06E),
            selectionColor: Color(0xff3BB06E).withOpacity(0.5),
            selectionHandleColor: Color(0xff3BB06E)),
        disabledColor: Color(0xff7F909F),
        dividerColor: Color(0xffDEDEDE),
        primaryColorLight: Colors.black,
        secondaryHeaderColor: Color(0xff3BB06E),
        cardColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff808080)),
        backgroundColor: Color(0xFFF3F3F3),
        //fontFamily: currentFont,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white,
          modalBackgroundColor: Color(0xFFF3F3F3),
        ),
        appBarTheme: AppBarTheme(
            shadowColor: Colors.white,
            backgroundColor: Color(0xff0B9D4A),
            foregroundColor: Color(0xff477848),
            // color: Color(0xff0B9D4A),
            iconTheme: IconThemeData(color: Color(0xffA7A7A7))),
        textTheme: TextTheme(titleMedium: TextStyle(color: Color(0xfffff)))),

    ///////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////  Dark Theme   /////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////

    ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme: MaterialBannerThemeData(backgroundColor: Color(0xff7F909F)),
      dialogTheme: DialogTheme(
        backgroundColor: Color(0xff122337),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      inputDecorationTheme: InputDecorationTheme(
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
          cursorColor: Color(0xff3BB06E),
          selectionColor: Color(0xff3BB06E).withOpacity(0.5),
          selectionHandleColor: Color(0xff3BB06E)),
      disabledColor: Color(0xff7F909F),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: Color(0xff3BB06E),
      colorScheme: ColorScheme.dark(
          primary: Color(0xff3BB06E), secondary: Color(0xff3BB06E)),
      cardColor: Color(0xff223449),
      //fontFamily: currentFont,
      backgroundColor: Color(0xff122337),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xff122337),
        modalBackgroundColor: Color(0xff223449),
      ),
      primaryColor: Color(0xff223449),
      scaffoldBackgroundColor: Color(0xff223449),
      primaryColorDark: Color(0xff122337),
      dividerColor: Color(0xFF585868),
      iconTheme: IconThemeData(color: Color(0xff7F909F)),
      appBarTheme: AppBarTheme(
          shadowColor: Color(0xff223449),
          foregroundColor: Colors.white,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
    )
  ];
}
