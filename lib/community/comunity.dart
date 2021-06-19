import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommunityWebview extends StatelessWidget {
  const CommunityWebview({Key key}) : super(key: key);
  final String _url =
      'https://cafe.naver.com/irfyme?iframe_url=/MyCafeIntro.nhn%3Fclubid=30467166';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("커뮤니티"),
        actions: [
          IconButton(
              onPressed: () {
                Clipboard.setData(new ClipboardData(text: _url));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("URL 복사됨"),
                  ),
                );
              },
              icon: Icon(Icons.link)),
        ],
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: _url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
