import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:webview_flutter/webview_flutter.dart';

class SiteViewPage extends StatefulWidget {
  @override
  State<SiteViewPage> createState() => _SiteViewPageState();
}

class _SiteViewPageState extends State<SiteViewPage> {
  var siteUrl = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: siteUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
