import 'package:flutter/material.dart';
import 'package:web_to_app_convert/utils/color/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      // leading: const Icon(
      //   Icons.more_vert,
      //   color: AppColor.mainColor,
      //   size: 35,
      // ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          // child: CircleAvatar(
          //   backgroundColor: AppColor.mainColor,
          //   radius: 23,
          //   child: CircleAvatar(
          //     backgroundColor: AppColor.backgroundColor,
          //     radius: 19,
          //     child: CircleAvatar(
          //       radius: 16,
          //       backgroundColor: AppColor.mainColor,
          //       child: Image.asset(
          //         'assets/images/Vector.png',
          //         fit: BoxFit.fill,
          //         height: 17,
          //       ),
          //       //backgroundImage: const AssetImage('assets/images/Vector.png'),
          //     ),
          //   ),
          // ),
          child: Image.asset(
            'assets/images/categories.png',
            color: AppColor.mainColor,
          ),
        )
      ],
    );
  }
}
