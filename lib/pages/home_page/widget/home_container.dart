import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/font_style.dart';

class HomeContainer extends StatelessWidget {
  String imageUrl;
  String title;
  Callback onClick;
  HomeContainer(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        height: height * 0.22,
        width: width - 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.mainColor,
          ),
          borderRadius: BorderRadius.circular(13),
          color: const Color(0xff594441),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/' + imageUrl),
            const SizedBox(
              height: 15,
            ),
            AppFontStyle(title: title),
          ],
        ),
      ),
    );
  }
}
