import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kBlueColor = Color(0xff46A7FE);
Color kWhiteColor = Color(0xffFFFFFF);
const kTextColor = Color(0xFF757575);

final Color scaffoldColor = Colors.black;
final TextStyle normalText =
    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16, letterSpacing: 0.8));
final TextStyle heading = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  ),
);

class CustomColors {
  CustomColors._();

  static const Color light = Color(0xFFFFF9ED);
  static const Color blue = Color(0xFF6488E5);
  static const Color yellow = Color(0xFFF9BE7D);
  static const Color pink = Color(0xFFE56372);
  static const Color black = Color(0xFF22254C);
  static const Color grey = Color(0xFFD1D1D6);
  static const Color link = Color(0xFF4286F4);
  static const Color darkgrey = Color(0xFF828282);
  static const Color green = Color(0xFF65DC59);
  static const Color red = Color(0xFFFE6B6B);
}
