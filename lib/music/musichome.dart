import 'package:flutter/material.dart';
import 'package:irfy_app/music/recommendnow.dart';

class MusicHome extends StatefulWidget {
  const MusicHome({Key key}) : super(key: key);

  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  String _nowsong = "퇴사";
  String _nowartist = "Anonymous Artist";
  String _spotifyURL =
      "https://open.spotify.com/track/4mCpHYtMSVkOS7p9wFgncO?si=bc26017e41634769";
  String _appleURL =
      "https://music.apple.com/us/album/%ED%87%B4%EC%82%AC-art-minseok/1559692632?i=1559692633";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RecommendNow(
            nowsong: _nowsong,
            nowartist: _nowartist,
            spotifyURL: _spotifyURL,
            appleURL: _appleURL,
          ),
        ],
      ),
    );
  }
}
