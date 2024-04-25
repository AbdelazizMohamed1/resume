import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  static String uri = '';
  
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)..loadRequest(Uri.parse(uri));

  WebViewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
          uri = '';
        },),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
