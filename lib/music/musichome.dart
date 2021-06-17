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
            ],
          )
        ],
      ),
    );
  }
}
