import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_to_app_convert/pages/demo_site_page/widget/demo_site_link.dart';
import 'package:web_to_app_convert/pages/demo_site_page/widget/heading_text.dart';
import 'package:web_to_app_convert/pages/demo_site_page/widget/link_submit_field.dart';
import 'package:web_to_app_convert/pages/site_view_page/site_view_page.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/font_style.dart';

class PasteUrlPage extends StatelessWidget {
  const PasteUrlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              HeadingText(),
              SizedBox(
                height: height * 0.05,
              ),
              LinkSubmitField(),
              SizedBox(
                height: height * 0.16,
              ),
              Container(
                padding: EdgeInsets.only(left: width * 0.06),
                alignment: Alignment.centerLeft,
                child: AppFontStyle(
                  title: 'Check this out',
                  fontSize: 23,
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              DemoSiteLink(
                  icon: 'dribbble.png',
                  url: 'https://dribbble.com',
                  onTap: () {
                    Get.to(
                      () => SiteViewPage(),
                      arguments: 'https://business.bkash.com/sign-in',
                    );
                  }),
              SizedBox(
                height: height * 0.01,
              ),
              DemoSiteLink(
                  icon: '1.png',
                  url: 'https://www.flaticon.com/',
                  onTap: () {
                    Get.to(
                      () => SiteViewPage(),
                      arguments: 'https://www.flaticon.com/',
                    );
                  }),
              SizedBox(
                height: height * 0.01,
              ),
              DemoSiteLink(
                  icon: 'pinterest.png',
                  url: 'https://www.pinterest.com/',
                  onTap: () {
                    Get.to(
                      () => SiteViewPage(),
                      arguments: 'https://www.pinterest.com/',
                    );
                  }),
              SizedBox(
                height: height * 0.01,
              ),
              DemoSiteLink(
                  icon: 'pay.png',
                  url: 'https://www.paypal.com/',
                  onTap: () {
                    Get.to(
                      () => SiteViewPage(),
                      arguments: 'https://www.paypal.com/',
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
