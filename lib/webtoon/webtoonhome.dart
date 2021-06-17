import 'package:flutter/material.dart';

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
          )
        ],
      ),
    );
  }
}
