import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewApp(),
    );
  }
}

class WebViewApp extends StatelessWidget {
  const WebViewApp({super.key});
  static const myWebsite = "https://medium.com/@cristianorbs/about";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(
              Uri.parse(myWebsite),
            ),
        ),
      ),
    );
  }
}
