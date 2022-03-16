import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: ' Duronto?',
            style: GoogleFonts.raleway(
              color: AppColor.mainColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
        text: 'Why',
        style: GoogleFonts.raleway(
          color: AppColor.white,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
