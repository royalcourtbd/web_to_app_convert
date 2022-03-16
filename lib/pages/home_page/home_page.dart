import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_to_app_convert/pages/demo_site_page/paste_url_page.dart';

import 'package:web_to_app_convert/pages/home_page/widget/app_title.dart';
import 'package:web_to_app_convert/pages/home_page/widget/heading_text.dart';
import 'package:web_to_app_convert/pages/home_page/widget/home_container.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';
import 'package:web_to_app_convert/widget/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const url = 'https://play.google.com/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const HeadingText(),
              const SizedBox(
                height: 10,
              ),
              const AppTitle(),
              const SizedBox(
                height: 28,
              ),
              HomeContainer(
                onClick: () {
                  Get.to(
                    () => PasteUrlPage(),
                    transition: Transition.circularReveal,
                    duration: const Duration(
                      seconds: 1,
                    ),
                  );
                },
                imageUrl: 'internet.png',
                title: 'Replace Your Website URL',
              ),
              const SizedBox(
                height: 28,
              ),
              HomeContainer(
                onClick: () {
                  Get.snackbar(
                    '',
                    'Just design Purpose',
                    colorText: AppColor.white,
                    //titleText: Text('hello'),
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                imageUrl: 'smartphone.png',
                title: 'Build a App',
              ),
              const SizedBox(
                height: 28,
              ),
              HomeContainer(
                onClick: () async {
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'could not launch $url';
                  }
                  print(url);
                },
                imageUrl: 'playstore.png',
                title: 'Build a App',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
