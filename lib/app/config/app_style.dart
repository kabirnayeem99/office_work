import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:office_work/app/config/config.dart';

const Color kWhiteColor = Color(0xffffffff);
const kDashboardColor = Color(0xffF1FCF9);
const kLighterWhiteColor = Color(0xfffcfcfc);


//

const Color kTextColor = Color(0xff5D646F);
const kLightGreyColor = Color(0xffa7a7a7);

const kBlueColor = Color(0xff5474FD);
const kLightBlueColor = Color(0xff83b1ff);
const kLighterBlueColor = Color(0xffc1d4f9);

const kDarkBlueColor = Color(0xff35414D);

final double kPaddingHorizontal = Config.blockSizeHorizontal! * 6;
const double horizontalPadding = 40.0;
final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);
const kBorderRadius = 16.0;
const Color kBorderColor = Color(0xffEEEEEE);

final kPoppinsBold = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
);
final kPoppinsSemiBold = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
);
final kPoppinsMedium = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
);
final kInterRegular = GoogleFonts.inter(
  fontWeight: FontWeight.w400,
);
final kHindiSiliguriSemiBold = GoogleFonts.hindSiliguri(
  fontWeight: FontWeight.w500,
);
