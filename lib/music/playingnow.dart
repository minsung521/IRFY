import 'package:flutter/material.dart';

class PlayingNow extends StatelessWidget {
  const PlayingNow({
    Key key,
    @required String nowsong,
    @required String spotifyURL,
    @required String nowartist,
  })  : _nowsong = nowsong,
        _nowartist = nowartist,
        spotifyURL = spotifyURL,
        super(key: key);

  final String _nowsong;
  final String _nowartist;
  final String spotifyURL;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 15),
          child: Row(
            children: [
              Text(
                '재생중인 ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "음악",
                style: TextStyle(
                  color: Color(0xff3D73DD),
                  fontSize: 26,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xff3D73DD),
              borderRadius: BorderRadius.all(const Radius.circular(24)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image(
                          image: AssetImage("assets/hangup.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _nowsong,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              letterSpacing: -1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            _nowartist,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: -1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff265ABF),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () => {}, //fixed
                      child: Text(
                        'Apple Music에서 재생하기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff265ABF),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {}, //fixed
                      child: Text(
                        'Spotify 에서 재생하기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
