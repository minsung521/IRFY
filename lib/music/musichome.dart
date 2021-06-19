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
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 5),
            child: Row(
              children: [
                Text(
                  '지친 당신을 ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "텐션 업! ",
                  style: TextStyle(
                    color: Color(0xff3D73DD),
                    fontSize: 26,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '해줄 노래 추천',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Card(
              color: Color(0xffE9EDF1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image(
                        image: AssetImage("assets/hangup.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    width: 1.5,
                    height: 92,
                    color: Colors.grey.shade500,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _nowsong,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          letterSpacing: -1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        _nowartist,
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Exit(),
        ],
      ),
    );
  }
}

class Exit extends StatelessWidget {
  const Exit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      iconSize: 72,
      color: Color(0xff7097E3),
      icon: Icon(Icons.cancel_outlined),
    );
  }
}
