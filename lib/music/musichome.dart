import 'package:flutter/material.dart';

class MusicHome extends StatelessWidget {
  const MusicHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Text(
                  '당신의 오늘 스트레스 지수',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
