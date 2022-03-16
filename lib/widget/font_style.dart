import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';

class AppFontStyle extends StatelessWidget {
  String title;
  Color color;
  double fontSize;

  AppFontStyle(
      {required this.title, this.color = AppColor.white, this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.raleway(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
