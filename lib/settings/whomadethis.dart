import 'package:flutter/material.dart';
import '../music/musichome.dart';

class WhoMadeThis extends StatelessWidget {
  const WhoMadeThis({Key key}) : super(key: key);

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
                      '김민준',
                      style: TextStyle(
                        color: Color(0xff3D73DD),
                        fontSize: 26,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " - 프로젝트 기획",
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
                  '이원호',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " - 디자인/하드웨어 개발",
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 15),
                child: Row(
                  children: [
                    Text(
                      '김민성',
                      style: TextStyle(
                        color: Color(0xff3D73DD),
                        fontSize: 26,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " - 개발 총괄",
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
                  '신준현',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " - 개발",
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
          Exit(),
        ],
      ),
    );
    ;
  }
}
