import 'package:flutter/material.dart';
import 'package:irfy_app/music/playingnow.dart';

class MusicHome extends StatefulWidget {
  const MusicHome({Key key}) : super(key: key);

  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  String _nowsong = "퇴사";
  String _nowartist = "Anonymous Artist";
  String spotifyURL =
      "https://open.spotify.com/track/4mCpHYtMSVkOS7p9wFgncO?si=bc26017e41634769";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PlayingNow(
            nowsong: _nowsong,
            nowartist: _nowartist,
            spotifyURL: spotifyURL,
          ),
        ],
      ),
    );
  }
}
