import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  // WebViewController controller = WebViewController()..loadRequest(homeUrl);
  WebViewController controller = WebViewController();

  HomeScreen({super.key}) {
    controller.loadRequest(homeUrl);
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("코드팩토리"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {
              print("Pressed");
              controller.loadRequest(homeUrl);
            },
            icon: Icon(Icons.home),
            iconSize: 30,
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,

      ),
    );
  }
}
