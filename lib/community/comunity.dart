import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommunityWebview extends StatelessWidget {
  const CommunityWebview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl:
              'https://cafe.naver.com/irfyme?iframe_url=/MyCafeIntro.nhn%3Fclubid=30467166',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
