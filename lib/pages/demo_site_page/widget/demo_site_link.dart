import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';

class DemoSiteLink extends StatelessWidget {
  String icon;
  String url;
  Callback onTap;

  DemoSiteLink({
    required this.icon,
    required this.url,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: height * 0.07,
      width: width - 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xff594441),
        border: Border.all(
          color: AppColor.mainColor,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/' + icon,
            scale: 0.7,
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: onTap,
            child: Text(url,
                style: GoogleFonts.raleway(
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          )
        ],
      ),
    );
  }
}
