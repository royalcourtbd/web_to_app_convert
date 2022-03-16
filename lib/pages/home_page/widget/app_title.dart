import 'package:flutter/material.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/font_style.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      height: height * 0.05,
      width: width - 70,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.mainColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: AppFontStyle(
        fontSize: 16,
        title: 'Just Some Step To Build A Mobile App',
      ),
    );
  }
}
