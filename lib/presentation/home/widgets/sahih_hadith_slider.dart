import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:office_work/app/config/app_style.dart';
import 'package:office_work/data/model/sohih_hadith_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app/config/config.dart';

class SahihHadithSlider extends StatefulWidget {
  const SahihHadithSlider({
    super.key,
  });

  @override
  State<SahihHadithSlider> createState() => _SahihHadithSliderState();
}

class _SahihHadithSliderState extends State<SahihHadithSlider> {
  List<HadithModel> sahihHadith = [
    HadithModel(
        hadith:
            '“A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”',
        reference: '[ Bukhari and Muslim ]'),
  ];

  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Config.blockSizeVertical! * 16,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Config.blockSizeHorizontal! * 6,
        ),
        child: SizedBox(
          height: Config.blockSizeVertical! * 22,
          child: CarouselSlider(
            carouselController: carouselController,
            items: sahihHadith
                .map(
                  (item) => Center(
                    child: SlideInLeft(
                      child: Column(
                        children: [
                          Text(
                            item.hadith,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            style: kHindiSiliguriSemiBold.copyWith(
                              color: kWhiteColor,
                              fontSize: 14.px,
                            ),
                          ),
                          SizedBox(
                            height: Config.blockSizeVertical! * 2,
                          ),
                          Text(
                            item.reference,
                            textAlign: TextAlign.justify,
                            style: kHindiSiliguriSemiBold.copyWith(
                              color: kWhiteColor,
                              fontSize: 14.px,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              height: Config.blockSizeVertical! * 50,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
              initialPage: currentIndex,
            ),
          ),
        ),
      ),
    );
  }
}
