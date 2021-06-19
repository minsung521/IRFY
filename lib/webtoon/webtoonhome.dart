import 'package:flutter/material.dart';
import 'package:irfy_app/music/musichome.dart';

class WebtoonHome extends StatelessWidget {
  const WebtoonHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 15),
                child: Row(
                  children: [
                    Text(
                      '오늘 새로 ',
                      style: TextStyle(
                        color: Color(0xff3D73DD),
                        fontSize: 26,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "올라온 이야기",
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 5),
            child: Row(
              children: [
                Text(
                  '야 너네 직장두?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " 시리즈",
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
                        "ㄻㄹㅈㄷㄹ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          letterSpacing: -1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ㅇㄻㄷㄻㄷㄹ",
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
