import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_to_app_convert/pages/site_view_page/site_view_page.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/font_style.dart';

class LinkSubmitField extends StatelessWidget {
  late String siteUrl;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: TextField(
        controller: controller,
        onChanged: (Value) {
          siteUrl = Value;
        },
        keyboardType: TextInputType.url,
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: AppColor.white,
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: AppColor.mainColor,
            ),
          ),
          //contentPadding: EdgeInsets.symmetric(horizontal: 20),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/images/internet.png',
              scale: 1.6,
              alignment: Alignment.centerRight,
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {
              Get.to(
                SiteViewPage(),
                arguments: siteUrl,
                transition: Transition.circularReveal,
                duration: Duration(
                  seconds: 1,
                ),
              );
            },
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColor.white,
            ),
          ),
          // suffix: Container(
          //   height: 30,
          //   width: 30,
          //   decoration: BoxDecoration(
          //     color: AppColor.mainColor,
          //     borderRadius: BorderRadius.circular(
          //       50,
          //     ),
          //   ),
          // ),

          labelText: 'https://',
          labelStyle: TextStyle(
            color: AppColor.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
              color: AppColor.mainColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: AppColor.mainColor),
          ),
          filled: true,
          fillColor: Color(0xff594441),
        ),
      ),
    );
  }
}
