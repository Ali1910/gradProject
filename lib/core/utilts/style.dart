import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrduation_project/core/utilts/constans.dart';

abstract class Styles {
  static TextStyle style16 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: kFontWeight,
    ),
  );
  static TextStyle styleBold16 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: kFontWeightBold,
    ),
  );
  static TextStyle style14 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: const Color(0xFF647067),
      fontSize: 14.sp,
      fontWeight: kFontWeight,
      height: 0,
    ),
  );
  static TextStyle styleLight14 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: const Color(kColorBlue),
      fontSize: 14.sp,
      fontWeight: kFontWeight,
      height: 0,
    ),
  );
  static TextStyle style28 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: const Color(kColorBlue),
      fontSize: 14.sp,
      fontFamily: 'Overpass',
      fontWeight: kFontWeight,
      height: 0,
    ),
  );
  static TextStyle style24 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: const Color(kColorBlue),
      fontSize: 24.sp,
      fontFamily: 'Overpass',
      fontWeight: kFontWeight,
      height: 0,
    ),
  );
  static TextStyle styleBold24 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 24.sp,
      fontWeight: kFontWeightModdel,
      height: 0,
    ),
  );
  static TextStyle style11 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: const Color(kColorBlue),
      fontSize: 11.sp,
      fontWeight: FontWeight.w300,
      height: 0,
    ),
  );
  static TextStyle style13 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: const Color(kColorWhiteBlue),
      fontSize: 13.sp,
      fontWeight: kFontWeight,
      height: 0,
    ),
  );
  static TextStyle style20 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: Colors.black.withOpacity(0.20000000298023224),
      fontSize: 20.sp,
      fontWeight: kFontWeight,
      height: 0,
    ),
  );
  static TextStyle style15 = GoogleFonts.cairo(
    textStyle: TextStyle(
      color: const Color(kColorWhiteBlue),
      fontSize: 15.sp,
      fontWeight: kFontWeightModdel,
      height: 0,
      letterSpacing: -0.24,
    ),
  );
}
