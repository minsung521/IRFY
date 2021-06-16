import 'package:flutter/material.dart';

class AboutIRFY extends StatelessWidget {
  const AboutIRFY({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "IRFY",
                style: TextStyle(
                  color: const Color(0xff265ABF),
                  fontWeight: FontWeight.bold,
                  fontSize: 55,
                ),
              ),
              Text(
                "I'm Ready For You",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: -1,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "당신의 스트레스 해소를 도와주는 앱,\nIRFY를 소개합니다.",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/introduceIRFY.png'),
                  ),
                ),
              ),
              Text(
                "어떻게 사용하나요?",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  child: Image(
                    image: AssetImage('assets/todayscheer.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
