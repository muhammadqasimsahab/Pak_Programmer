import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color KBrown = Color(0xff292526);
const Color KDarkBrown = Color(0xff1b2028);

const Color Klightgreen = Color(0xff29a794);
const Color Kblue = Color(0xf1017dc4);

const Color KGrey = Color(0xffa4aaad);
const Color KDarkGrey = Color(0xff878787);
const Color KLightGrey = Color(0xffededed);

const Color Kwhite = Color(0xffffffff);
const Color KBlack = Color(0xff111111);
const Color Kyellow = Color(0xffffd33c);

const double kBorderRadius = 12.0;
const double KPaddingHorizontal = 24.0;
final KInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadius),
    borderSide: const BorderSide(
      color: KLightGrey,
    ));

final double KRaius = 16;

final KBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(KRaius),
  borderSide: BorderSide.none,
);

final KEncodeSansBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w700,
);
final KEncodeSansSemiBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w600,
);
final KEncodeSansMedium = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w500,
);
final KEncodeSansRagular = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w400,
);
