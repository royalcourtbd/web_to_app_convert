import 'dart:io';

import 'package:flutter/material.dart';
import 'package:web_to_app_convert/widget/custom_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: WebView(
        initialUrl: 'https://business.bkash.com/sign-in',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          const number = '01642294321';
          const pass = 'Toshiba08@';

          controller.runJavascriptReturningResult(
              "document.getElementById('input-17').value='$number'");
          controller.runJavascriptReturningResult(
              "document.getElementById('input-20').value='$pass'");

          //controller.runJavascript("document.forms[0].submit()");

          // await controller
          //     .runJavascriptReturningResult("document.forms[0].submit()");
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
