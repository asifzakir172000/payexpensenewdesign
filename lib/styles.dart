// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bottomnavigation/Colors.dart';

//font style
const KH1 = TextStyle(
    fontSize: 32,
    fontFamily: 'ProximaNova',
    color: TextPrimary,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal);
const KH2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH4 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH4_SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH5 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH5_SemiBold = TextStyle(
    fontWeight: FontWeight.w800,
    color: KCOLOR_PRIMARY,
    fontSize: 14,
    fontFamily: 'ProximaNova');
const KH6 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH6_semiBold = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH7 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH7_semiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Colors.blue,
    fontFamily: 'ProximaNova');
const KH7_medium = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: TextPrimary,
    fontFamily: 'ProximaNova');
const KH8 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11,
    color: Colors.grey,
    fontFamily: 'ProximaNova',
    height: 1.5);
const KH9 = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 10,
  color: Colors.white,
  fontFamily: 'ProximaNova',
);

const FK30SB =
TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontFamily: "Inter");
const FK17SB =
TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontFamily: "Inter");
const FK15B =
TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: "Inter");
const FK13M =
TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: "Inter");
const FK18B =
TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Inter");
const FK14M =
TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: "Inter");
const FK18M =
TextStyle(fontSize: 18, fontWeight: FontWeight.w500, fontFamily: "Inter");
const FK22SB =
TextStyle(fontSize: 22, fontWeight: FontWeight.w700, fontFamily: "Inter");

const R13R = TextStyle(fontSize: 13, fontFamily: "Inter");
const R15R = TextStyle(fontSize: 15, fontFamily: "Inter");
const R12R = TextStyle(fontSize: 12, fontFamily: "Inter");
const R11R = TextStyle(fontSize: 11, fontFamily: "Inter");
const R14R = TextStyle(fontSize: 14, fontFamily: "Inter");
const R10R = TextStyle(fontSize: 10, fontFamily: "Inter");
const R7R = TextStyle(fontSize: 7, fontFamily: "Inter");
const R18R = TextStyle(fontSize: 18, fontFamily: "Inter");
const R55R = TextStyle(fontSize: 55, fontFamily: "Inter");

const R14M =
TextStyle(fontSize: 14, fontFamily: "Inter", fontWeight: FontWeight.w500);
const R16M =
TextStyle(fontSize: 16, fontFamily: "Inter", fontWeight: FontWeight.w500);
const R13M =
TextStyle(fontSize: 13, fontFamily: "Inter", fontWeight: FontWeight.w500);
const R10B =
TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: "Inter");

//input text field decoration
InputDecoration KInputSytle = InputDecoration(
  filled: true,
  isDense: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red), borderRadius: KInputRadius),
  border: OutlineInputBorder(
      borderSide: BorderSide(color: KINPUT_BORDER), borderRadius: KInputRadius),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: LinkColor), borderRadius: KInputRadius),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: KINPUT_BORDER), borderRadius: KInputRadius),
  hintStyle: R13R.copyWith(height: 1),
  // labelText: "Email Address",
);

const KInputRadius = BorderRadius.all(Radius.circular(0));
const KContainerRadius = BorderRadius.all(Radius.circular(2));
//box shadow for cards
const KboxShaddow = [
  BoxShadow(color: KCOLOR_PRIMARY, offset: Offset(1, 0.8), blurRadius: 4)
];
const cardMatchBoxesDeco = BoxDecoration(
  gradient: KboxGradientBlue,
  borderRadius: KContainerRadius,
  image: DecorationImage(
      image: AssetImage("assets/images/player_bg_small.png"), fit: BoxFit.none),
  boxShadow: [
    BoxShadow(color: KCOLOR_PRIMARY, offset: Offset(0, 1), blurRadius: 8)
  ],
);
const cardTitleDeco = BoxDecoration(
    borderRadius: KInputRadius, color: Colors.white, boxShadow: KboxShaddow);

const KboxGradientBlue =
LinearGradient(begin: Alignment(-1, -2), end: Alignment(-2, -2), colors: [
  KCOLOR_SECONDARY,
  Color.fromRGBO(41, 180, 138, 0),

  // Color.fromRGBO(196, 115, 196, 1)
]);

final search = FocusNode();
//textfield style
