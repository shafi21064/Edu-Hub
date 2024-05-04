import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../common/layouts/layout_with_back_button/layout_with_back_button.dart';

class WebViewScreen extends StatelessWidget {
  final String url;

 const WebViewScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    WebViewController controllers = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
// Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/watch?v=wUf9s5B7MFw&ab_channel=FairytaleVibes')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));

    return AppLayoutWithBackButton(
      defaultPadding: false,
        customPadding: EdgeInsets.zero,
        body: SafeArea(
            child: WebViewWidget(
      controller: controllers,
    )));
  }
}
