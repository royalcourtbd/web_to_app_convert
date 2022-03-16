import 'package:flutter/material.dart';
import 'package:web_to_app_convert/pages/second_page/widget/grid_item.view.dart';

import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/custom_app_bar.dart';
import 'package:web_to_app_convert/widget/font_style.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppFontStyle(
              title: 'Support',
              fontSize: 24,
              color: AppColor.mainColor,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 6),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                border: const Border(
                  bottom: BorderSide(
                    width: 3,
                    color: Color(0xff594441),
                  ),
                ),
              ),
              child: AppFontStyle(
                title: 'Any Type Of Content',
                fontSize: 17,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: AppFontStyle(
                title:
                    'The Ones Listed Below Are The Ones \nYou Are Most Likely To Encounter.',
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
                right: 15,
              ),
              child: GridItemView(),
            ),
          ],
        ),
      ),
    );
  }
}
