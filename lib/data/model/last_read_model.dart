import 'package:flutter/material.dart';

class LastReadModel {
  Color iconColor;
  String icon;
  String bookName;
  int hadithNo;

  LastReadModel({
    required this.icon,
    required this.bookName,
    required this.hadithNo,
    this.iconColor = const Color(0xff3857BC),
  });
}
