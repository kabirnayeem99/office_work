import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/config/app_style.dart';
import '../../../app/config/config.dart';
import '../../../data/model/books_model.dart';

// ignore: must_be_immutable
class AllBookSection extends StatelessWidget {
  List<BooksModel> booksList = [
    BooksModel(
      icon: 'assets/images/green_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/blue_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/red_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/green_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/blue_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/red_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/green_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/blue_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/red_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/green_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/blue_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/red_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/green_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/blue_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
    BooksModel(
      icon: 'assets/images/red_polygon.svg',
      bookName: 'Book Name',
      writerName: 'Writer Name',
      totalHadith: 5235,
      book: 'Hadith',
    ),
  ];
  AllBookSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 72.px),
      itemCount: booksList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        String firstLetter = booksList[index].bookName.substring(0, 1);

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 70.px,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kWhiteColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          booksList[index].icon,
                        ),
                        Text(
                          firstLetter,
                          style: kPoppinsSemiBold.copyWith(
                            color: kWhiteColor,
                            fontSize: 18.px,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            booksList[index].bookName,
                            style: kPoppinsSemiBold.copyWith(
                              color: kTextColor,
                              fontSize: 14.px,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            booksList[index].writerName,
                            style: kInterRegular.copyWith(
                              color: const Color(0xff353535).withOpacity(0.5),
                              fontSize: 12.px,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        booksList[index].totalHadith.toString(),
                        style: kPoppinsSemiBold.copyWith(
                          color: kTextColor,
                          fontSize: 14.px,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        booksList[index].book,
                        style: kInterRegular.copyWith(
                          color: const Color(0xff353535).withOpacity(0.5),
                          fontSize: 12.px,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
