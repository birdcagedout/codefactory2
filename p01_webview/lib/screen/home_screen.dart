import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// http 사이트에 접속하는 방법 (기본 세팅은 https 연결만 가능)
// 1. iOS     : ios/Runner/info.plist 맨 끝 부분 <key>NSAppTransportSecurity</key> ~ </dict>까지 7줄 추가
// 2. Android : android/app/src/main/androidManifest.xml 2번째 줄(manifest 끝난 바로 다음줄), 7번째 줄(application 요소의 마지막 속성에 추가)
// final homeUrl = Uri.parse('https://blog.codefactory.ai');
final homeUrl = Uri.parse('http://www.ktword.co.kr');

class HomeScreen extends StatelessWidget {
  // cascade operator : WebViewController 인스턴스를 생성하고 loadRequest()를 실행하되, 인스턴스를 반환한다
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
            color: Colors.white,
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,

      ),
    );
  }
}
