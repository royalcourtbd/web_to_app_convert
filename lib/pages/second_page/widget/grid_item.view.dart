import 'package:flutter/material.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/font_style.dart';

class GridItemView extends StatelessWidget {
  List service_name = [
    'Youtbe',
    'Custom Video',
    'Audio Player',
    'Custom Audio',
    'GIF Images',
    'Demo Video',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      //addAutomaticKeepAlives: false,
      itemCount: service_name.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: width * 0.04,
        mainAxisSpacing: height * 0.02,
        childAspectRatio: 1 / 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          //margin: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          // height: 160,
          // width: 160,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.mainColor,
            ),
            borderRadius: BorderRadius.circular(13),
            color: const Color(0xff594441),
          ),
          child: Column(
            children: [
              Container(
                height: height * 0.16,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.mainColor,
                  ),
                  borderRadius: BorderRadius.circular(13),
                  color: AppColor.mainColor,
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              AppFontStyle(
                title: service_name[index],
                fontSize: 12,
              )
            ],
          ),
        );
      },
    );
  }
}
