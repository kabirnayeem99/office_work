import 'package:flutter/material.dart';

class BooksModel {
  String icon;
  Color iconColor;
  String bookName;
  String writerName;
  int totalHadith;
  String book;

  BooksModel({
    required this.icon,
    required this.bookName,
    required this.writerName,
    required this.totalHadith,
    required this.book,
    this.iconColor = const Color(0xff3857BC),
  });
}
