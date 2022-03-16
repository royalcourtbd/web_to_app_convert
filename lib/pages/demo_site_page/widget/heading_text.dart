import 'package:flutter/material.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/font_style.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      alignment: Alignment.centerLeft,
      height: height * 0.09,
      width: width,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: const Color(0xff594441),
        border: Border(
          bottom: BorderSide(
            color: AppColor.mainColor,
          ),
          top: BorderSide(
            color: AppColor.mainColor,
          ),
        ),
      ),
      child: AppFontStyle(
        title: 'Try Demo',
        fontSize: 24,
      ),
    );
  }
}
