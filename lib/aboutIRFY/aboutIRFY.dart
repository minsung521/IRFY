import 'package:flutter/material.dart';
import 'package:irfy_app/home/myhome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage('assets/IRFY-intro.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff3D73DD),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHome()));
                  },
                  child: Text(
                    "지금 당장 스트레스 해소하기",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: -1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE9EDF1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE9EDF1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: IconButton(
                        padding: EdgeInsets.all(4.0),
                        icon: Icon(Icons.facebook),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
